<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="includes/cabecera.jsp" />


<main class="container" >

<h2>Nuevo Perro</h2>
<!--  Esto hace una peticion GET al controlador-->
<form method="post" action="perro-controller">
 	
 	<input type="text" name="nombre" placeholder="Nombre del perro" required>
 	<br>
 	<input type="text" name="raza" placeholder="Raza del perro" required>
 	<br>
 	<input type="text" name="peso" placeholder="Peso del perro en kg" required>
	 <br>
 
 	Marca si esta Vacunado:
 	<input type="checkbox" name="vacunado">
	 <br>
 	<textarea name="historia" cols="30" rows="5" placeholder="Cuentame la historia del perro"></textarea> 
 	<br>
 	<input type="submit" value="Enviar">
 </form>

 </main>
 
 
 <jsp:include page="includes/pie.jsp" />
