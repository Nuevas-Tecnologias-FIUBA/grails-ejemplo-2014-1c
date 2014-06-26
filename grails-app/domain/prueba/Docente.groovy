package prueba

class Docente extends Rol {

	int edad
	int doble

	String password

	Docente(int edad) {
		this.edad = edad
		this.doble = edad * 2
	}

    static constraints = {
    }
}
