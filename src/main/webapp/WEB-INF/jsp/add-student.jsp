<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>
<h2>Student Form</h2>
<form >

    <label>Name:</label>
    <label>
        <input type="text" name="name" required>
    </label><br>

    <label>Id:</label>
    <label>
        <input type="number" name="id" required>
    </label><br>

    <label>Registration Number:</label>
    <label>
        <input type="text" name="registrationNumber" required>
    </label><br>

    <label>Email:</label>
    <label>
        <input type="email" name="email" required>
    </label><br>

    <button type="submit">Submit</button>
</form>
</body>
</html>
