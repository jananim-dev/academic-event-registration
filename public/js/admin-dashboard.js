let allStudents = [];

/* =========================
   PAGE LOAD
========================= */
document.addEventListener("DOMContentLoaded", () => {
  loadStudents();

  document.getElementById("searchInput").addEventListener("input", filterStudents);
  document.getElementById("departmentFilter").addEventListener("change", filterStudents);
  document.getElementById("statusFilter").addEventListener("change", filterStudents);
});

/* =========================
   FETCH STUDENTS
========================= */
async function loadStudents() {
  const res = await fetch("/api/students");
  allStudents = await res.json();

  renderTable(allStudents);
  updateAnalytics(allStudents);
}

/* =========================
   RENDER TABLE
========================= */
function renderTable(data) {
  const tbody = document.getElementById("studentsTableBody");
  tbody.innerHTML = "";

  data.forEach((s, i) => {
    const row = document.createElement("tr");

    row.innerHTML = `
      <td>
        <strong>${s.full_name}</strong><br>
        <small>${s.reg_no}</small>
      </td>
      <td>${s.degree}<br><small>${s.department}</small></td>
      <td>${s.email}<br><small>${s.phone}</small></td>
      <td>
        <span class="badge ${s.attending === "Yes" ? "yes" : "no"}">
          ${s.attending}
        </span>
      </td>
      <td>
        <span class="status ${s.status.toLowerCase()}">
          ${s.status}
        </span>
      </td>
      <td>
        ${
          s.status === "Pending"
            ? `
              <button onclick="updateStatus(${s.id}, 'Approved')">✔</button>
              <button onclick="updateStatus(${s.id}, 'Rejected')">✖</button>
            `
            : "-"
        }
      </td>
    `;

    tbody.appendChild(row);
  });
}

/* =========================
   UPDATE STATUS
========================= */
async function updateStatus(id, status) {
  await fetch(`/api/students/${id}`, {
    method: "PUT",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ status })
  });

  loadStudents(); // refresh
}

/* =========================
   SEARCH + FILTER
========================= */
function filterStudents() {
  const search = document.getElementById("searchInput").value.toLowerCase();
  const dept = document.getElementById("departmentFilter").value;
  const status = document.getElementById("statusFilter").value;

  const filtered = allStudents.filter(s =>
    (s.full_name.toLowerCase().includes(search) ||
     s.reg_no.toLowerCase().includes(search)) &&
    (dept === "" || s.department === dept) &&
    (status === "" || s.status === status)
  );

  renderTable(filtered);
  updateAnalytics(filtered);
}

/* =========================
   ANALYTICS COUNTERS
========================= */
function updateAnalytics(data) {
  document.getElementById("totalCount").innerText = data.length;
  document.getElementById("approvedCount").innerText =
    data.filter(s => s.status === "Approved").length;
  document.getElementById("pendingCount").innerText =
    data.filter(s => s.status === "Pending").length;
  document.getElementById("rejectedCount").innerText =
    data.filter(s => s.status === "Rejected").length;
}

/* =========================
   EXPORT CSV
========================= */
function exportCSV() {
  let csv = "Name,Reg No,Email,Phone,Department,Degree,Attending,Status\n";

  allStudents.forEach(s => {
    csv += `${s.full_name},${s.reg_no},${s.email},${s.phone},${s.department},${s.degree},${s.attending},${s.status}\n`;
  });

  const blob = new Blob([csv], { type: "text/csv" });
  const url = URL.createObjectURL(blob);

  const a = document.createElement("a");
  a.href = url;
  a.download = "convocation_students.csv";
  a.click();
}
