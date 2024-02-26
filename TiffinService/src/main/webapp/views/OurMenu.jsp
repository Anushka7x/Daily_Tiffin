<!DOCTYPE html>
<html lang="en">
 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TiffinTime</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            padding-top: 80px;
            /* Adjust as needed */
        }
 
        .navbar {
            background-color: #00000008 !important;
            backdrop-filter: blur(10px);
        }
 
        .navbar-brand {
            font-weight: bold;
            font-style: italic;
            color: #0b0808;
        }
 
        .navbar-nav .nav-link {
            color: #222325 !important;
        }
 
        .navbar-toggler {
            border-color: #fff;
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
 
        .bg-light {
            background-color: #f8f9fa !important;
        }
 
        .text-light {
            color: #fff !important;
        }
 
        .testimonial-container {
            background-color: #e7e4db38;
            padding: 20px;
        }
 
        .card-title {
            font-weight: bold;
        }
 
        .card-text {
            font-style: italic;
        }
 
        .card-img-top {
            height: 200px;
            /* Adjust the height as needed */
            object-fit: cover;
            /* Ensure images cover the entire space */
        }
 
        footer {
            background: linear-gradient(to right, #ffffff, #fbfba4a6);
        }
    </style>
</head>
 
<body>
 
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">TiffinTime</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/MenuItems.html">Our Menu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                </ul>
            </div>
            <div class="d-flex">
                <!-- <button class="btn btn-outline-primary me-2 border-0" type="button">Sign Up</button> -->
                <!-- <button class="btn btn-primary border-0" type="button">Log Out</button> -->
                <a href="http://localhost:8080/Index.html" class="btn btn-primary border-0">Log Out</a>
      
            </div>
        </div>
    </nav>
    <section class="bg-light py-5"> <!-- this section of insttant order just for show doesnot hav eany backend funcationality -->
        <div class="container">
            <h2 class="text-center mb-4">Our Menu</h2>
            <div class="row">
    <div class="col-md-4">
        <div class="card">
            <img src="img/food1.jpg" class="card-img-top" alt="Veg Thali">
            <div class="card-body">
                <h5 class="card-title">Veg Thali @100</h5>
                <p class="card-text">A vegetarian thali offers a wholesome Indian meal, featuring a variety of dishes like sabzi, roti, daal, chawal, and condiments, providing a balanced and flavorful dining experience.</p>
                <button class="btn btn-primary">Instant Order</button>
            </div>
        </div>
    </div>
    <div class="col-md-4">
    <div class="card">
            <img src="img/chicken-thali1.jpg" class="card-img-top" alt="Veg Thali">
            <div class="card-body">
                <h5 class="card-title">Non-Veg Thali @100</h5>
                <p class="card-text">A vegetarian thali offers a wholesome Indian meal, featuring a variety of dishes like sabzi, roti, daal, chawal, and condiments, providing a balanced and flavorful dining experience.</p>
                <button class="btn btn-primary">Instant Order</button>
            </div>
        </div>
        <!-- Repeat the same structure for other thumbnails -->
    </div>
    <div class="col-md-4">
    <div class="card">
            <img src="img/punjabithali.jpg" class="card-img-top" alt="Veg Thali">
            <div class="card-body">
                <h5 class="card-title">Punjabi Thali @100</h5>
                <p class="card-text">A vegetarian thali offers a wholesome Indian meal, featuring a variety of dishes like sabzi, roti, daal, chawal, and condiments, providing a balanced and flavorful dining experience.</p>
                <button class="btn btn-primary">Instant Order</button>
            </div>
        </div>
        <!-- Repeat the same structure for other thumbnails -->
    </div>
   
</div>

            
        </div>
    </section>
 
    <!-- Order Form Section -->
    <section class="bg-light py-5">
        <div class="container">
            <h2 class="text-center mb-4">Order Now</h2>
            <div class="row align-items-center">
                <div class="col-md-6">
                    <form action="http://localhost:8082/api/orders/create" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name">
                        </div>               
                        <div class="mb-3">
    <label for="thaliType" class="form-label">Select Thali Type</label>
    <select class="form-select" id="itemname" name="itemname">
    <option value="select">--Select--</option>
        <option value="Veg Thali">Veg Thali</option>
        <option value="Non-Veg Thali">Non-Veg Thali</option>
        <option value="Punjabi Thali">Punjabi Thali</option>
        <!-- Add more options as needed -->
    </select>
</div>

                        <div class="mb-3">
                            <label for="price" class="form-label">Price</label>
                            <input type="text" class="form-control" id="price" name ="price" placeholder="Enter Thali Price @100,@120,@100">
                        </div>
                        <div class="mb-3">
                            <label for="quantity" class="form-label">Quantity</label>
                            <div class="input-group">
                                <button class="btn btn-outline-secondary" type="button" id="btnMinus">-</button>
                                <input type="text" class="form-control" id="quantity" name = "quantity" value="1">
                                <button class="btn btn-outline-secondary" type="button" id="btnPlus">+</button>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <div class="col-md-6">
                    <img src="img/photo3.jpg" class="img-fluid rounded" alt="Tiffin Meals">
                </div>
            </div>
        </div>
    </section>
    <section class="bg-light py-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <img src="img/photo2.jpg" class="img-fluid rounded" alt="Delicious Plates">
                </div>
                <div class="col-md-6">
                    <h2 class="mb-3"><b>Place Your Order for<br> Delicious Plates</b></h2><br>
                    <p>Customize your favorite plate and have it delivered to your doorstep with Plate Order.</p>
                   
                    <div class="mt-4">
                        <h1><b>Easy ordering</b></h1>
                        <p><strong>Customizable plates</strong></p>
                        <blockquote class="blockquote">
                            <p class="mb-0">€œPlate Order is a game-changer for me. I can easily customize my plate and
                                have it delivered to my doorstep. It saves me so much time and effort!</p><br>
                            <p class="blockquote-footer">Maya Taylor</p>
                        </blockquote>
                    </div>
                </div>
 
            </div>
        </div>
    </section>
 
    <!-- Footer -->
    <footer class="py-4">
        <div class="container">
            <nav class="nav justify-content-center">
                <a href="http://localhost:8080/index.html" class="nav-link">Homepage</a>
                <a href="http://localhost:8080/MenuItems.html" class="nav-link">Our Menu</a>
                <a href="/about-us" class="nav-link">About Us</a>
            </nav>
            <p class="text-center text-muted mt-4">© All rights reserved.</p>
        </div>
    </footer>
 
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('btnMinus').addEventListener('click', function () {
            var quantityInput = document.getElementById('quantity');
            var quantity = parseInt(quantityInput.value);
            if (quantity > 1) {
                quantityInput.value = quantity - 1;
            }
        });
 
        document.getElementById('btnPlus').addEventListener('click', function () {
            var quantityInput = document.getElementById('quantity');
            var quantity = parseInt(quantityInput.value);
            quantityInput.value = quantity + 1;
        });
    </script>
 
</body>
 
</html>
