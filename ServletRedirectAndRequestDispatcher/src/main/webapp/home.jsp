<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Boilerplate</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <%
         String myname = (String) session.getAttribute("name_key");
    %>
    <h3>
        Welcome: <%= myname %>
    </h3>
    <a href="about-us.jsp" id="reg">About-Us</a> &nbsp;&nbsp;
    <a href="logout" id="reg">Logout</a> &nbsp;&nbsp;
</body>
</html>
