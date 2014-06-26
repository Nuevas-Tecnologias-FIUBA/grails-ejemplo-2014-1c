package prueba

class Alumno extends Rol {

	String nombre
	String apellido

	Set materias = []

    static constraints = {
		nombre blank: false, nullable: false
		apellido blank: false, nullable: false
    }

	static hasMany = [
		materias: Materia,
	]

	static belongsTo = Materia
}
