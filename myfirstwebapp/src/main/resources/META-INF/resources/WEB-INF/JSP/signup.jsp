<!DOCTYPE html>
<html>
<head>
    <title>Sign Up Page</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            width: 300px;
            padding: 16px;
            background-color: white;
            margin: 0 auto;
            margin-top: 100px;
            border: 1px solid #ccc;
            box-shadow: 0px 0px 10px #888;
        }

        h2 {
            text-align: center;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Sign Up</h2>
        <form id="signup-form" class="signup-form">
            <label for="signup-firstname">First Name:</label>
            <input type="text" id="signup-firstname" name="signup-firstname" required>

            <label for="signup-lastname">Last Name:</label>
            <input type="text" id="signup-lastname" name="signup-lastname" required>

            <label for="signup-email">Email:</label>
            <input type="email" id="signup-email" name="signup-email" required>

            <label for="signup-password">Password:</label>
            <input type="password" id="signup-password" name="signup-password" required>

            <label for="signup-confirm-password">Re-enter Password:</label>
            <input type="password" id="signup-confirm-password" name="signup-confirm-password" required>

            <button type="submit">Sign Up</button>
            <div class="error-message" id="signup-error"></div>
        </form>

        
    </div>

    <script>
        function toggleForm() {
            const signupForm = document.getElementById('signup-form');
            const toggleLink = document.getElementById('toggle-link');

            if (signupForm.style.display === 'none') {
                signupForm.style.display = 'block';
                toggleLink.innerHTML = "Already have an account? <a href='#' onclick='toggleForm()'>Login</a>";
            } else {
                signupForm.style.display = 'none';
                toggleLink.innerHTML = "Don't have an account? <a href='#' onclick='toggleForm()'>Sign Up</a>";
            }
        }

        const signupForm = document.getElementById('signup-form');
        const signupError = document.getElementById('signup-error');

        signupForm.addEventListener('submit', function (e) {
            const password = document.getElementById('signup-password').value;
            const confirmPassword = document.getElementById('signup-confirm-password').value;

            if (password !== confirmPassword) {
                e.preventDefault();
                signupError.textContent = 'Passwords do not match.';
            } else {
                signupError.textContent = '';
            }
        });
    </script>
</body>
</html>
