
<%@ page import="prueba.Docente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'docente.label', default: 'Docente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-docente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-docente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list docente">
			
				<g:if test="${docenteInstance?.añosEnActividad}">
				<li class="fieldcontain">
					<span id="añosEnActividad-label" class="property-label"><g:message code="docente.añosEnActividad.label" default="Años En Actividad" /></span>
					
						<span class="property-value" aria-labelledby="añosEnActividad-label"><g:fieldValue bean="${docenteInstance}" field="añosEnActividad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${docenteInstance?.doble}">
				<li class="fieldcontain">
					<span id="doble-label" class="property-label"><g:message code="docente.doble.label" default="Doble" /></span>
					
						<span class="property-value" aria-labelledby="doble-label"><g:fieldValue bean="${docenteInstance}" field="doble"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${docenteInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="docente.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${docenteInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${docenteInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="docente.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${docenteInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${docenteInstance?.id}" />
					<g:link class="edit" action="edit" id="${docenteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
