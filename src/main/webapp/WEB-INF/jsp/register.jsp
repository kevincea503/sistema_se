<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="/WEB-INF/jsp/include-css.jsp" %>
    <title>Registro</title>
</head>
<body>
  <div class="login-box">
   <h2>Registrarse</h2>
   <form method="post" action="registrarEstudiante" id="form_register">
     <div class="user-box">
       <input type="text" name="nombreRe" required>
       <label>Nombre</label>
     </div>
     <div class="user-box">
       <input type="text" name="carnetRe" required>
       <label>Carnet</label>
     </div>
     <div class="user-box">
      <input type="email" name="correoRe" required>
      <label>Correo</label>
    </div>
    <div class="user-box">
      <input type="password" name="passwordRe" required>
      <label>Contraseña</label>
    </div>
    <div class="user-box">
      <input type="password" name="passwordRe2" required>
      <label>Repetir contraseña</label>
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
      <a href="${pageContext.request.contextPath}/">Realmente ya tengo una cuenta</a>
     </div>
   </div>
   </form>
  </div>
  <div class="signin-img">
    <img  src="<c:url value='/resources/img/img-register.png'/>" width="400px"/>
  </div>
 </div>
 <script>
   document.getElementById("enviarFormulario").addEventListener("click", function(e) {
     e.preventDefault(); // Prevenir el comportamiento predeterminado del enlace
     document.getElementById("form_register").submit(); // Enviar el formulario
   });
  </script> 
</body>
</html>