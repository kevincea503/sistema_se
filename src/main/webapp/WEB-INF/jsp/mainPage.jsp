<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="/WEB-INF/jsp/include-css.jsp" %>
    <title>Mi progreso</title>
</head>

<body>
    <!-- inluyendo header -->
    <%@include file="/WEB-INF/jsp/header.jsp" %>

    <div class="flex-container">
        <div class="user-data-container">
            <div class="user-data">
               <img src="<c:url value='/resources/img/user-profile_img.png'/>" width="30%" />
               <div class="content-data">
                  <h1>${nombreEstudiante}</h1>
                  <p>Ingeniería informática</p>
                  <p>CUM: 8.2</p>
                  <a href="${pageContext.request.contextPath}/userUpdate">Editar perfil</a>
               </div> 
            </div>
            <div class="about-app">
                <h2>Universidad Centroamericana José Simeón Cañas</h2>
                <p>Sistema de seguimiento academico SSA © 2023</p>
            </div>
        </div>
        <div class="dats-section">
            <div class="porcentaje-carrera">
                <div class="bar">
                   <img src="<c:url value='/resources/img/horas-sociales.png'/>" width="150px" />
                   <p>Porcentaje de carrera</p>
                </div>
                <div class="bar">
                    <img src="<c:url value='/resources/img/horas-sociales.png'/>" width="150px" />
                    <p>Porcentaje de horas sociales</p>
                </div>
            </div>

            <div class="user-advance">
                <div class="card">
                    <p>${numeroMateriasAprobadasEstudiante}</p>
                    <h2>Materias aprobadas</h2>
                </div>
                <div class="card">
                    <p>${materiasDisponiblesEstudiante}</p>
                    <h2>Materias habilitadas</h2>
                </div>
                <div class="card">
                    <p>${actividadesExtracurricularesEstudiante}</p>
                    <h2>Actividades Pendientes</h2>
                </div>

            </div>
        </div>
                <!--<div>
                <img src="<c:url value='/resources/img/user-profile_img.png'/>" width="10%"/>
                    <h2>Horas Sociales</h2>
                    <p>Tienes un total de <b>${horasInternasEstudiante}</b></p>
                    <p>horas internas y <b>${horasExternasEstudiante}</b></p>
                    <p>horas externas realizadas</p>
    
                </div> -->

                <!--
            <div>
            <img src="<c:url value='/resources/img/subjects.jpg'/>" width="6%"/>
                <h2>UV</h2>
                <p>Tienes un total de <b>${uVEstudiante}</b></p>
                <p>unidades valorativas pasadas</p>

            </div> -->

            
     </div>


</body>

</html>