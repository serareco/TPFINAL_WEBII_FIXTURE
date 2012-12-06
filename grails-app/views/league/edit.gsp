<%@ page import="mifixtureonline.League" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'league.label', default: 'League')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="block big"><!-- Block Begin -->
			<div class="titlebar">
				<h3>Administración de Ligas</h3>
				<a href="#" class="toggle">&nbsp;</a>
			</div>
			<div class="block_cont">
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${leagueInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${leagueInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</g:hasErrors>
				
				<g:form action="save" class="form">
					<div class="abmButtons">
						<g:link action="list" class="button">Ver Listado</g:link>
						<g:actionSubmit class="button" action="update" value="${message(code: 'default.button.update.label', default: 'Actualizar')}" />
					</div>
					<div class="clear"></div>
					
					<g:hiddenField name="id" value="${leagueInstance?.id}" />
					<g:hiddenField name="version" value="${leagueInstance?.version}" />
					<g:render template="form"/>
					
					<div class="clear"></div>
				</g:form>
				<div class="clear"></div>			
			</div>
		</div><!-- Block End -->
	</body>
</html>