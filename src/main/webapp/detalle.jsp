<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="includes/cabecera.jsp" />


<main class="container" >

		<h2>Detalle del perro</h2>
			
			${mensaje}
			
			${perro}
		
		
		<h3>Maquetado</h3>
			
		<div class="detalle">
			<ul>
				<li>Id: ${perro.id} </li>
				<li>Nombre: ${perro.nombre}</li>
				<li>Raza: ${perro.raza}</li>
				<li>Peso: ${perro.peso}</li>
				<li>Esta vacunado?: ${vacuna} </li>
				<li>Historia: ${perro.historia}</li>
			</ul>
		</div>
		
	
		<div class="eliminar">
		
			<a href="perro-eliminar?id=${perro.id}">ELIMINAR PERRO</a>
			
		</div>
</main>
 <jsp:include page="includes/pie.jsp" />