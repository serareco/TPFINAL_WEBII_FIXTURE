
<%@ page import="mifixtureonline.League" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'league.label', default: 'League')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="body">
			<div class="block big"><!-- Block Begin -->
				<div class="titlebar">
					<h3>Liga: <g:fieldValue bean="${leagueInstance}" field="name"/></h3>
					<a href="#" class="toggle">&nbsp;</a>
				</div>
				
				<div class="block_cont">
					<g:form class="form">
						<div class="abmButtons">
							<g:hiddenField name="id" value="${leagueInstance?.id}" />
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
					
						<g:if test="${leagueInstance?.name}">
						<li class="fieldcontain">
							<span id="name-label" class="property-label"><strong>Nombre</strong></span>
							<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${leagueInstance}" field="name"/></span>
						</li>
						</g:if>
						
						<g:if test="${leagueInstance?.gameName}">
						<li class="fieldcontain">
							<span id="gameName-label" class="property-label"><strong>Nombre del Juego</strong></span>
							<span class="property-value" aria-labelledby="gameName-label"><g:fieldValue bean="${leagueInstance}" field="gameName"/></span>							
						</li>
						</g:if>
						
						<g:if test="${leagueInstance?.console}">
						<li class="fieldcontain">
							<span id="console-label" class="property-label"><strong>Consola de Juego</strong></span>
							<span class="property-value" aria-labelledby="console-label"><g:fieldValue bean="${leagueInstance}" field="console"/></span>
						</li>
						</g:if>
					
						<g:if test="${leagueInstance?.matchs}">
						<li class="fieldcontain">
							<span id="matchs-label" class="property-label"><strong>Partidos</strong></span>
							<g:each in="${leagueInstance.matchs}" var="m">
								<span class="property-value" aria-labelledby="matchs-label"><g:link controller="match" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
							</g:each>
						</li>
						</g:if>
					
						<g:if test="${leagueInstance?.teams}">
						<li class="fieldcontain">
							<span id="teams-label" class="property-label"><strong>Equipos</strong></span>
							<ol>
							<g:each in="${leagueInstance.teams}" var="t">
								<li class="property-value" aria-labelledby="teams-label">${t?.name.encodeAsHTML()}</li>
							</g:each>
							</ol>
						</li>
						</g:if>
						
						<g:if test="${leagueInstance?.closed}">
						<li class="fieldcontain">
							<span id="closed-label" class="property-label"><strong>Estado</strong></span>
							<span class="property-value" aria-labelledby="closed-label"><g:formatBoolean boolean="${leagueInstance?.closed}" /></span>
						</li>
						</g:if>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
