<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Name Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Custom styles */
        body {
            background-color: #f8f9fa;
            padding: 20px;
        }
        .container {
            max-width: 500px;
            margin: auto;
        }
        .card {
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
            padding: 20px;
            background-color: #ffffff;
        }
        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h2 class="mb-4">Delete Item</h2>
            <form id="deleteItemForm" action="/item/delete" method="post">
                <div class="form-group">
                    <label for="itemname" class="form-label">Item Name:</label>
                    <input type="text" id="itemname" name="name" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary" >Submit</button>
            </form>
        </div>
    </div>

    <!-- JavaScript -->
    
</body>
</html>
