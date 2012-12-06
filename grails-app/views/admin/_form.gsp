<%@ page import="mifixtureonline.Admin" %>



<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'posts', 'error')} ">
	<label for="posts">
		<g:message code="admin.posts.label" default="Posts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${adminInstance?.posts?}" var="p">
    <li><g:link controller="post" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="post" action="create" params="['admin.id': adminInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'post.label', default: 'Post')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="admin.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mifixtureonline.User.list()}" optionKey="id" required="" value="${adminInstance?.user?.id}" class="many-to-one"/>
</div>

