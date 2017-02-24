<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Inicio</a></li>
			<li><a href="#">Clientes</a></li>
			<li><a href="#">Historial de cliente</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-content">
				<h4 class="page-header">Historial de clientes</h4>
				<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label">Cliente:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_country">
									<option value="">Seleccione un cliente...</option>
									<option value="fr">Mauricio</option>
									<option value="de">Hansel</option>
								</select>
							</div>
								<label class="col-sm-2 control-label">Contrato:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s3_country">
									<option value="">Seleccione un contrato...</option>
									<option value="fr">1</option>
									<option value="de">2</option>
								</select>
							</div>
							</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">Filtrar:</label>	
					<div class="col-sm-8">
						<div class="radio-inline">
							<label>
								<input type="radio" name="radio-inline" checked> Fecha
								<i class="fa fa-circle-o"></i>
							</label>
						</div>
						<div class="radio-inline">
							<label>
								<input type="radio" name="radio-inline"> Mes
								<i class="fa fa-circle-o"></i>
							</label>
						</div>
						<div class="radio-inline">
							<label>
								<input type="radio" name="radio-inline"> Año
								<i class="fa fa-circle-o"></i>
							</label>
						</div>
					</div>
				</div>
							
							<div class="form-group">
							<div class=" col-sm-offset-1 col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Buscar</button>
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
					<span>Most popular Linux distro</span>
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
							<th>Rate</th>
							<th>Distro</th>
							<th>Votes</th>
							<th>Homepage</th>
							<th>Version</th>
							<th>Icon</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>11</td>
							<td>Gentoo</td>
							<td>3.2%</td>
							<td><i class="fa fa-home"></i><a href="http://gentoo.org" target="_blank">http://gentoo.org</a></td>
							<td>20140211</td>
							<td><i class="fa fa-linux"></i></td>
						</tr>
						<tr>
							<td>12</td>
							<td>Other</td>
							<td>2.1%</td>
							<td>-</td>
							<td>none</td>
							<td><i class="fa fa-linux"></i></td>
						</tr>
						<tr>
							<td>13</td>
							<td>Slackware</td>
							<td>2.1%</td>
							<td><i class="fa fa-home"></i><a href="http://slackware.com" target="_blank">http://slackware.com</a></td>
							<td>14.1</td>
							<td><i class="fa fa-linux"></i></td>
						</tr>
						<tr>
							<td>14</td>
							<td>elementary OS</td>
							<td>2%</td>
							<td><i class="fa fa-home"></i><a href="http://elementaryos.org" target="_blank">http://elementaryos.org</a></td>
							<td>20130810</td>
							<td><i class="fa fa-linux"></i></td>
						</tr>
						<tr>
							<td>15</td>
							<td>Xubuntu</td>
							<td>2%</td>
							<td><i class="fa fa-home"></i><a href="http://xubuntu.org" target="_blank">http://xubuntu.org</a></td>
							<td>14.04</td>
							<td><i class="fa fa-linux"></i></td>
						</tr>
						<tr>
							<td>16</td>
							<td>Manjaro</td>
							<td>1.8%</td>
							<td><i class="fa fa-home"></i><a href="http://manjaro.org" target="_blank">http://manjaro.org</a></td>
							<td>0.8.8</td>
							<td><i class="fa fa-linux"></i></td>
						</tr>
						<tr>
							<td>21</td>
							<td>Chakra</td>
							<td>0.6%</td>
							<td><i class="fa fa-home"></i><a href="http://www.chakra-project.org" target="_blank">http://www.chakra-project.org</a></td>
							<td>2014.02</td>
							<td><i class="fa fa-linux"></i></td>
						</tr>
						<tr>
							<td>23</td>
							<td>Puppy</td>
							<td>0.2%</td>
							<td><i class="fa fa-home"></i><a href="http://puppylinux.org" target="_blank">http://puppylinux.org</a></td>
							<td>5.1.1</td>
							<td><i class="fa fa-linux"></i></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<th>Rate</th>
							<th>Distro</th>
							<th>Votes</th>
							<th>Homepage</th>
							<th>Version</th>
							<th>Icon</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>

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