package prueba

class Configuracion {

	String smtp
	Integer puerto

}

class MailSender {
	

	def configuracion

	
	void send() {
		println(' "enviando" mail')
		println("${configuracion.smtp} ${configuracion.puerto}")
	}
}
