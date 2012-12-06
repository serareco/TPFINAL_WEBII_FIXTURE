<%@ page import="mifixtureonline.actions.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'text', 'error')} required">
	<label for="text">
		<g:message code="post.text.label" default="Text" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="text" maxlength="200" required="" value="${postInstance?.text}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="post.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${postInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'importance', 'error')} required">
	<label for="importance">
		<g:message code="post.importance.label" default="Importance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="importance" type="number" value="${postInstance.importance}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="post.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${mifixtureonline.Admin.list()}" optionKey="id" required="" value="${postInstance?.owner?.id}" class="many-to-one"/>
</div>

