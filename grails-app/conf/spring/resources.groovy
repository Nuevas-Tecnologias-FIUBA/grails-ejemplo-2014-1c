import prueba.MailSender
import prueba.Configuracion

// Place your Spring DSL code here
beans = {
	
	configuracion(Configuracion) {
		smtp = "smtp.google.com"
		puerto = 25
	}
		
	mailSender(MailSender) {
		configuracion = ref('configuracion')
	}
	
}
