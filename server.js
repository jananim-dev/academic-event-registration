const express = require("express");
const mysql   = require("mysql2");
const session = require("express-session");
const multer  = require("multer");

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));
app.use("/uploads", express.static("uploads"));
app.use(session({ secret: "convocation-secret", resave: false, saveUninitialized: true }));

const db = mysql.createConnection({
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "",
  database: process.env.DB_NAME || "convocation2026",
  port: process.env.DB_PORT || 3306
});
db.connect(err => {
  if (err) console.error("❌ MySQL connection failed:", err);
  else     console.log("✅ MySQL Connected");
});

/* EVENTS */
app.get("/events", (req, res) => {
  db.query("SELECT * FROM events", (err, r) => {
    if (err) { console.log(err); return res.json([]); }
    res.json(r);
  });
});

/* VERIFY */
app.post("/api/verify-student", (req, res) => {
  const { reg_no, dob } = req.body;
  db.query(
    "SELECT * FROM students WHERE reg_no=? AND (dob=? OR dob IS NULL)",
    [reg_no, dob],
    (err, r) => {
      if (err) { console.log(err); return res.json({ success: false }); }
      res.json({ success: r.length > 0 });
    }
  );
});

/* GET STUDENT */
app.get("/api/get-student/:reg_no", (req, res) => {
  db.query("SELECT * FROM students WHERE reg_no=?", [req.params.reg_no], (err, r) => {
    if (err) { console.log(err); return res.json({ success: false }); }
    if (r.length > 0) res.json({ success: true, student: r[0] });
    else              res.json({ success: false });
  });
});

/* MULTER */
const upload = multer({
  storage: multer.diskStorage({
    destination: "uploads/",
    filename: (req, file, cb) => cb(null, Date.now() + "_" + file.originalname)
  })
});

/* REGISTER */
app.post("/api/register", upload.single("id_proof"), (req, res) => {
  const { full_name, reg_no, email, phone, department, degree, year, attendance, event_id } = req.body;
  const idProof = req.file ? req.file.filename : null;
  db.query(
    `INSERT INTO students
     (full_name,reg_no,email,phone,department,degree,year,attending,id_proof,event_id)
     VALUES (?,?,?,?,?,?,?,?,?,?)`,
    [full_name, reg_no, email, phone, department, degree, year, attendance, idProof, event_id],
    (err) => {
      if (err) { console.log(err); return res.json({ success: false }); }
      res.json({ success: true, reg_no });
    }
  );
});

/* INVITATION — latest record */
app.get("/api/invitation/:regno", (req, res) => {
  /*
   * Use convocation_registration as PRIMARY table so Sports/Annual Day
   * students (who skip register.html) also get their invitation data.
   * Students table is LEFT JOIN — optional.
   */
  db.query(`
    SELECT
      COALESCE(s.full_name, cr.parent_name, '—')  AS full_name,
      cr.reg_no,
      COALESCE(s.department, cr.attend_type, '—') AS department,
      COALESCE(s.degree, '—')                      AS degree,
      COALESCE(s.year,   '—')                      AS year,
      cr.event,
      cr.event_date,
      cr.event_time,
      cr.venue,
      cr.registration_date,
      cr.registration_time,
      cr.parent_name,
      cr.relationship
    FROM convocation_registration cr
    LEFT JOIN students s ON cr.reg_no = s.reg_no
    WHERE cr.reg_no = ?
    ORDER BY cr.id DESC
    LIMIT 1`,
    [req.params.regno],
    (err, r) => {
      if (err) { console.log(err); return res.json({}); }
      if (r.length === 0) return res.json({});
      res.json(r[0]);
    }
  );
});

/* STAFF LOGIN */
app.post("/api/staff-login", (req, res) => {
  const { email, password } = req.body;
  if (email === "admin@college.edu" && password === "admin123") {
    req.session.admin = true;
    res.json({ success: true });
  } else {
    res.json({ success: false });
  }
});

function isAdmin(req, res, next) {
  if (req.session.admin) next();
  else res.json([]);
}

/* ADMIN STUDENTS — no duplicates */
app.get("/api/students", isAdmin, (req, res) => {
  db.query(`
    SELECT
      s.id, s.full_name, s.reg_no, s.email, s.phone,
      s.department, s.degree, s.year, s.attending,
      s.id_proof, s.status,
      COALESCE(e.event_name, cr.event, 'N/A') AS event_name,
      cr.parent_name, cr.relationship,
      cr.registration_date, cr.registration_time
    FROM students s
    LEFT JOIN events e ON s.event_id = e.id
    LEFT JOIN convocation_registration cr
      ON s.reg_no = cr.reg_no
      AND cr.id = (SELECT MAX(id) FROM convocation_registration WHERE reg_no = s.reg_no)
    GROUP BY s.id
    ORDER BY s.id DESC`,
    (err, rows) => {
      if (err) { console.log(err); return res.json([]); }
      res.json(rows);
    }
  );
});

/* UPDATE STATUS */
app.put("/api/students/:id", isAdmin, (req, res) => {
  db.query("UPDATE students SET status=? WHERE id=?", [req.body.status, req.params.id], (err) => {
    if (err) { console.log(err); return res.json({ success: false }); }
    res.json({ success: true });
  });
});

/* ✅ DELETE STUDENT */
app.delete("/api/students/:id", isAdmin, (req, res) => {
  const id = req.params.id;
  // First get reg_no
  db.query("SELECT reg_no FROM students WHERE id=?", [id], (err, rows) => {
    if (err || !rows.length) return res.json({ success: false });
    const reg_no = rows[0].reg_no;
    // Delete from convocation_registration
    db.query("DELETE FROM convocation_registration WHERE reg_no=?", [reg_no], () => {
      // Delete from students
      db.query("DELETE FROM students WHERE id=?", [id], (err2) => {
        if (err2) { console.log(err2); return res.json({ success: false }); }
        res.json({ success: true });
      });
    });
  });
});

/* LOGOUT */
app.get("/api/logout", (req, res) => {
  req.session.destroy();
  res.json({ success: true });
});

/* SAVE EVENT */
app.post("/api/save-convocation", upload.fields([
  { name: "letterFile",  maxCount: 1 },
  { name: "idProofFile", maxCount: 1 }
]), (req, res) => {
  const today = new Date();
  const { reg_no, event, eventDate, eventTime, venue, attend, parentName, relationship } = req.body;
  const lf = req.files["letterFile"]  ? req.files["letterFile"][0].filename  : null;
  const ip = req.files["idProofFile"] ? req.files["idProofFile"][0].filename : null;

  db.query(
    `INSERT INTO convocation_registration
     (reg_no,event,event_date,event_time,venue,attend_type,
      parent_name,relationship,letter_file,id_proof_file,
      registration_date,registration_time)
     VALUES (?,?,?,?,?,?,?,?,?,?,?,?)`,
    [reg_no, event, eventDate, eventTime, venue, attend,
     parentName, relationship, lf, ip,
     today.toISOString().slice(0,10), today.toLocaleTimeString("en-IN")],
    (err) => {
      if (err) { console.log(err); return res.json({ success: false }); }
      res.json({ success: true, reg_no });
    }
  );
});

/* DOWNLOAD */
app.get("/api/download-invitation/:regno", (req, res) => {
  res.redirect("/invitation.html?regno=" + req.params.regno + "&autodownload=true");
});

app.listen(3000, () => console.log("Server running http://localhost:3000"));