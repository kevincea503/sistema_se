<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="/WEB-INF/jsp/include-css.jsp"%>
<title>Sección de Sugerencias</title>
<style>
.suggestions-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
}
form textarea {
    width: 400px;
    border: 0;
    outline: none;
    background:gainsboro;
    padding: 15px;
    margin: 15px 0;
    border-radius: 6px;

}

.suggestion-form {
    width: 100%;
}
    </style>
</head>
<body>
	<!-- inluyendo header -->
	<%@include file="/WEB-INF/jsp/header.jsp"%>
	
    <div class="suggestions-section">
    <p class="sub-title">Deja tus comentarios</p>        
	<form method="post" action="addComentario">
        <div class="suggestion-form">            
	        <div>
                <textarea type="text" name="mensaje" rows="6" placeholder="Escribe tus opiniones o sugencias" required></textarea>
	        </div> 
            <input class="btn2"type="submit" value="Enviar Sugerencia">
       </div>    
     </form>
    </div>
    
</body>
</html>