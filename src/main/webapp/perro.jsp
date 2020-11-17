<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="includes/cabecera.jsp" />

<main class="container" >


<hr>
	<h2>Perro Creado / Modificado</h2>
	
	${perro}
	
	<p style="color:red">${mensaje}</p>
	
</main>

<jsp:include page="includes/pie.jsp" />