<%@ page import="mifixtureonline.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="body">
			<div class="block big"><!-- Block Begin -->
				<div class="titlebar">
					<h3>Usuario: <g:fieldValue bean="${userInstance}" field="name"/></h3>
					<a href="#" class="toggle">&nbsp;</a>
				</div>
				
				<div class="block_cont">
					<g:form class="form">
						<div class="abmButtons">
							<g:hiddenField name="id" value="${userInstance?.id}" />
							<g:link action="list" class="button">Ver Listado</g:link>
							<g:actionSubmit class="button" action="edit" value="${message(code: 'default.button.edit.label', default: 'Modificar')}" />
							<g:actionSubmit class="button" action="delete" value="${message(code: 'default.button.delete.label', default: 'Eliminar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Estas seguro que deseas eliminar este registro?')}');" />
						</div>
					</g:form>
					
					<div class="clear"></div>
					
					<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
					</g:if>
					
					<ul class="property-list league">
					
						<g:if test="${userInstance?.username}">
						<li class="fieldcontain">
							<span id="username-label" class="property-label"><strong>Nombre de Usuario</strong></span>
							<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
						</li>
						</g:if>
					
						<g:if test="${userInstance?.accountExpired}">
						<li class="fieldcontain">
							<span id="accountExpired-label" class="property-label"><strong>Cuenta Expira</strong></span>
							<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span>
						</li>
						</g:if>
					
						<g:if test="${userInstance?.accountLocked}">
						<li class="fieldcontain">
							<span id="accountLocked-label" class="property-label"><strong>Cuenta Bloqueada</strong></span>
							<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span>
						</li>
						</g:if>
					
						<g:if test="${userInstance?.enabled}">
						<li class="fieldcontain">
							<span id="enabled-label" class="property-label"><strong>Cuenta Habilitada</strong></span>
							<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span>
						</li>
						</g:if>
					
						<g:if test="${userInstance?.passwordExpired}">
						<li class="fieldcontain">
							<span id="passwordExpired-label" class="property-label"><strong>Contraseña Expira></strong></span>
							<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span>
						</li>
						</g:if>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>

