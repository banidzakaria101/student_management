<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>
<h2>Student Form</h2>
<form action="add-Student" method="post">


    <label>Name:</label>
    <input type="text" name="name" required><br>


    <label>id:</label>
    <input type="Number" name="id" required><br>


    <label>registrationNumber:</label>
    <input type="text" name="registrationNumber" required><br>

    <label>Email:</label>
    <input type="email" name="email" required><br>

    <button type="submit">Submit</button>
</form>
</body>
</html>
