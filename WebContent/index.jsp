<%@ page language="java" import="datos.*" import="java.util.*" import="entidades.*" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="es">
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 " />
		<title>CAPS</title>
		<meta charset="UTF-8">
		<meta name="description" content="description">
		<meta name="author" content="DevOOPS">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="plugins/bootstrap/bootstrap.css" rel="stylesheet">
		<link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
		<link href="plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
		<link href="plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
		<link href="plugins/xcharts/xcharts.min.css" rel="stylesheet">
		<link href="plugins/select2/select2.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="datos.*" rel="import" >
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
<body>
<!--Start Header-->
<div id="screensaver">
	<canvas id="canvas"></canvas>
	<i class="fa fa-lock" id="screen_unlock"></i>
</div>

<header class="navbar">
	<div class="container-fluid expanded-panel">
		<div class="row">
			<div id="logo" class="col-xs-12 col-sm-2">
				<a  href="index.jsp">CAPS</a>
			</div>
			<div id="top-panel" class="col-xs-12 col-sm-10">
				<div class="row">
					<div class="col-xs-8 col-sm-4">
						<a href="#" class="show-sidebar">
						  <i class="fa fa-bars"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!--End Header-->
<!--Start Container-->
<div id="main" class="container-fluid">
	<div class="row">
		<div id="sidebar-left" class="col-xs-2 col-sm-2">
			<ul class="nav main-menu">
				<li>
					<a href="ajax/dashboard.html" class="active ajax-link">
						<i class="fa fa-desktop"></i>
						<span class="hidden-xs">Principal</span>
					</a>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-clipboard"></i>
						<span class="hidden-xs">Facturacion</span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="ajax-link" href="ajax/factura.jsp">Factura</a></li>
						<li><a class="ajax-link" href="ajax/recibo.jsp">Recibos</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-users"></i>
						 <span class="hidden-xs">Clientes</span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="ajax-link" href="ajax/cliente.jsp">Clientes</a></li>
						<li><a class="ajax-link" href="ajax/contrato.jsp">Contrato</a></li>
						<li><a class="ajax-link" href="ajax/categoriacliente.jsp">Categoria de clientes</a></li>
						<li><a class="ajax-link" href="ajax/historialCliente.jsp">Historial de cliente</a></li>
					</ul>
				</li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-pencil-square-o"></i>
						<span class="hidden-xs">Registros</span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="ajax-link" href="ajax/unidadesmedida.jsp">Unidades de medida</a></li>
						<li><a class="ajax-link" href="ajax/medidor.jsp">Medidores</a></li>
						<li><a class="ajax-link" href="ajax/barrio.jsp">Barrios</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-suitcase"></i>
						 <span class="hidden-xs">Empresa</span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="ajax-link" href="ajax/gastos.jsp">Gastos de la institución</a></li>
						<li><a class="ajax-link" href="ajax/documento.jsp">Documentos</a></li>
						<li><a class="ajax-link" href="ajax/clausula.jsp">Clausulas</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-lock"></i>
						 <span class="hidden-xs">Seguridad</span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="ajax-link" href="ajax/opciones.jsp">Opciones</a></li>
						<li><a class="ajax-link" href="ajax/rol.jsp">Roles</a></li>
						<li><a class="ajax-link" href="ajax/usuario.jsp">Usuarios</a></li>
						<li><a class="ajax-link" href="ajax/rolopciones.jsp">Asignar opciones a roles</a></li>
						<li><a class="ajax-link" href="ajax/rolusuario.jsp">Asignar roles a usuarios</a></li>
					</ul>
				</li>
				
			</ul>
		</div>
		<!--Start Content-->
		<div id="content" class="col-xs-12 col-sm-10">
			<div id="ajax-content"></div>
		</div>
		<!--End Content-->
	</div>
</div>
<!--End Container-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--<script src="http://code.jquery.com/jquery.js"></script>-->
<script src="plugins/jquery/jquery-2.1.0.min.js"></script>
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<script src="plugins/justified-gallery/jquery.justifiedgallery.min.js"></script>
<script src="plugins/tinymce/tinymce.min.js"></script>
<script src="plugins/tinymce/jquery.tinymce.min.js"></script>
<!-- All functions for this theme + document.ready processing -->
<script src="js/devoops.js"></script>
</body>
</html>
