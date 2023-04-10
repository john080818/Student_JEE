<%-- 
    Document   : matricula
    Created on : 9/04/2023, 02:49:29 PM
    Author     : jhon1
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Matricular al estudiante</h1>
        <form action="matriculaServlet" method="POST">


            <table>
                <tr>
                    <td><label for="codCurso">COD Curso</label></td>
                    <td>     
                        <select name="codCurso" id="codCurso">
                            <c:forEach items="${allCurs}" var="curs">
                                <option value="${curs.codCurso}">
                                    COD: ${curs.codCurso} - Nombre: ${curs.nombreCurso}
                                </option> 
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="estID">ID Estudiante</label></td>
                    <td>
                        <select name="cod_Es" id="cod_Es">
                            <c:forEach items="${allStudent}" var="stud">
                                <option value="${stud.codEstudiantes}">
                                    ID: ${stud.codEstudiantes} - Nombre: ${stud.nombreEstudiante}
                                </option>  
                            </c:forEach>
                        </select> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="action" value="Add" />
                        <input type="submit" name="action" value="Delete" />
                        <input type="submit" name="action" value="Search" />
                    </td>
                </tr>

            </table>

        </form>
         <br>
        <table border="1">
            <th>Cod_curso</th>
            <th>Cod_estudiante</th>
            <th>Mat_fecha</th>
                <c:forEach items="${allMatricula}" var="matri">
                <tr>
                    <td>${matri.matriculaPK.codigoCurso}</td>
                    <td>${matri.matriculaPK.codigoEstudiantes}</td>
                    <td>${matri.matFecha}</td>
                </tr>
            </c:forEach> 
        </table>
    </body>
</html>
