package com.ipartek.formacion.pojo;

public class Perro extends Mamifero {

	public static final String RAZA_POR_DEFECTO = "cruce";
	public static final String URL_FOTO = "imgs/perretes/no_perro.jpg";

	// Atributos, deben ser siempre privados
	// la forma de manipular estos atributos es a traves de los getteres y settres
	///////////////////////////////////////
	private int id;
	private String raza;
	private float peso;
	private boolean vacunado;
	private String historia;
	private String imagen;

	// Constructores
	///////////////////////////////////////
	public Perro() {
		super("Sin nombre");
		this.id = 0;
		this.raza = RAZA_POR_DEFECTO;
		this.peso = 0f;
		this.vacunado = false;
		this.historia = "Erase una vez....";
		this.imagen = URL_FOTO;
	}

	// otro constructor sobrecargado

	public Perro(String nombre) {
		super(nombre);
		this.id = 0;
		this.raza = RAZA_POR_DEFECTO;
		this.peso = 0f;
		this.vacunado = false;
		this.historia = "Erase una vez....";
		this.imagen = URL_FOTO;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public Perro(int id, String nombre) {
		this(nombre);
		this.id = id;
	}

	public Perro(String nombre, String raza, float peso) {
		this(nombre);
		// CUIDADO si tienen algo espcial los settres usarlos
		// this.raza = raza;
		this.setRaza(raza);
		// this.peso = peso;
		this.setPeso(peso);
	}

	// Getters y setters
	///////////////////////////////////////

	public String getRaza() {
		return raza;
	}

	/**
	 * Comprobamos que sea una raza valida, si es null o vacio usamos la constante
	 * RAZA_POR_DEFECTO
	 * 
	 * @param raza
	 */
	public void setRaza(String raza) {
		if (raza != null) {

			if (raza.trim().isEmpty()) {
				raza = RAZA_POR_DEFECTO;
			}
			this.raza = raza;

		} else {
			this.raza = RAZA_POR_DEFECTO;
		}
	}

	public float getPeso() {
		return peso;
	}

	public void setPeso(float peso) {
		if (peso < 0) {
			this.peso = 0;
		} else {
			this.peso = peso;
		}
	}

	public boolean isVacunado() {
		return vacunado;
	}

	public void setVacunado(boolean isVacunado) {
		this.vacunado = isVacunado;
	}

	public String getHistoria() {
		return historia;
	}

	public void setHistoria(String historia) {
		this.historia = historia;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Perro [id=" + id + ", raza=" + raza + ", peso=" + peso + ", vacunado=" + vacunado + ", historia="
				+ historia + ",  imagen=" + imagen + ", getNombre()=" + getNombre() + "]";
	}

}
