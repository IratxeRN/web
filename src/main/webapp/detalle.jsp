<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="includes/cabecera.jsp" />


<main class="container" >

		<h2>Detalle del perro</h2>
			
			${mensaje}
			
			${perro}
		
		
		
		<div class="perroficha">
		
			<div class="perro">

				
				<img src="${perro.imagen}" alt="${perro.nombre}">


			</div>	
			<div class="detalle">
				<ul>
					<li><span class="negrita">Id:</span> ${perro.id} </li>
					<li><span class="negrita">Nombre:</span> ${perro.nombre}</li>
					<li><span class="negrita">Raza:</span> ${perro.raza}</li>
					<li><span class="negrita">Peso:</span> ${perro.peso} Kg</li>
					<li><span class="negrita">Esta vacunado?:</span> ${vacuna} </li>
					<li><span class="negrita">Historia:</span> ${perro.historia}</li>
				</ul>
			</div>
		</div>
		<div class="centrar2">
		<a href="perro-detalle?id=${perro.id-1}"><i class="fa fa-backward" aria-hidden="true"></i></a>
		<a href="perro-detalle?id=${perro.id+1}"><i class="fa fa-forward" aria-hidden="true"></i></a>
		</div>
	
		<div class="eliminar">
		
			<a href="perro-eliminar?id=${perro.id}">ELIMINAR PERRO</a>
			
		</div>
</main>
 <jsp:include page="includes/pie.jsp" />