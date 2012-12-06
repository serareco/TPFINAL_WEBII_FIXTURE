<%@ page import="mifixtureonline.League" %>

<div class="form_row ${hasErrors(bean: leagueInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="league.name.label" default="Nombre" />
	</label>
	<g:textField name="name" value="${leagueInstance?.name}" placeholder="Nombre" id="txtTitle" class="input"/>
</div>

<div class="form_row ${hasErrors(bean: leagueInstance, field: 'gameName', 'error')} ">
	<label for="gameName">
		<g:message code="league.gameName.label" default="Nombre del Juego" />
	</label>
	<g:textField name="gameName" value="${leagueInstance?.gameName}" placeholder="Nombre del Juego" id="txtGameName" class="input" />
</div>

<div class="form_row ${hasErrors(bean: leagueInstance, field: 'console', 'error')} ">
	<label for="console">
		<g:message code="league.console.label" default="Consola de Juego" />
	</label>
	<g:textField name="console" value="${leagueInstance?.console}" placeholder="Consola de Juego" id="txtConsole" class="input" />
</div>

<div class="form_row ${hasErrors(bean: leagueInstance, field: 'teams', 'error')} ">
	<label for="teams">
		<g:message code="league.teams.label" default="Equipos" />
		
	</label>
	<g:select name="teams" from="${mifixtureonline.Team.list()}" class="multiselect" multiple="true" optionKey="id" size="5" value="${leagueInstance?.teams*.id}" optionValue="name" placeholder="Seleccioná una opción..."/>
</div>

<%-- 
<div class="form_row ${hasErrors(bean: leagueInstance, field: 'matchs', 'error')} ">
	<label for="matchs">
		<g:message code="league.matchs.label" default="Partidos" />
		
	</label>
	<g:select name="matchs" from="${mifixtureonline.Match.list()}" class="multiselect" optionKey="id" size="5" value="${leagueInstance?.matchs*.id}" placeholder="Seleccioná una opción..."/>
</div>
--%>

<div class="form_row ${hasErrors(bean: leagueInstance, field: 'closed', 'error')} ">
	<label for="closed">
		<g:checkBox name="closed" value="${leagueInstance?.closed}" />
		<g:message code="league.closed.label" default="Cerrado" />
	</label>
</div>




