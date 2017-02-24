<%@page import="datos.Dt_recibo"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Inicio</a></li>
			<li><a href="#">Facturacion</a></li>
			<li><a href="#">Recibos</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-content">
				<h4 class="page-header">Recibo</h4>
				<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label">Cliente:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_country">
									<option value="">Seleccione un cliente...</option>
									<option value="fr">Mauricio</option>
									<option value="de">Cruz</option>
									<option value="it">Hansel</option>
								</select>
							</div>
							<label class="col-sm-2 control-label">Activo:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s3_country">
									<option value="">Seleccione estado del recibo...</option>
									<option value="fr">Activo</option>
									<option value="de">Inactivo</option>
								</select>
							</div>
							</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Numero de recibo:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Numero de recibo">
						</div>
						<label class="col-sm-2 control-label">Subtotal:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Subtotal">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Total:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Total">
						</div>
						<label class="col-sm-2 control-label">Observacion:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Observacion">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">Fecha</label>
						<div class="col-sm-2">
							<input type="text" id="input_date" class="form-control" placeholder="Date">
							<span class="fa fa-calendar txt-danger form-control-feedback"></span>
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
					<i class="fa fa-linux"></i>
					<span>Lista total de recibos</span>
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
							<th>Id</th>
							<th>Activo</th>
							<th>Subtotal</th>
							<th>Total</th>
							<th>Numero de recibo</th>
							<th>Fecha de recibo</th>
							<th>Observacion</th>
							<th>Id empresa</th>
						</tr>
					</thead>
					<tbody>
					
					<%
					
					Dt_recibo dt_recibo = new Dt_recibo();
					dt_recibo.cargarDatos();
					do {
						
					%>	
					
					
					<tr>
					 <td> <%=dt_recibo.getIdRecibo()%></td>
					 <td> <%=dt_recibo.getActivo()%></td>
					<td> <%=dt_recibo.getFechaRecibido() %></td>
					<td> <%=dt_recibo.getNumeroRecibo()%></td>
					<td> <%=dt_recibo.getIdEmpresa() %>
					<td> <%=dt_recibo.getIdContrato() %></td>
					<td> <%=dt_recibo.getTotal() %></td>
					<td> <%=dt_recibo.getSubTotal() %>
					
					</tr>
					<%	
					} while(dt_recibo.rs.next());
					
					
					%>
						
					</tbody>
					<tfoot>
						<tr>
							<th>Id</th>
							<th>Activo</th>
							<th>Subtotal</th>
							<th>Total</th>
							<th>Numero de recibo</th>
							<th>Fecha de recibo</th>
							<th>Observacion</th>
							<th>Id empresa</th>
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
	$('#s3_country').select2();
}
// Run timepicker
function DemoTimePicker(){
	$('#input_time').timepicker({setDate: new Date()});
}
$(document).ready(function() {
	// Create Wysiwig editor for textare
	TinyMCEStart('#wysiwig_simple', null);
	TinyMCEStart('#wysiwig_full', 'extreme');
	// Add slider for change test input length
	FormLayoutExampleInputLength($( ".slider-style" ));
	// Initialize datepicker
	$('#input_date').datepicker({setDate: new Date()});
	// Load Timepicker plugin
	LoadTimePickerScript(DemoTimePicker);
	// Add tooltip to form-controls
	$('.form-control').tooltip();
	LoadSelect2Script(DemoSelect2);
	// Load example of form validation
	LoadBootstrapValidatorScript(DemoFormValidator);
	// Add drag-n-drop feature to boxes
	WinMove();
});
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
