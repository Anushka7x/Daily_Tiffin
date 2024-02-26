<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-repeat: no-repeat;
            background-size: cover;
            background-image: url(img/LoginPage.jpg);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        .main {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
        }
        .main h1 {
            color: #529d5b;
            margin-bottom: 20px;
        }
        .main h3 {
            color: #529d5b;
            font-size: 18px;
            margin-bottom: 20px;
        }
        .main form label {
            font-weight: bold;
            text-align: left;
            display: block;
            margin-bottom: 5px;
        }
        .main form input {
            border-radius: 5px;
            margin-bottom: 15px;
        }
        .main form button {
            margin-top: 20px;
            border-radius: 5px;
        }
        .btn-primary {
background-color: #d4bbff; /* Adjusted button color */
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
                        border-color: #3c4043; /* Adjusted border color */
            
        }
        
       

        .btn-primary:hover {
            background-color: #3c4043; /* Adjusted button color on hover */
            border-color: #3c4043;
        }
        .cancelbtn {
            background-color: #dc3545;
            border-color: #dc3545;
            color: #fff;
            margin-top: 15px;
        }
        .cancelbtn:hover {
            background-color: #c82333;
            border-color: #bd2130;
        }
        .cancelbtn a {
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="main">
                    <h1><b>Registration</b></h1>
                    <h3>Please fill in this form to create an account</h3>
                    <form action="/register" id="register" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" placeholder="Enter your name" name="name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" placeholder="Enter your Email" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="mobile" class="form-label">Mobile</label>
                            <input type="number" class="form-control" placeholder="Enter your Mobile" name="phoneNumber" required>
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" placeholder="Enter your Address" name="address" required>
                        </div>
                         <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" placeholder="Enter your Password" name="password" required>

                        </div>
                        
                        
                        <div class="mb-3">
                            <label class="form-check-label">
                                <input type="checkbox" checked="checked" name="remember" class="form-check-input"> Remember me
                            </label>
                        </div>
                        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                        <button type="submit" class="btn btn-primary">Sign Up</button>
                    </form>
                    <button type="button" class="btn cancelbtn">
                        <a class="cancel" href="http://localhost:8080/index.html">Cancel</a>
                    </button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
