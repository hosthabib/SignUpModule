document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("signup-form");
    const firstNameInput = document.getElementById("first-name");
    const lastNameInput = document.getElementById("last-name");
    const emailInput = document.getElementById("email");
    const usernameInput = document.getElementById("username");
    const passwordInput = document.getElementById("password");
    const confirmPasswordInput = document.getElementById("confirm-password");

    form.addEventListener("submit", function (event) {
        let isValid = true;
        const errors = [];

        // Validate First Name
        if (!isValidName(firstNameInput.value)) {
            errors.push("Please enter a valid First Name.");
            isValid = false;
            console.log("First Name validation failed");
        }

        // Validate Last Name
        if (!isValidName(lastNameInput.value)) {
            errors.push("Please enter a valid Last Name.");
            isValid = false;
        }

        // Validate Email
        if (!isValidEmail(emailInput.value)) {
            errors.push("Please enter a valid Email address.");
            isValid = false;
        }

        // Validate Username
        if (!isValidUsername(usernameInput.value)) {
            errors.push("Please enter a valid Username.");
            isValid = false;
        }

        // Validate Password
        if (!isValidPassword(passwordInput.value)) {
            errors.push("Password must be at least 8 characters.");
            isValid = false;
        }

        // Validate Confirm Password
        if (passwordInput.value !== confirmPasswordInput.value) {
            errors.push("Passwords do not match.");
            isValid = false;
        }

        if (!isValid) {
            event.preventDefault();
            alert(errors.join("\n"));
        }
    });

    function isValidName(name) {
        return /^[A-Za-z]+$/.test(name);
    }

    function isValidEmail(email) {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    }

    function isValidUsername(username) {
        return /^[A-Za-z0-9_]+$/.test(username);
    }

    function isValidPassword(password) {
        return password.length >= 8;
    }
    
});
