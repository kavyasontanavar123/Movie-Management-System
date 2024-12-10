<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Dashboard</title>
    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        /* Container */
        .container {
            text-align: center;
            background-color: #fff;
            padding: 50px;
            border-radius: 12px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        
        /* Heading Styles */
        h1 {
            color: #333;
            font-size: 36px;
            margin-bottom: 20px;
        }

        h2 {
            color: #555;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Button Styling */
        a {
            display: inline-block;
            padding: 12px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
        }

        /* Footer Styling */
        footer {
            margin-top: 20px;
            color: #888;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome To Movie Dashboard</h1>
        <h2><a href="AddMovie.jsp">Add New Movie</a></h2>
        <h2><a href="display-all-movies">Display All Movies</a></h2>
        <footer>
            &copy; 2024 Movie Dashboard. All Rights Reserved.
        </footer>
    </div>

</body>
</html>
