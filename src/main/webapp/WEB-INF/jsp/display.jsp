<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <%--<style><%@include file=""%></style>--%>
</head>
<body>

<h2>Students List</h2>

<form action="display-students" method="GET">
    <input type="text" name="nom">
    <button type="submit">envoyer</button>

</form>

<table>
    <tr>
        <th>Name</th>
        <th>Id</th>
        <th>Registration Number</th>
        <th>Email</th>
    </tr>
    <c:forEach var="Etudiant" items="${Etudiants}">
        <tr>
            <td>${Etudiant.getNom()}</td>
            <td>${Etudiant.getNumero()}</td>
            <td>${Etudiant.getMatricule()}</td>
            <td>${Etudiant.getEmail()}</td>
            <td><a href="deleteEtudiant/${Etudiant.getMatricule()}">Supprimer</a></td>
            <td><a href="modifyEtudiant/${Etudiant.getMatricule()}">Modifier</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
