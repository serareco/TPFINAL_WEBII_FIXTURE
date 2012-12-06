<%@ page import="mifixtureonline.User" %>

<div class="form_row ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}" placeholder="Nombre" class="input"/>
</div>

<div class="form_row ${hasErrors(bean: userInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="user.lastname.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" required="" value="${userInstance?.lastname}" placeholder="Apellido" class="input"/>
</div>

<div class="form_row ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${userInstance?.email}" placeholder="Email" class="input"/>
</div>

<div class="form_row ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Nombre de Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}" placeholder="Nombre de Usuario" class="input"/>
</div>

<div class="form_row ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Contraseña" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}" placeholder="Contraseña" class="input"/>
</div>

<div class="form_row ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
		<g:message code="user.accountExpired.label" default="Cuenta Expira" />
	</label>
</div>

<div class="form_row ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
		<g:message code="user.accountLocked.label" default="Cuenta Bloqueada" />
	</label>
</div>

<div class="form_row ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:checkBox name="enabled" value="${userInstance?.enabled}" />
		<g:message code="user.enabled.label" default="Cuenta Habilitada" />
	</label>
</div>

<div class="form_row ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
		<g:message code="user.passwordExpired.label" default="Contraseña Expira" />
	</label>
</div>

