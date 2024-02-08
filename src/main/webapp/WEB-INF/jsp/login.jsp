<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href=src="<c:url value='/resources/img/icons8-done-100.png'/>"/>
    <%@include file="/WEB-INF/jsp/include-css.jsp" %>
    <title>Login</title>
  </script>
</head>
<body>
<div class="login-container">
 <div class="login-box">
  <h2>Iniciar Sesión</h2>
  <form method="post" action="loginn" id="form_login">
    <div class="user-box">
      <input type="text" name="CARNET" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="PASSWORD" required="">
      <label>Password</label>
    </div>
    <h3>${errorL}</h3> 
    <a class="submit-login" href="#" id="enviarFormulario">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Entrar
    </a>
    <div class="booter">
      <a href="${pageContext.request.contextPath}/register">Crear una nueva cuenta</a>
    </div>
    <div>
      <a href="${pageContext.request.contextPath}/recoveryPasword">Recuperar contraseña</a>
    </div>
  </div>
  </form>
 </div>

 <div class="signin-img">
  <h2 class="prhase-login">"Siempre parece imposible hasta que se hace"</h2>
  <h2 class="prhase-login-aut">- Nelson Mandela</h2>
  <img  src="<c:url value='/resources/img/img-login.png'/>" width="300px"/>
 </div>
</div>
<script>
  document.getElementById("enviarFormulario").addEventListener("click", function(e) {
    e.preventDefault(); // Prevenir el comportamiento predeterminado del enlace
    document.getElementById("form_login").submit(); // Enviar el formulario
  });
  </script>
</body>
</html>