<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="/WEB-INF/jsp/include-css.jsp" %>
    <title>Aproved Subjects</title>
</head>

<body>
    <!-- inluyendo header -->
    <%@include file="/WEB-INF/jsp/header.jsp" %>
    
    <div class="container-approvedSubjects">
      <div class="container-table-approved">
        <p class="sub-title">Tus materias aprobadas</p>
        <h1 class="colordiv">${errorMA0}</h1>
        <div>
            <table class="tablaNormal">
                <tr class="campos">
                	<td> Numero Correlativo</td>
                    <td> Nombre de la materia</td>
                    <!-- <td bgcolor="#e5e5e5"> Prerequisito </td> --> 
                    <td> Nota </td>
                </tr>
                
                <c:forEach var="m" items="${materiasMA}">
		
				<tr>
                <td>${m.getIdMateria()}</td>
                <td>${m.getNombreMateria()}</td>
                <!-- <td>${m.getPreRequisito()}</td>  -->
                <td>${m.getNota()}</td>
                </tr>
			
				</c:forEach>
		
            </table>
        </div>
      </div>
      <div class="container-form-deleteMateria">
        <form method="post" action="subjectsUpdateSuccess2">
          <p class="sub-title">Puedes eliminar materias</p>
          <div class="login-boxin-approved">
            <div class="user-box">
                <input type="text" name="subject" required="">
                <label>Número Correlativo de la materia</label>
            </div>
            <h3>${errorMA}</h3>
            <br> <input class="btn2" type="submit" value="Remover Materia">
           </div>
        </form> 
      </div>
    </div>
</body>

</html>