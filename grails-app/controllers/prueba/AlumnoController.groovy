package prueba


@Validateable
class EditarAlumnoCommand {
	String apellido
	String nombre
	
	static constraints = {
		apellido blank: false
		nombre blank: false, validator: { val ->
			val.size() > 4
		}
	}
}


class AlumnoController {

	def alumnoService

	def editar(EditarAlumnoCommand command) {
		if (command.hasErrors()) {
			render("copate ${command.errors}")
		} else {
			render ("bien!")
		}
		
	}

	def index() {
		def d = new Docente(params)
		d.save()
		
		// alumnoService.crearAlumno("juan", "pepe")
		render "todo liso"
	}

	def crearUnRol() {
		Rol rol = new Rol()
		rol.añosEnActividad = 20
		rol.save()
		render "hola"
	}

	def buscar() {
		def rol = Rol.get(params.id)
		render "${rol} <br/> ${rol.properties}"
	}

	def ver() {
		Alumno a = Alumno.get(params.id)
		if (!a) throw new RuntimeException("no existe")
		render "${a.apellido} ${a.nombre} ${a.materias.collect { it.id }}"
	}
}
