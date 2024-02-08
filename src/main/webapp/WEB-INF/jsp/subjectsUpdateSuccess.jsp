<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="/WEB-INF/jsp/include-css.jsp" %>
    <title>Subjects Update</title>
</head>    
<body>
    <div class="confirmation-register">
        <img src="<c:url value='/resources/img/success.jpg'/>" width="100px" style="border-radius: 50%;"/>
        <h4>${nombreEstudianteUS}</h4>
        <P>MATERIA ACTUALIZADA EXITOSAMENTE</P>
        <a href="${pageContext.request.contextPath}/mainPage">Volver a mi Proceso</a>
    </div>
</body>
</html>