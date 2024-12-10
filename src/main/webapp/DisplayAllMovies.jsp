<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Details</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Container Styling */
        .container {
            width: 90%;
            max-width: 1000px;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            animation: fadeIn 0.5s ease-in;
        }

        /* Heading Styling */
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-size: 36px;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
            border-radius: 10px;
            overflow: hidden;
            background-color: #f8f9fa;
        }

        table th, table td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e9ecef;
            cursor: pointer;
            transform: scale(1.01);
            transition: transform 0.3s ease;
        }

        td {
            font-size: 16px;
            color: #333;
        }

        /* Button and Link Styling */
        a {
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 8px;
            color: white;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .update {
            background-color: #28a745;
        }

        .delete {
            background-color: #dc3545;
        }

        .update:hover {
            background-color: #218838;
        }

        .delete:hover {
            background-color: #c82333;
        }

        /* Footer Link Styling */
        .footer-link {
            text-align: center;
        }

        .footer-link a {
            padding: 12px 25px;
            background-color: #007bff;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }

        .footer-link a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            transition: transform 0.3s ease;
        }

        /* Fade-in Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>All Movie Details</h1>

        <table>
            <tr>
                <th>Movie ID</th>
                <th>Title</th>
                <th>Genre</th>
                <th>Director</th>
                <th>Rating</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            <%
            ResultSet rs = (ResultSet) request.getAttribute("resultSet"); 
            while(rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getInt(5) %></td>
                <td><a href="update-movie?movieId=<%= rs.getInt(1) %>" class="update">Update</a></td>
                <td><a href="delete-movie?movieId=<%= rs.getInt(1) %>" class="delete">Delete</a></td>
            </tr>
            <%
            }
            %>
        </table>

        <div class="footer-link">
            <a href="index.jsp">Go Back to Dashboard</a>
        </div>
    </div>

</body>
</html>
