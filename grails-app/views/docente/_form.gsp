<%@ page import="prueba.Docente" %>



<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'añosEnActividad', 'error')} required">
	<label for="añosEnActividad">
		<g:message code="docente.añosEnActividad.label" default="Años En Actividad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="añosEnActividad" type="number" value="${docenteInstance.añosEnActividad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'doble', 'error')} required">
	<label for="doble">
		<g:message code="docente.doble.label" default="Doble" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="doble" type="number" value="${docenteInstance.doble}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="docente.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${docenteInstance.edad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="docente.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${docenteInstance?.password}"/>
</div>

