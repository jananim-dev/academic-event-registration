document.getElementById("verifyForm").addEventListener("submit", async function (e) {
    e.preventDefault();

    const reg_no = document.getElementById("reg_no").value.trim();
    const dob = document.getElementById("dob").value;
    const errorMsg = document.getElementById("errorMsg");

    // Clear previous error
    errorMsg.innerText = "";

    // Basic validation
    if (!reg_no || !dob) {
        errorMsg.innerText = "Please enter Register Number and Date of Birth";
        return;
    }

    try {
        const res = await fetch("/api/verify-student", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({ reg_no, dob })
        });

        const data = await res.json();

        if (data.success) {
            // Redirect with reg_no
            window.location.href = `/register.html?reg_no=${reg_no}`;
        } else {
            errorMsg.innerText = "Invalid Register No or DOB";
        }

    } catch (error) {
        console.error("Server error:", error);
        errorMsg.innerText = "Server Error. Please try again.";
    }
});
