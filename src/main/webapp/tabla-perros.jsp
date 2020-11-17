<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="includes/cabecera.jsp" />


<main class="container" >

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
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${perros}" var="perro">
			<tr>
				<td>${perro.id}</td>
				<td><a href="perro-detalle?id=${perro.id}">${perro.nombre}</a></td>
				<td>${perro.raza}</td>
				<td>${perro.peso}</td>
				<td>${ (perro.vacunado) ? 'Si' : 'No' }</td>
				<td>${perro.historia}</td>
			</tr>
		</c:forEach>
		</tbody>	 	
	 	<tfoot>
	 		<tr>
	 			<td colspan="6">Fin del listado</td>
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