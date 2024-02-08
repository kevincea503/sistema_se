<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="/WEB-INF/jsp/include-css.jsp" %>
    <title>Actividades</title>
</head>

<body>
    <!-- inluyendo header -->
    <%@include file="/WEB-INF/jsp/header.jsp" %>

	<div class="container-approvedSubjects">
        <div class="container-table-approved">
            <p class="sub-title">Estas son tus actividades pendientes</p>
            <table class="tablaNormal">
                <tr class="campos">
                    <td>Numero </td>
                    <td>Actividad</td>
                </tr>
                <c:forEach var="a" items="${actividadesEstudianteLogeado}">
                <tr>
                    <td> ${a.getIdActividadesExtra()}</td>
                    <td> ${a.getNombreActividadesExtra()}</td>
                </tr>
                </c:forEach>
                
            </table>
        </div>
        <div class="container-form-deleteMateria">
            <form method="post" action="activitiesEdit">
                <p class="sub-title">Añadir nueva actividad</p>         
                <div class="login-boxin-approved">
                  <div class="user-box">
                      <input type="text" name="idActivity">
                      <label>Número de actividad (para editar)</label>
                  </div>
                  <div class="user-box">
                    <input type="text" name="nombreActividad">
                    <label>Actividad (para agregar)</label>
                   </div>
                  <h3>${errorAE}</h3>
                  <input class="btn2" type="submit" value="Agregar actividad">
                </div>
            </form>
        </div>
    </div>

</body>

</html>