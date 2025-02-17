function calculateGPA() {
    var totalCredit = 0;
    var totalPoints = 0;

    // Select all the rows with course data
    var rows = document.querySelectorAll("table:first-of-type tr");

    for (var i = 1; i < rows.length; i++) {
        var creditSelect = rows[i].querySelector("td:nth-child(2) select");
        var gradeSelect = rows[i].querySelector("td:nth-child(3) select");

        // Check if both selects were found before attempting to access their values
        if (creditSelect && gradeSelect) {
            var creditValue = parseFloat(creditSelect.value);
            var gradeValue = getGradeValue(gradeSelect.value);

            totalCredit += creditValue;
            totalPoints += creditValue * gradeValue;
        }
    }

    // Calculate GPA
    var gpa = totalPoints / totalCredit;

    // Display total credit and GPA
    document.getElementById("totalCredit").textContent = totalCredit;
    document.getElementById("result").textContent = gpa.toFixed(2);
}

// Function to reset the form
function resetForm() {
    // Reset input fields and labels
    var inputs = document.querySelectorAll("table:first-of-type input[type='text']");
    for (var i = 0; i < inputs.length; i++) {
        inputs[i].value = "";
    }

    // Reset dropdowns
    var selects = document.querySelectorAll("table:first-of-type select");
    for (var i = 0; i < selects.length; i++) {
        selects[i].value = "0";
    }

    // Reset total credit and GPA
    document.getElementById("totalCredit").textContent = "0.00";
    document.getElementById("result").textContent = "0.00";
}

// Helper function to get the numeric value of a grade
function getGradeValue(grade) {
    switch (grade) {
        case "A": return 4.0;
        case "A-": return 3.7;
        case "B+": return 3.3;
        case "B": return 3.0;
        case "C+": return 2.3;
        case "C": return 2.0;
        case "D": return 1.0;
        case "E": return 0.0;
        default: return 0.0;
    }
}