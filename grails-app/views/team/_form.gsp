<%@ page import="mifixtureonline.Team" %>

<div class="form_row ${hasErrors(bean: teamInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Nombre" />
	</label>
	<g:textField name="name" value="${teamInstance?.name}" placeholder="Nombre" class="input"/>
</div>

<div class="form_row ${hasErrors(bean: teamInstance, field: 'namePlayTeam', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Nombre del Equipo de Juego" />
	</label>
	<g:textField name="namePlayTeam" value="${teamInstance?.namePlayTeam}" placeholder="Nombre del Equipo de Juego" class="input"/>
</div>

<div class="form_row ${hasErrors(bean: teamInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="team.players.label" default="Jugadores" />
		
	</label>
	<g:select name="players" from="${mifixtureonline.Player.list()}" class="multiselect" multiple="true" optionKey="id" size="5" value="${teamInstance?.players*.id}" optionValue="${{it.user.name + ' (' + it.user.username + ')'}}" placeholder="Seleccioná una opción..." />
</div>

