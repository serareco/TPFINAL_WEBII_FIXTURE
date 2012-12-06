<html>
<head>
	<meta name="layout" content="login">
	<title><g:message code="springSecurity.login.title"/></title>		
</head>
<body>		
<div id="loginbox">
	<a href="#" id="logo">Mi Fixture OnLine</a>
	<div id="loginform">
<%--		<div class='fheader'><g:message code="springSecurity.login.header"/></div>--%>

		<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
			<g:if test='${flash.message}'>
				<div class="errorMessage" style="color:#FF9E9E!important">${flash.message}</div>
				<br/>
			</g:if>
		
			<div id="username_field">
				<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
				<input type='text' class='text_' name='j_username' id='username' placeholder = 'Usuario'/>
			</div>
			
			<div id="password_field">
				<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
				<input type='password' class='text_' name='j_password' id='password' placeholder = 'Password'/>
			</div>

<!-- 
			<p id="remember_me_holder">
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
			</p>
 --> 
 			<div id="buttonline">
				<!-- input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>Recordarme-->
				<input type='submit' id="loginbutton" class="width_4" style="margin: 10px auto 0 auto;" value='${message(code: "springSecurity.login.button")}'/>
			</div>
		 	<br/>
            <hr/>
            <br/>
            <span style="display: block;text-align: center;">Todavía no estas registrado?<br/>Hacé <strong><a href="#" class="passforgot" id="btnOpenRegister" style="padding-right:6px!important">click aqui</a></strong>para unirte!</span>
		</form>
	</div>
	
	<div id="dialogRegister" title="Unite a Mi Fixture OnLine" class="form">
		<div class="error" id="errorMessageRegister">
            <h3>
                <span id="spanErrorMessageRegister"></span>
            </h3>
            <a class="hide_btn" href="#">&nbsp;</a>
        </div>
        
        <span class="errorMessageText" id="spanInputErrors"></span>
        
		<div class="form_row">
			<label>Nombre</label>
			<input type="text" placeholder="Nombre" id="txtName" name="txtName" value="" style="width: 290px;" class="input">
		</div>
		
		<div class="form_row">
			<label>Apellido</label>
			<input type="text" placeholder="Apellido" id="txtLastName" name="txtLastName" value="" style="width: 290px;" class="input">
		</div>

		<div class="form_row">
			<label>E-mail</label>
			<input type="text" placeholder="E-mail" id="txtEmail" name="txtEmail" value="" style="width: 290px;" class="input">
		</div>
		
		<div class="form_row">
			<label>Nombre de Usuario</label>
			<input type="text" placeholder="Nombre de Usuario" id="txtUsername" name="txtUsername" value="" style="width: 290px;" class="input">
		</div>
		
		<div class="form_row">
			<label>Contraseña</label>
			<input type="password" placeholder="Contraseña" id="txtPassword" name="txtPassword" value="" style="width: 290px;" class="input">
		</div>
		
		<div class="form_row">
			<label>Confirmar Contraseña</label>
			<input type="password" placeholder="Confirmar Contraseña" id="txtPasswordConfirm" name="txtPasswordConfirm" value="" style="width: 290px;" class="input">
		</div>
		
		<div class="form_row">
           <img src="${resource(dir: 'images', file: 'loading.gif')}" class="imgLoading" alt="Cargando..."/>
        </div>
    </div><!-- END OF dialogRegister-->
</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
