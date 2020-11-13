<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="estilos.css">
</head>
<body>

<a href="index.jsp">volver</a>
<hr>
	<h1>Perrera</h1>
	<table>
		
		<thead>
		<tr>
			<th colspan=6>LISTADO PERROS</th>
		</tr>
		<tr>
			<th>Id</th>
			<th>Nombre</th>
			<th>Raza</th>
			<th>Peso</th>
			<th>Vacunado</th>
			<th>Historia</th>
		</tr>
		</thead>

		<c:forEach items="${perros}" var="perro">
			<tr>
				<td>${perro.id}</td>
				<td>${perro.nombre}</td>
				<td>${perro.raza}</td>
				<td>${perro.peso}</td>
				<td>${perro.vacunado}</td>
				<td>${perro.historia}</td>
			</tr>
		</c:forEach>
	</table>

	<!--  
	 <ul>
		 <c:forEach items="${perros}" var="perro">
		 	<li>${perro.id} ${perro.nombre} ${perro.raza}</li>	
		 </c:forEach>
	 </ul>
	-->

</body>
</html>