<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="includes/cabecera.jsp" />


<main class="container" >

<h2>Nuevo Perro</h2>
<!--  Esto hace una peticion GET al controlador-->
<form method="post" action="perro-controller">
 	
 	<div class="form-group">
				<label for="nombre">Nombre:</label>
				<input type="text" autofocus id="nombre" name="nombre" placeholder="Nombre del perro" required>
			</div>


			<div class="form-group">
				<label for="raza">Raza:</label>
				<input type="text" id="raza" name="raza" placeholder="Raza del perro" required>
			</div>

			<div class="form-group">
				<label for="peso">Peso(kg):</label>
				<input type="number" id="peso" name="peso" placeholder="Peso en Kilogramos" required>
			</div>

			<div class="form-group">
				<label for="vacunado">Marca si esta Vacunado</label>
				<input type="checkbox" id="vacunado" name="vacunado" checked>
			</div>

			<div class="form-group">
				<label for="historia">Historia</label>
				<textarea id="historia" name="historia" cols="30" rows="5" placeholder="Cuentame la historia del perro"></textarea>	
			</div>

			<div class="form-group">
				<label for="imagen">Imagen</label>
				<input type="text" id="imagen" name="imagen" placeholder="foto en JPEG">
			</div>

			<input type="submit" class="boton" value="Guardar Datos">
		</form>

 </main>
 
 
 <jsp:include page="includes/pie.jsp" />
