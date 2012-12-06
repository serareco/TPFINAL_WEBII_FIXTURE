
<%@ page import="mifixtureonline.Match" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-match" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-match" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list match">
			
				<g:if test="${matchInstance?.awayTeam}">
				<li class="fieldcontain">
					<span id="awayTeam-label" class="property-label"><g:message code="match.awayTeam.label" default="Away Team" /></span>
					
						<span class="property-value" aria-labelledby="awayTeam-label"><g:link controller="team" action="show" id="${matchInstance?.awayTeam?.id}">${matchInstance?.awayTeam?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.homeTeam}">
				<li class="fieldcontain">
					<span id="homeTeam-label" class="property-label"><g:message code="match.homeTeam.label" default="Home Team" /></span>
					
						<span class="property-value" aria-labelledby="homeTeam-label"><g:link controller="team" action="show" id="${matchInstance?.homeTeam?.id}">${matchInstance?.homeTeam?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.penaltiesDefinition}">
				<li class="fieldcontain">
					<span id="penaltiesDefinition-label" class="property-label"><g:message code="match.penaltiesDefinition.label" default="Penalties Definition" /></span>
					
						<span class="property-value" aria-labelledby="penaltiesDefinition-label"><g:formatBoolean boolean="${matchInstance?.penaltiesDefinition}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.redCardAway}">
				<li class="fieldcontain">
					<span id="redCardAway-label" class="property-label"><g:message code="match.redCardAway.label" default="Red Card Away" /></span>
					
						<span class="property-value" aria-labelledby="redCardAway-label"><g:fieldValue bean="${matchInstance}" field="redCardAway"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.redCardHome}">
				<li class="fieldcontain">
					<span id="redCardHome-label" class="property-label"><g:message code="match.redCardHome.label" default="Red Card Home" /></span>
					
						<span class="property-value" aria-labelledby="redCardHome-label"><g:fieldValue bean="${matchInstance}" field="redCardHome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.scoreAway}">
				<li class="fieldcontain">
					<span id="scoreAway-label" class="property-label"><g:message code="match.scoreAway.label" default="Score Away" /></span>
					
						<span class="property-value" aria-labelledby="scoreAway-label"><g:fieldValue bean="${matchInstance}" field="scoreAway"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.scoreHome}">
				<li class="fieldcontain">
					<span id="scoreHome-label" class="property-label"><g:message code="match.scoreHome.label" default="Score Home" /></span>
					
						<span class="property-value" aria-labelledby="scoreHome-label"><g:fieldValue bean="${matchInstance}" field="scoreHome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.scorePenaltiesAway}">
				<li class="fieldcontain">
					<span id="scorePenaltiesAway-label" class="property-label"><g:message code="match.scorePenaltiesAway.label" default="Score Penalties Away" /></span>
					
						<span class="property-value" aria-labelledby="scorePenaltiesAway-label"><g:fieldValue bean="${matchInstance}" field="scorePenaltiesAway"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.scorePenaltiesHome}">
				<li class="fieldcontain">
					<span id="scorePenaltiesHome-label" class="property-label"><g:message code="match.scorePenaltiesHome.label" default="Score Penalties Home" /></span>
					
						<span class="property-value" aria-labelledby="scorePenaltiesHome-label"><g:fieldValue bean="${matchInstance}" field="scorePenaltiesHome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.yellowCardAway}">
				<li class="fieldcontain">
					<span id="yellowCardAway-label" class="property-label"><g:message code="match.yellowCardAway.label" default="Yellow Card Away" /></span>
					
						<span class="property-value" aria-labelledby="yellowCardAway-label"><g:fieldValue bean="${matchInstance}" field="yellowCardAway"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.yellowCardHome}">
				<li class="fieldcontain">
					<span id="yellowCardHome-label" class="property-label"><g:message code="match.yellowCardHome.label" default="Yellow Card Home" /></span>
					
						<span class="property-value" aria-labelledby="yellowCardHome-label"><g:fieldValue bean="${matchInstance}" field="yellowCardHome"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${matchInstance?.id}" />
					<g:link class="edit" action="edit" id="${matchInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
