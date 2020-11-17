<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="includes/cabecera.jsp" />


<main class="container" >



<div class="hero-image">
  <div class="hero-text">
    <h2>Hola, soy Laika!</h2>
    <p>Soy un perrete muy salado</p>
    
    <a class="boton" href="perro-controller"> Ver perros </a>
  </div>
</div>

<%
	// podemos combinar HTML + Java = JSP - Java Server Page
	out.print("<p>Este parrafo esta escrito en Java</p>");

%>

 </main>
 
 
 <jsp:include page="includes/pie.jsp" />
