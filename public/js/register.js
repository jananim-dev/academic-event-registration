document.addEventListener("DOMContentLoaded", async function () {

    /* ================= AUTO FILL STUDENT ================= */
    const urlParams = new URLSearchParams(window.location.search);
    const reg_no = urlParams.get("reg_no");

    if (reg_no) {
        try {
            const res = await fetch(`/api/get-student/${reg_no}`);
            const data = await res.json();

            if (data.success) {
                document.getElementById("reg_no").value = reg_no;
                document.getElementById("full_name").value = data.student.full_name || "";
                document.getElementById("email").value = data.student.email || "";
                document.getElementById("phone").value = data.student.phone || "";
                document.getElementById("department").value = data.student.department || "";
            }
        } catch (err) {
            console.error("Student Fetch Error:", err);
        }
    }

    /* ================= GENERATE YEAR ================= */
    const yearSelect = document.getElementById("year");
    if (yearSelect) {
        yearSelect.innerHTML = '<option value="">Select Year</option>';
        for (let y = 2020; y <= 2026; y++) {
            const option = document.createElement("option");
            option.value = y;
            option.textContent = y;
            yearSelect.appendChild(option);
        }
    }

    /* ================= LOAD EVENTS ================= */
    try {
        const eventRes = await fetch("/events");
        const events = await eventRes.json();

        const eventDropdown = document.getElementById("event_id");

        if (eventDropdown) {
            eventDropdown.innerHTML = '<option value="">Select Event</option>';

            events.forEach(event => {
                const option = document.createElement("option");
                option.value = event.id;
                option.textContent = event.event_name;
                eventDropdown.appendChild(option);
            });
        }

    } catch (err) {
        console.error("Event Fetch Error:", err);
    }

});



/* ================= EVENT OPEN ================= */

async function openEvent(){

var event = document.getElementById("event").value;
var reg_no = document.getElementById("reg_no").value;

if(event === ""){ return; }

/* Save student registration first */
const formData = new FormData(document.getElementById("registerForm"));

try{
    let res = await fetch("/api/register", {
        method: "POST",
        body: formData
    });
    let result = await res.json();
    console.log("Register result:", result);
}catch(err){
    console.log(err);}
    if(event=="convocation"){
        window.location.href="convocation.html?reg_no="+reg_no;
    }
    if
(event=="sports"){
        window.location.href="sports.html?reg_no="+reg_no;
    }
    if(event=="annualday"){
        window.location.href="annualday.html?reg_no="+reg_no;
    
    }
    }
    

/* ================= SECOND SUBMIT CODE (FIXED) ================= */

const form2 = document.getElementById("registerForm");

if (form2) {

form2.addEventListener("submit", async function(e){

e.preventDefault();

const formData = new FormData(this);

try{

let res = await fetch("/api/register",{

method:"POST",

body:formData

});

let result = await res.json();

/* ⭐ SAVE REGISTER NUMBER */
sessionStorage.setItem("reg_no", result.reg_no);

/* ⭐ GO TO CONVOCATION PAGE */
window.location.href="convocation.html";

}catch(err){

console.log(err);

}

});

}
function loadDepartments(){

const degree = document.getElementById("degree").value;
const department = document.getElementById("department");

department.innerHTML = "<option>Select Department</option>";

let departments = [];

if(degree === "BE"){

departments = [
"Civil Engineering",
"Computer Science Engineering",
"Electrical and Electronics Engineering",
"Electronics and Communication Engineering",
"Mechanical Engineering"
];

}

else if(degree === "BTECH"){

departments = [
"Information Technology",
"Artificial Intelligence & Data Science"
];

}

else if(degree === "ME"){

departments = [
"Structural Engineering",
"Power Systems"
];

}

else if(degree === "MTECH"){

departments = [
"Artificial Intelligence",
"Data Science"
];

}

else if(degree === "MCA"){

departments = [
"Computer Applications"
];

}

else if(degree === "MBA"){

departments = [
"Finance",
"Marketing",
"Human Resources"
];

}

departments.forEach(function(dep){

let option = document.createElement("option");

option.value = dep;
option.text = dep;

department.appendChild(option);

});

}