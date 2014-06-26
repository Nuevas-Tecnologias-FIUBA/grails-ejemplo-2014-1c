import prueba.*

class BootStrap {

    def init = { servletContext ->
    
		new Materia(nombre: "materia 1").save()
		new Materia(nombre: "materia 2").save()
		new Materia(nombre: "materia 3").save()
		new Materia(nombre: "materia 4").save()
		
    
    }
    def destroy = {
    }
}
