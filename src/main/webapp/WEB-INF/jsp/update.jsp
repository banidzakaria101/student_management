<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>
<h2>Student Form</h2>

<form action="${pageContext.request.contextPath}/update-student" method="post">


    <label>Name:</label>
    <input type="text" name="nom" value="${student.getName()}" required><br>


    <label>Id:</label>
    <input type="Number" name="numero" value="${student.getId()}" required><br>


    <label>Registration Number:</label>
    <input type="text" name="matricule" value="${student.getRegestrationNumber()}" required><br>

    <label>Email:</label>
    <input type="email" name="email" value="${student.getEmail()}" required><br>

    <button type="submit">Submit</button>
</form>

</body>
</html>
