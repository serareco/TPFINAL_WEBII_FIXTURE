<!DOCTYPE html>
<html lang="es">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/> - Mi Fixture OnLine</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'grid.css')}" type="text/css" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css" />
		<link rel="stylesheet" href="${resource(dir: 'js/libraries', file: 'plugins.css')}" type="text/css" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'website-frontend.css')}" type="text/css" />
		
		<script>
			var baseUrl= "<g:resource dir='' file='' />" + "/";
		</script>
		
		<script src="${resource(dir: 'js/libraries', file: 'jquery-1.7.1.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/ui', file: 'jquery-ui-1.8.17.custom.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries', file: 'jquery.corner.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries', file: 'jquery.validate.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries', file: 'css_browser_selector.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries', file: 'jquery.jqplot.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/plugins', file: 'jqplot.highlighter.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/plugins', file: 'jqplot.cursor.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/plugins', file: 'jqplot.dateAxisRenderer.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/plugins', file: 'jqplot.pieRenderer.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/editor', file: 'jquery.cleditor.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/calendar', file: 'fullcalendar.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries', file: 'jquery.multiselect.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/validation', file: 'jquery.validationEngine.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/validation/languages', file: 'jquery.validationEngine-en.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries', file: 'jquery.dataTables.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/fancybox', file: 'jquery.fancybox-1.3.4.pack.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries/fancybox', file: 'jquery.easing-1.4.pack.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js/libraries', file: 'js.js')}" type="text/javascript"></script>
		
		<script src="${resource(dir: 'js', file: 'application.js')}" type="text/javascript"></script>
		
		<g:layoutHead/>
		<r:layoutResources />
		
	</head>
	<body>
		<div id="main" class="container_12"><!-- Body Wrapper Begin -->
			<div id="header"><!-- Header Begin -->
				<div class="grid_3"><a href="#" id="logo_small" class="float_left">Mi Fixture OnLine</a></div>
				<div class="grid_4 push_5">
					<div id="search"><!-- Header Search Begin -->
						<h1>Mi Fixture OnLine</h1>
					</div><!-- Header Search End -->
				</div>
			</div><!-- Header End -->
			<div class="clear"></div>
			<div id="userbar"><!-- Userbar Begin -->
				<div id="profile"><!-- Profile Begin -->
					<div id="avatar">
						<img src="${resource(dir: 'images', file: 'test_avatar.png')}" alt="Avatar" height="44" />
						<a href="#" id="unreadcount">12</a>
					</div>
					<div id="profileinfo">
						<h3 id="username">Username</h3>
						<span id="subline"></span>
						<div class="clear"></div>
						
						<a href="#" class="profilebutton">Mi Cuenta</a>
					</div>
				</div><!-- Userbar End -->
				<ul id="navigation"><!-- Main Navigation Begin -->
					<li class="" >
						<g:link controller="site" action="welcome" class="icon_home">Home</g:link>
					</li>

					<sec:ifAllGranted roles="ROLE_USER">			
					<li class="" >
						<g:link controller="site" action="welcome" class="icon_paste">Fixture</g:link>
					</li>
					</sec:ifAllGranted>
					

					<li class="" >
						<a href="#" class="icon_pen">Administración</a>
						<ul>
						<sec:ifAllGranted roles="ROLE_USER">
							<li>
								<g:link controller="team" action="list">Equipos</g:link>
							</li>
							
							<li>
								<g:link controller="league" action="list">Ligas</g:link>
							</li>
						</sec:ifAllGranted>
						<sec:ifAllGranted roles="ROLE_ADMIN">
							<li>
								<g:link controller="user" action="list">Usuarios</g:link>
							</li>
						</sec:ifAllGranted>			
						</ul>
					</li>

					<sec:ifAllGranted roles="ROLE_ADMIN">					
					<li class="" >
						<a href="#" class="icon_stats">Estadísticas</a>
						<ul>
							<li>
								<g:link controller="site" action="welcome">Usuarios Registrados</g:link>
							</li>
							<li>
								<g:link controller="site" action="welcome">Equipos</g:link>
							</li>
							<li>
								<g:link controller="site" action="welcome">Torneos</g:link>
							</li>			
						</ul>
					</li>
					</sec:ifAllGranted>
					
					<li class="" >
						<g:link controller="logout" action="index" class="icon_logout">Logout</g:link>
					</li>
				</ul><!-- Main Navigation End -->
			</div><!-- Userbar End -->
			<div class="clear"></div>

			<g:layoutBody/>
			
		</div><!-- Body Wrapper End -->
	</body>
</html>

		
