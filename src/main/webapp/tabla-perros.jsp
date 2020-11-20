<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="includes/cabecera.jsp" />


<main class="container" >

<h3>${mensaje}</h3>

	<table>
		<caption>Perros en la perrera</caption>	 
		<thead>
		<tr>
			<th>Id</th>
			<th>Nombre</th>
			<th>Raza</th>
			<th>Peso</th>
			<th>Vacunado</th>
			<th>Historia</th>
			<th>Imagen</th>
			<th>Acciones</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${perros}" var="perro">
			<tr>
				<td>${perro.id}</td>
				<td><a href="perro-detalle?id=${perro.id}">${perro.nombre}</a></td>
				<td>${perro.raza}</td>
				<td>${perro.peso} Kg</td>
				<td class="centrar">${ (perro.vacunado) ? '<i class="fa fa-check" aria-hidden="true"></i>' : '<i class="fa fa-times" aria-hidden="true"></i>' }</td>
				<!--  <td>${ (perro.vacunado) ? 'Si' : 'No' }</td>-->
				<td>${perro.historia}</td>
				<td>${perro.imagen}</td>
				<td class="centrar2">
					<a href="perro-detalle?id=${perro.id}"><i class="fa fa-eye" aria-hidden="true"></i></a>
				    <a href="perro-eliminar?id=${perro.id}"><i class="fa fa-trash" aria-hidden="true"></i></a>
				    <a href="perro-editar?id=${perro.id}"><i class="fa fa-pencil" aria-hidden="true"></i></a>
				</td>
				
			</tr>
		</c:forEach>
		</tbody>	 	
	 	<tfoot>
	 		<tr>
	 			<td colspan="8">Fin del listado</td>
	 		</tr>
	 	</tfoot>	 
	</table>

	<!--  
	 <ul>
		 <c:forEach items="${perros}" var="perro">
		 	<li>${perro.id} ${perro.nombre} ${perro.raza}</li>	
		 </c:forEach>
	 </ul>
	-->
</main>

<jsp:include page="includes/pie.jsp" />