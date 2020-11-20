<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="includes/cabecera.jsp" />


<main class="container" >



<h2>Modificar Datos del Perro</h2>
<!--  Esto hace una peticion GET al controlador-->
<form method="post" action="perro-modificado">
 	
 	<div class="form-group">
 				
				<label for="id">Id:</label>
				<input type="text" id="id" name="id" required value="${perro.id}" readonly >
			</div>
 	
 	<div class="form-group">
 				
				<label for="nombre">Nombre:</label>
				<input type="text" autofocus id="nombre" name="nombre" required value="${perro.nombre}">
			</div>

			<div class="form-group">
				<label for="raza">Raza:</label>
				<input type="text" id="raza" name="raza" required value="${perro.raza}">
			</div>

			<div class="form-group">
				<label for="peso">Peso(kg):</label>
				<input type="number" id="peso" name="peso" required value="${perro.peso}">
			</div>

			<div class="form-group">
				<label for="vacunado">Marca si esta Vacunado</label>
				<input type="checkbox" id="vacunado" name="vacunado" ${(perro.vacunado)==true ? 'Checked' : ' ' } >
			</div>

			<div class="form-group">
				<label for="historia">Historia</label>
				<textarea id="historia" name="historia" cols="30" rows="5">${perro.historia}</textarea>	
			</div>
			
			<div class="form-group">
				<label for="imagen">Imagen</label>
				<input type="text" id="imagen" name="imagen" value="${perro.imagen}">
			</div>

			<input type="submit" class="boton" value="Guardar Datos">
		</form>


 </main>
 
 
 <jsp:include page="includes/pie.jsp" />
