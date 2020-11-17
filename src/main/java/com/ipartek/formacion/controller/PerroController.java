package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.modelo.PerroDAOSqlite;
import com.ipartek.formacion.pojo.Perro;

/**
 * @WebServlet("/perro") es la URL donde escucha este controlador
 */
@WebServlet("/perro-controller")
public class PerroController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Perro> lista = new ArrayList<Perro>();

		// conseguir perros llamado al modelo
		try {
			PerroDAOSqlite dao = PerroDAOSqlite.getInstance();
			lista = dao.listar();

		} catch (Exception e) {

			e.printStackTrace();
			/*
			 * } finally { lista.add(new Perro("buba", "boxer", 3)); lista.add(new
			 * Perro("Snoppy", "cruce", 3)); lista.add(new Perro("pulgas", "otra", 20)); }
			 */
		}
		// enviarlos a la JSP
		// perros es el nombre de la variable para pintar.
		// request.setAttribute(String, Objeto);
		// String, podeis poner el nombre que querais, pero ese mismo nombre lo usaremos
		// en el JSP para acceder al objeto.
		// Objeto se puede enviar lo que queramos: String, BOolean, Perro, ArrayList....
		request.setAttribute("perros", lista);
		request.setAttribute("mensaje", "Recuperados " + lista.size() + " perros");

		// comando para ir al la VISTa, hacemos un FORWARD y escribimos el nombre de la
		// JSP
		request.getRequestDispatcher("tabla-perros.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String mensaje = "";

		// recibri datos del formulario, fijaros en el input el atributo 'name'

		String parametroNombre = request.getParameter("nombre");
		String raza = request.getParameter("raza");
		Float peso = Float.parseFloat(request.getParameter("peso"));
		Boolean vacunado = (request.getParameter("vacunado") == null) ? false : true;
		/* Otra forma: Boolean vacunado = (request.getParameter("vacunado") != null); */
		String historia = request.getParameter("historia");

		Perro p = new Perro();
		p.setNombre(parametroNombre);
		p.setRaza(raza);
		p.setPeso(peso);
		p.setVacunado(vacunado);
		p.setHistoria(historia);

		PerroDAOSqlite dao = PerroDAOSqlite.getInstance();

		try {

			dao.crear(p);
			mensaje = "Perro insertado con EXITO";

		} catch (Exception e) {
			/** Otra forma de devolver el mensaje, directamente con serAtrribute **/
			request.setAttribute("mensaje", "Lo sentimos pero " + p.getNombre() + " de perro ya existe");
			e.printStackTrace();
		}

		// enviarlos a la JSP
		request.setAttribute("perro", p);
		request.setAttribute("mensaje", mensaje);

		// ir a la JSP
		request.getRequestDispatcher("perro.jsp").forward(request, response);
	}

}
