
<%@ page import="mifixtureonline.Match" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-match" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-match" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="match.awayTeam.label" default="Away Team" /></th>
					
						<th><g:message code="match.homeTeam.label" default="Home Team" /></th>
					
						<g:sortableColumn property="penaltiesDefinition" title="${message(code: 'match.penaltiesDefinition.label', default: 'Penalties Definition')}" />
					
						<g:sortableColumn property="redCardAway" title="${message(code: 'match.redCardAway.label', default: 'Red Card Away')}" />
					
						<g:sortableColumn property="redCardHome" title="${message(code: 'match.redCardHome.label', default: 'Red Card Home')}" />
					
						<g:sortableColumn property="scoreAway" title="${message(code: 'match.scoreAway.label', default: 'Score Away')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${matchInstanceList}" status="i" var="matchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${matchInstance.id}">${fieldValue(bean: matchInstance, field: "awayTeam")}</g:link></td>
					
						<td>${fieldValue(bean: matchInstance, field: "homeTeam")}</td>
					
						<td><g:formatBoolean boolean="${matchInstance.penaltiesDefinition}" /></td>
					
						<td>${fieldValue(bean: matchInstance, field: "redCardAway")}</td>
					
						<td>${fieldValue(bean: matchInstance, field: "redCardHome")}</td>
					
						<td>${fieldValue(bean: matchInstance, field: "scoreAway")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${matchInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
