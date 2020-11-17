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
 * Servlet implementation class PerroEditarController
 */
@WebServlet("/perro-editar")
public class PerroEditarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private PerroDAOSqlite dao = PerroDAOSqlite.getInstance();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PerroEditarController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String parametroID = request.getParameter("id");
		int id = Integer.parseInt(parametroID);

		Perro perro = dao.recuperar(id);

		request.setAttribute("perro", perro);

		request.getRequestDispatcher("editar.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
