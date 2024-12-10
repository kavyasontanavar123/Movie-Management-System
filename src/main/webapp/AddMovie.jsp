<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Movie</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        form {
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 500px;
            width: 100%;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="number"],
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        @media (max-width: 600px) {
            form {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add a New Movie</h1>
        <form action="add-movie" method="post">
            <label for="movieId">Movie ID:</label>
            <input type="number" id="movieId" name="movieId" placeholder="Enter Movie ID" required><br>

            <label for="movieTitle">Movie Title:</label>
            <input type="text" id="movieTitle" name="movieTitle" placeholder="Enter Movie Title" required><br>

            <label for="movieGenre">Movie Genre:</label>
            <input type="text" id="movieGenre" name="movieGenre" placeholder="Enter Movie Genre" required><br>

            <label for="movieDirector">Movie Director:</label>
            <input type="text" id="movieDirector" name="movieDirector" placeholder="Enter Movie Director" required><br>

            
