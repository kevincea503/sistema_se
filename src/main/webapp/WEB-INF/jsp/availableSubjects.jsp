<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="/WEB-INF/jsp/include-css.jsp"%>
<title>Available Subjects</title>
</head>

<body>
	<!-- inluyendo header -->
	<%@include file="/WEB-INF/jsp/header.jsp"%>
	<div class="container-availableSubjcts">
		<p class="sub-title">Estas son las materias que puedes inscribir</p>
		<h1 class="colordiv">${errorSem3}</h1>
		<div>
			<table class="tablaNormal">
				<tr class="campos">
					<td>Numero Correlativo</td>
					<td>Nombre de la materia</td>
					<td>UV's</td>
					<td>Prerequisito</td>
				</tr>
				<c:forEach var="m" items="${materias}">
					<tr>
						<td>${m.getIdMateria()}</td>
						<td>${m.getNombreMateria()}</td>
						<td>${m.getUv()}</td>
						<td>${m.getPreRequisito()}</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<!-- tabla para las materias recomendadas: -->
		<div>
			<p class="sub-title">Te recomendamos las siguientes materias</p>
		</div>

		<!-- error cuando la lista de materiasR esta vacia -->
		<h1 class="colordiv">${errorSem4}</h1>

		<div>
			<table class="tablaNormal">

				<tr class="campos">
					<td>Numero Correlativo</td>
					<td>Nombre de la materia</td>
					<td>UV's</td>
					<td>Prerequisito</td>
				</tr>
				
				<!-- la lista que se pasara contendra las materias recomendadas -->
				<c:forEach var="m" items="${materiasR}"> 

					<tr>
						<td>${m.getIdMateria()}</td>
						<td>${m.getNombreMateria()}</td>
						<td>${m.getUv()}</td>
						<td>${m.getPreRequisito()}</td>
					</tr>

				</c:forEach>

			</table>
		</div>
		<!-- termina tabla materias recomendadas-->

		<p class="sub-title">Añade materias como aprobadas</p>

		<form method="post" action="subjectsUpdateSuccess">
			<div class="login-boxin">
				<div class="user-box">
					<input type="text" name="subject" required="" placeholder="Número Correlativo de la materia">
				</div>

				<div class="user-box">
					<input type="text" name="score" required="" placeholder="Nota">
				</div>
				<h3>${errorSU}</h3>
				<input class="btn2" type="submit" value="Agregar Materia">
			</div>
			<!-- End Box -->

		</form>

	</div>

</body>

</html>