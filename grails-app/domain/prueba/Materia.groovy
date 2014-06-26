package prueba

class Materia {

	String nombre

	Set alumnos = []

    static constraints = {
		nombre blank: false, nullable: false, unique: true
    }

	static hasMany = [
		alumnos: Alumno,
	]
}
