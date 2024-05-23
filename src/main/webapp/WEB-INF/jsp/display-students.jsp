<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Students List</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/display-students" method="GET">
    <table>
        <tr>
            <th>Name</th>
            <th>Id</th>
            <th>Registration Number</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="Student" items="${students}">
            <tr>
                <td>${Student.name}</td>
                <td>${Student.id}</td>
                <td>${Student.registrationNumber}</td>
                <td>${Student.email}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/delete-student/${Student.id}">Delete</a>
                    <a href="${pageContext.request.contextPath}/update-student?id=${Student.id}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>


</body>
</html>
