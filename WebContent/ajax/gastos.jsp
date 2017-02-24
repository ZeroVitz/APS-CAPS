<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Inicio</a></li>
			<li><a href="#">Empresa</a></li>
			<li><a href="#">Gastos</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-content">
				<h4 class="page-header">Gastos</h4>
				<form class="form-horizontal" role="form">
					<label class="col-sm-2 control-label">Concepto:</label>
						<div class="form-group">
							<div class="col-sm-3">
								<input type="text" class="form-control" placeholder="Concepto" >
								</div>
									
									
									<label class="col-sm-2 control-label">Factura:</label>			       
		 								<div class="col-sm-3">
										<select class="populate placeholder" name="country" id="s2_country">
										<option value="">-- Seleccione una Factura --</option>
															<option value="fr">0001</option>
															<option value="us">0002</option>
																</select>
															</div>
														
								
															</div>
					<label class="col-sm-2 control-label">Total:</label>
					<div class="form-group">
					
						
						<div class="col-sm-3">
							<input type="text" class="form-control" placeholder="Total">
						</div>
						<label class="col-sm-2 control-label">Selecione un recibo:</label>			       
		 								<div class="col-sm-3">
										<select class="populate placeholder" name="country" id="s3_country">
										<option value="">-- Seleccione un recibo --</option>
															<option value="fr">0001</option>
															<option value="us">0002</option>
																</select>
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
					<span>Detalle de Gastos</span>
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
							<th>Total</th>
							<th>Concepto</th>
							<th>Numero de Factura</th>
							<th>Numero de recibo</th>
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2500</td>
							<td>Compra de equipo de perforacion</td>
							<td>0001</td>
							<td>0001</td>
						</tr>
						<tr>
							<td>15000</td>
							<td>Bomba de agua nueva</td>
							<td>0002</td>
							<td>0002</td>
						</tr>
						<tr>
							<td>30000</td>
							<td>Reparacion de oficina</td>
							<td>0003</td>
							<td>0003</td>
						</tr>
						<tr>
							<td>24000</td>
							<td>Intalacion de nuevo tanque de agua</td>
							<td>0004</td>
							<td>0004</td>
						</tr>
					
						<tr>
							<td>150</td>
							<td>Tuberias Nuevas</td>
							<td>0005</td>
							<td>0005</td>
							
					
					</tbody>
					<tfoot>
						<tr>
							<th>Total</th>
							<th>Concepto</th>
							<th>Numero de Factura</th>
							<th>Numero de recibo</th>
							
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
