package com.ipartek.formacion.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.modelo.PerroDAOSqlite;
import com.ipartek.formacion.pojo.Perro;

/**
 * Servlet implementation class PerroModificarController
 */
@WebServlet("/perro-modificado")
public class PerroModificarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PerroModificarController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mensaje = "";

		int id = Integer.parseInt(request.getParameter("id"));

		String parametroNombre = request.getParameter("nombre");
		String raza = request.getParameter("raza");
		Float peso = Float.parseFloat(request.getParameter("peso"));
		Boolean vacunado = (request.getParameter("vacunado") == null) ? false : true;
		/* Otra forma: Boolean vacunado = (request.getParameter("vacunado") != null); */
		String historia = request.getParameter("historia");

		Perro p = new Perro();
		p.setId(id);
		p.setNombre(parametroNombre);
		p.setRaza(raza);
		p.setPeso(peso);
		p.setVacunado(vacunado);
		p.setHistoria(historia);

		PerroDAOSqlite dao = PerroDAOSqlite.getInstance();

		try {

			dao.modificar(p);
			mensaje = "Perro modificado con EXITO";

		} catch (Exception e) {
			/** Otra forma de devolver el mensaje, directamente con serAtrribute **/
			request.setAttribute("mensaje", "Lo sentimos pero " + p.getNombre() + " no se ha podido modificar");
			e.printStackTrace();
		}

		// enviarlos a la JSP
		request.setAttribute("perro", p);
		request.setAttribute("mensaje", mensaje);

		// ir a la JSP
		request.getRequestDispatcher("perro.jsp").forward(request, response);
	}

}
