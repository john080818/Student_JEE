<%-- 
    Document   : studentInfo
    Created on : 19/09/2022, 04:36:33 PM
    Author     : John-calderon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Information</title>
    </head>
    <body>
        <h1>Student Information</h1>
        <form action="./StudentServlet" method="POST">
            <table>
                <tr>
                    <td>Student Id</td>
                    <td><input type="text" name="studentId" value="${student.codEstudiantes}" /></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstName" value="${student.nombreEstudiante}" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastName" value="${student.apellidoEstudiante}" /></td>
                </tr>
                <tr>
                    <td>Year Level</td>
                    <td><input type="text" name="yearLevel" value="${student.semestreEstudiante}" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="action" value="Add" />
                        <input type="submit" name="action" value="Edit" />
                        <input type="submit" name="action" value="Delete" />
                        <input type="submit" name="action" value="Search" />
                    </td>
                </tr>
            </table>
        </form>
        <br>
        <table border="1">
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Year Level</th>
                <c:forEach items="${allStudents}" var="stud">
                <tr>
                    <td>${stud.codEstudiantes}</td>
                    <td>${stud.nombreEstudiante}</td>
                    <td>${stud.apellidoEstudiante}</td>
                    <td>${stud.semestreEstudiante}</td>
                </tr>
            </c:forEach> 
        </table>
    </body>
</html>
