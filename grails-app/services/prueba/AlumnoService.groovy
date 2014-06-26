package prueba

class AlumnoService {
	static scope = prototype

	static transactional = false

	def mailSender

    def crearAlumno(String nombre, String apellido) {
		Alumno b = Alumno.withTransaction {
			Alumno a = new Alumno()
			a.nombre = nombre
			a.apellido = apellido
			a.save()
			a
		}

		mailSender.send()
    }
}
