<%@page import="datos.Dt_categoriacliente"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Inicio</a></li>
			<li><a href="#">Cliente</a></li>
			<li><a href="#">Categoria Cliente</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-content">
				<h4 class="page-header">Categoria Cliente</h4>
				<form class="form-horizontal" role="form">
				
				<div class="form-group">
						<label class="col-sm-2 control-label">Categoria:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Nombre de la categoria">
						</div>
						<label class="col-sm-2 control-label">Tarifa Fija:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Tarifa Fija">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">Descripcion:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Descripcion">
						</div>
						<label class="col-sm-2 control-label">Rango:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Rango">
						</div>
					</div>					
					<div class="clearfix"></div>
					<div class="form-group">
						<div class=" col-sm-offset-2 col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Nuevo</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Guardar</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Modificar</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Eliminar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-folder"></i>
					<span>Categoria Cliente</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding">
				<table class="table table-bordered table-striped table-hover table-heading table-datatable" id="datatable-3">
					<thead>
						<tr>
							<th>idCategoriaCliente</th>
							<th>Nombre</th>
							<th>Tarifa Fija</th>
							<th>Descripcion</th>
							<th>idUnidadesDeMedida</th>
							<th>Rango</th>
							<th>Tarifa Exceso</th>
						</tr>
					</thead>
					<tbody>
						<%
					
					Dt_categoriacliente dt_categoriacliente = new Dt_categoriacliente();
					dt_categoriacliente.cargarDatos();
					do {
						
					%>	
					
					
					<tr>
					 <td> <%=dt_categoriacliente.getidCategoriaCliente()%></td>
					 <td> <%=dt_categoriacliente.getnombre()%></td>
					<td> <%=dt_categoriacliente.gettarifaFija() %></td>
					<td> <%=dt_categoriacliente.getdescripcion()%></td>
					<td> <%=dt_categoriacliente.getidUnidadesDeMedida() %>
					<td> <%=dt_categoriacliente.getrango() %></td>
					<td> <%=dt_categoriacliente.gettarifaExceso() %></td>
					
					</tr>
					<%	
					} while(dt_categoriacliente.rs.next());
					
					
					%>
					</tbody>
					<tfoot>
						<tr>
							<th>idCategoriaCliente</th>
							<th>Nombre</th>
							<th>Tarifa Fija</th>
							<th>Descripcion</th>
							<th>idUnidadesDeMedida</th>
							<th>Rango</th>
							<th>Tarifa Exceso</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
// Run Select2 plugin on elements
function DemoSelect2(){
	$('#s2_with_tag').select2({placeholder: "Select OS"});
	$('#s2_country').select2();
	
}
</script>

<script type="text/javascript">
// Run Datables plugin and create 3 variants of settings
function AllTables(){
	TestTable1();
	TestTable2();
	TestTable3();
	LoadSelect2Script(MakeSelect2);
}
function MakeSelect2(){
	$('select').select2();
	$('.dataTables_filter').each(function(){
		$(this).find('label input[type=text]').attr('placeholder', 'Buscar');
	});
}
$(document).ready(function() {
	// Load Datatables and run plugin on tables 
	LoadDataTablesScripts(AllTables);
	// Add Drag-n-Drop feature
	WinMove();
});
</script>
