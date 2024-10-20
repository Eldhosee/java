document.addEventListener("DOMContentLoaded", function () {
    var modal = document.getElementById("myModal");
    var span = document.getElementsByClassName("close")[0];
    var modalMessage = document.querySelector(".modal-content h2");

    function showModal() {
        modalMessage.textContent = "Passenger Registration is successful.";
        modal.style.display = "block";
    }

    function closeModal() {
        modal.style.display = "none";
        window.location.href = "../login/login.jsp";
    }

    span.onclick = function () {
        closeModal();
    }

    window.onclick = function (event) {
        if (event.target == modal) {
            closeModal();
        }
    }

    // Update the submit event handler
    document.getElementById("signupForm").addEventListener("submit", function (event) {
        // Prevent the default form submission
        event.preventDefault();

        // Validate form before proceeding with AJAX request
        if (validateForm()) {
           

            var xhr = new XMLHttpRequest();
            xhr.open("POST", "/03_AIRLINE_AMS/AddCustomerServlet", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

            xhr.onload = function () {
                if (xhr.status === 200) {
                    // Show the modal after successful response
                    showModal(firstname);
                    // Reset the form
                    document.getElementById("signupForm").reset();
                } else {
                    alert("Registration failed.");
                }
            };

            // Collect form data and send via AJAX
            var formData = new URLSearchParams(new FormData(this)).toString();
            xhr.send(formData);
        } else {
            // If the form is invalid, do not proceed
            console.log("Form is invalid");
        }
    });
});

// Validation function
function validateForm() {
    let isValid = true;
    
    // Clear previous error messages
    document.getElementById('firstname-error').textContent = "";
    document.getElementById('lastname-error').textContent = "";
    document.getElementById('passworderror').textContent = "";
    document.getElementById('email-error').textContent = "";
    document.getElementById('doberror').textContent = '';
    document.getElementById('contacterror').textContent = '';

    // Get form input values
    const inputFirst = document.getElementById("firstname").value;
    const inputLast = document.getElementById("lastname").value;
    const inputEmail = document.getElementById("email").value;
    const dob = document.getElementById('dob').value;
    const inputContact = document.getElementById('phone').value;
    const phoneRegex = /^[0-9]+$/;
    const minDate = new Date('1910-01-01');
    const maxDate = new Date('2024-10-31');
    const inputDate = new Date(dob);
    const nameRegex = /^[A-Za-z]+$/;
    
    if(!nameRegex.test(inputFirst)) {
		document.getElementById('firstname-error').textContent = "First name must be valid.";
        isValid = false;
	}
	
	if(!nameRegex.test(inputLast)) {
		document.getElementById('lastname-error').textContent = "Last name must be valid.";
        isValid = false;
	}

    // Firstname validation
    if (inputFirst.length > 50) {
        document.getElementById('firstname-error').textContent = "First name must be within 50 characters.";
        isValid = false;
    }

    // Lastname validation
    if (inputLast.length > 50) {
        document.getElementById('lastname-error').textContent = "Last name must be within 50 characters.";
        isValid = false;
    }

    // Email validation
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(inputEmail)) {
        document.getElementById('email-error').textContent = "Please enter a valid email address.";
        isValid = false;
    }

    // Date of Birth validation
    if (inputDate < minDate || inputDate > maxDate) {
        document.getElementById('doberror').textContent = "Choose a valid date of birth.";
        isValid = false;
    }

    // Phone validation
    if (!phoneRegex.test(inputContact) || inputContact.length != 10) {
        document.getElementById('contacterror').textContent = "Enter a valid 10-digit contact number.";
        isValid = false;
    }

    // Password validation
    const inputPassword = document.getElementById('password').value;
    if (inputPassword.length < 6) {
        document.getElementById('passworderror').textContent = "Password length must be at least 6 characters.";
        isValid = false;
    } else {
        if (!inputPassword.match(/[a-z]/g)) {
            document.getElementById('passworderror').textContent = "Password must contain a lowercase letter.";
            isValid = false;
        }
        if (!inputPassword.match(/[A-Z]/g)) {
            document.getElementById('passworderror').textContent = "Password must contain an uppercase letter.";
            isValid = false;
        }
        if (!inputPassword.match(/[0-9]/g)) {
            document.getElementById('passworderror').textContent = "Password must contain a number.";
            isValid = false;
        }
        if (!inputPassword.match(/[^a-zA-Z0-9]/g)) {
            document.getElementById('passworderror').textContent = "Password must contain a special character.";
            isValid = false;
        }
    }

    // Return the final validation status
    return isValid;
    
    }