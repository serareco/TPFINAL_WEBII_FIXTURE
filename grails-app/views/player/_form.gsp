<%@ page import="mifixtureonline.Player" %>



<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'teams', 'error')} ">
	<label for="teams">
		<g:message code="player.teams.label" default="Teams" />
		
	</label>
	<g:select name="teams" from="${mifixtureonline.Team.list()}" multiple="multiple" optionKey="id" size="5" value="${playerInstance?.teams*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="player.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mifixtureonline.User.list()}" optionKey="id" required="" value="${playerInstance?.user?.id}" class="many-to-one"/>
</div>

