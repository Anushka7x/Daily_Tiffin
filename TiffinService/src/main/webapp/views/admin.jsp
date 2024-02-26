<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Item</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 80px; /* Adjust as needed */
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
            background-color: #ffd100;
            border-color: brown;
        }

        .btn-primary:hover {
            background-color: brown;
            border-color: brown;
        }

        

        .bg-light {
            background-color: #f8f9fa !important;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">ADMIN PORTAL OF TiffinTime</a>
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
                <a href="http://localhost:8080/Index.html" class="btn btn-primary border-0" type="button">Log
                    Out</a>
            </div>
        </div>
    </nav>

    <div class="container mt-5">

        <h3>Add Item</h3>
        <form id="addItemForm" action="/item/add" method="post">
            <div class="mb-3">
                <label for="itemName" class="form-label">Item Name</label>
                <input type="text" class="form-control" id="itemName" name="name" required>
            </div>
            <div class="mb-3">
                <label for="itemDescription" class="form-label">Item Description</label>
                <textarea class="form-control" id="itemDescription" name="description" rows="3"></textarea>
            </div>
            <div class="mb-3">
                <label for="itemPrice" class="form-label">Item Price</label>
                <input type="text" class="form-control" id="itemPrice" name="price" required>
            </div>
            <button type="submit" class="btn btn-primary" onclick="alert('You have successfully added an item')">Add Item</button>
            <a href="http://localhost:8080/MenuItems.html" class="btn btn-warning">Show All Added Items</a>
            <a href="/Update.jsp" class="btn btn-warning">Update Item Details</a>
            <a href="http://localhost:8082/views/Delete.jsp" class="btn btn-warning">Delete Item Details</a>

        </form>
    </div>

</body>

</html>
