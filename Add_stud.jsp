<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Alumini Details</title>
    <style>
        body {
            background-image: url("n.jpg");
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-wrapper {
            width: 400px;
            padding: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #333;
            text-align: center;
            margin: 0 0 20px;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="radio"] {
            margin-bottom: 20px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-wrapper">
            <h1>Add Alumini Details</h1>
            <form action="Add_stud11.jsp" method="post">
                <label for="Name">Name</label>
                <input type="text" name="Name" required>
                <label for="age">Age</label>
                <input type="number" name="age" required>
                <label for="gender">Gender</label>
                <br>
                <input type="radio" name="gender" value="Male" checked>Male
                <input type="radio" name="gender" value="Female">Female
                <label for="department">Current Position</label>
                <input type="text" name="department" required>
                <label for="salary">Phone no</label>
                <input type="number" name="salary" required>
                <input type="submit" value="Submit">
            </form>
        </div>
    </div>
</body>
</html>
