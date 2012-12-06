<%@ page import="mifixtureonline.Match" %>



<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'awayTeam', 'error')} required">
	<label for="awayTeam">
		<g:message code="match.awayTeam.label" default="Away Team" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="awayTeam" name="awayTeam.id" from="${mifixtureonline.Team.list()}" optionKey="id" required="" value="${matchInstance?.awayTeam?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'homeTeam', 'error')} required">
	<label for="homeTeam">
		<g:message code="match.homeTeam.label" default="Home Team" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="homeTeam" name="homeTeam.id" from="${mifixtureonline.Team.list()}" optionKey="id" required="" value="${matchInstance?.homeTeam?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'penaltiesDefinition', 'error')} ">
	<label for="penaltiesDefinition">
		<g:message code="match.penaltiesDefinition.label" default="Penalties Definition" />
		
	</label>
	<g:checkBox name="penaltiesDefinition" value="${matchInstance?.penaltiesDefinition}" />
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'redCardAway', 'error')} required">
	<label for="redCardAway">
		<g:message code="match.redCardAway.label" default="Red Card Away" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="redCardAway" type="number" value="${matchInstance.redCardAway}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'redCardHome', 'error')} required">
	<label for="redCardHome">
		<g:message code="match.redCardHome.label" default="Red Card Home" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="redCardHome" type="number" value="${matchInstance.redCardHome}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'scoreAway', 'error')} required">
	<label for="scoreAway">
		<g:message code="match.scoreAway.label" default="Score Away" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="scoreAway" type="number" value="${matchInstance.scoreAway}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'scoreHome', 'error')} required">
	<label for="scoreHome">
		<g:message code="match.scoreHome.label" default="Score Home" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="scoreHome" type="number" value="${matchInstance.scoreHome}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'scorePenaltiesAway', 'error')} required">
	<label for="scorePenaltiesAway">
		<g:message code="match.scorePenaltiesAway.label" default="Score Penalties Away" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="scorePenaltiesAway" type="number" value="${matchInstance.scorePenaltiesAway}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'scorePenaltiesHome', 'error')} required">
	<label for="scorePenaltiesHome">
		<g:message code="match.scorePenaltiesHome.label" default="Score Penalties Home" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="scorePenaltiesHome" type="number" value="${matchInstance.scorePenaltiesHome}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'yellowCardAway', 'error')} required">
	<label for="yellowCardAway">
		<g:message code="match.yellowCardAway.label" default="Yellow Card Away" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="yellowCardAway" type="number" value="${matchInstance.yellowCardAway}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'yellowCardHome', 'error')} required">
	<label for="yellowCardHome">
		<g:message code="match.yellowCardHome.label" default="Yellow Card Home" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="yellowCardHome" type="number" value="${matchInstance.yellowCardHome}" required=""/>
</div>

