<%@ page import="mifixtureonline.Team" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<div id="body">
			<div class="block big"><!-- Block Begin -->
				<div class="titlebar">
					<h3>Equipos</h3>
					<a href="#" class="toggle">&nbsp;</a>
				</div>
				
				<div class="block_cont">
					<g:form class="form">
						<div class="abmButtons list">
							<g:actionSubmit class="button" action="create" value="${message(code: 'default.button.create.label', default: 'Nuevo')}" />
						</div>
					</g:form>
					<table class="data-table"><!-- Table Wrapper Begin -->
						<thead>
							<tr>
							<th>Nombre</th>
							<th>Nombre del Equipo de Juego</th>
							<th width="80" class="sorting_disabled">Acciones</th>
							</tr>
						</thead>
						<tbody>
							<g:each in="${teamInstanceList}" status="i" var="teamInstance">
								<tr>
									<td>${fieldValue(bean: teamInstance, field: "name")}</td>
									<td>${fieldValue(bean: teamInstance, field: "namePlayTeam")}</td>
									<td>
										<div style="height: 3px;">&nbsp;</div>
										<div class="actionbar">
											<%--<g:link action="show/1" class="action view" id="${teamInstance?.id}"><span>Ver</span></g:link>
											<g:link action="edit" class="action edit" id="${teamInstance?.id}"><span>Editar</span></g:link>
											<g:link action="delete" class="action delete" id="${teamInstance?.id}"><span>Eliminar</span></g:link> --%>
											<a href="show/${teamInstance.id}" class="action view">
												<span>Ver</span>
											</a>
											<a href="edit/${teamInstance.id}" class="action edit">
												<span>Editar</span>
											</a>
											<a href="javascript: deleteRow('delete/${teamInstance.id}');" class="action delete">
												<span>Eliminar</span>
											</a>
										</div>
									</td>
								</tr>
							</g:each>
						</tbody>
					</table><!-- Table Wrapper End -->
				</div>
			</div><!-- Block End -->
		</div>
	</body>
</html>	
