<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Student</title>
</head>
<body>
<h2>Update Student</h2>
<form action="${pageContext.request.contextPath}/update-student" method="post">

    <label>Name:</label>
    <label>
        <input type="text" name="name" value="${Student.name}" required>
    </label><br>

    <label>Id:</label>
    <label>
        <input type="number" name="id" value="${Student.name}" required>
    </label><br>

    <label>Registration Number:</label>
    <label>
        <input type="text" name="registrationNumber" value="${Student.registrationNumber}" required>
    </label><br>

    <label>Email:</label>
    <label>
        <input type="email" name="email" value="${student.email}" required>
    </label><br>

    <button type="submit">Submit</button>
</form>
</body>
</html>
