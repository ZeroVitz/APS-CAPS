<%@page import="entidades.tbl_factura"%>
<%@page import="java.util.ArrayList"%>
<%@page import="datos.DtFactura"%>
<%@page import="entidades.v_factura_contrato"%>

<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Inicio</a></li>
			<li><a href="#">Facturacion</a></li>
			<li><a href="#">Factura</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-content">
				<h4 class="page-header">Factura</h4>
				<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label">Cliente:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_country">
									<option value="">Seleccione un cliente...</option>
									<option value="1">Darvin Mendoza</option>
									<option value="2">Hansel Mendoza</option>
								</select>
							</div>
							
							<label class="col-sm-2 control-label">Contrato:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="contrato">
									<option value="">Seleccione un contrato...</option>
									<option value="1">1</option>
									<option value="2">2</option>
								</select>
							</div>
						</div>
							
					<div class="form-group">
					
					<label class="col-sm-2 control-label">Activo:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="activo">
									<option value="">Seleccione estado del recibo...</option>
									<option value="Activo">Activo</option>
									<option value="Inactivo">Inactivo</option>
								</select>
							</div>
					
						<label class="col-sm-2 control-label">Numero de factura:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Numero de factura" id="numFactura">
						</div>
					</div>
					<div class="form-group">
					
					<label class="col-sm-2 control-label">Subtotal:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Subtotal" id="subtotal">
						</div>
						
						<label class="col-sm-2 control-label">Total:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Total" id="total">
						</div>
						
					</div>
					
					<div class="form-group">
					
					<label class="col-sm-2 control-label">Observacion:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Observacion" id="observaciones">
						</div>
						
						<label class="col-sm-2 control-label">Fecha</label>
						<div class="col-sm-2">
							<input type="text" id="input_date" class="form-control" placeholder="fecha">
							<span class="fa fa-calendar txt-danger form-control-feedback"></span>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="form-group">
						<div class=" col-sm-offset-1 col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Nuevo</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left" onclick="guardarFactura();">Guardar</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Modificar</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Eliminar</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">Generar factura masiva</button>
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
					<span>Facturas</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding">
				<table class="table table-bordered table-striped table-hover table-heading table-datatable" id="datatable-3">
					<thead>
						<tr>
							<th>ID</th>
							<th>Numero de factura</th>
							<th>Nombre</th>
							<th>Apellido</th>
							<th>Contrato</th>
							<th>Subtotal</th>
							<th>Total</th>
							<th>Fecha de factura</th>
							<th>Observaciones</th>
							<th>Activo</th>
						</tr>
					</thead>
					<tbody>
				<%
			    	ArrayList<v_factura_contrato> listFactura = new ArrayList<v_factura_contrato>();
			    	DtFactura datosFac  = new DtFactura();
			    	
			    	listFactura = datosFac.listaFactura();
			    	for(v_factura_contrato fac : listFactura)
			    	{
			    %>
			        <tr>
			            <td><%=fac.getIdFactura()%></td>
			            <td><%=fac.getNumFactura()%></td>
			            <td><%=fac.getNombre()%></td>
			            <td><%=fac.getApellido()%></td>
			            <td><%=fac.getNumContrato() %></td>
			            <td><%=fac.getSubTotal()%></td>
			            <td><%=fac.getTotal()%></td>
			            <td><%=fac.getFechaFactura()%></td>
			            <td><%=fac.getObservaciones()%></td>
			            <td><%=fac.getActivo()%></td>
			        </tr>
			      <%
			      	} 
			      %>
					
					</tbody>
					<tfoot>
						<tr>
							<th>ID</th>
							<th>Numero de factura</th>
							<th>Nombre</th>
							<th>Apellido</th>
							<th>Contrato</th>
							<th>Subtotal</th>
							<th>Total</th>
							<th>Fecha de factura</th>
							<th>Observaciones</th>
							<th>Activo</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">


function guardarFactura()
	
	{
		
		
		var numFac2 ="";
		var activo2 = "";
		var total2 = "";
		var subtotal2 ="";
		var observaciones2 ="";
		var contrato2="";
		
		numFac2 = $("#numFactura").val();
		activo2 = $("#activo").val();
		total2 = $("#total").val();
		subtotal2 = $("#subtotal").val();
		observaciones2 = $("#observaciones").val();
		contrato2= $("#contrato").val();
		
		
		$.ajax
		({
			url: "SI_tabla_factura",
			type: "post",
			datatype: 'html',
			data: {'numFac1' :numFac2, 'activo1' :activo2, 'total1' :total2, 'subtotal1' :subtotal2 , 'obsv1' :observaciones2 },
			success: function(data)
			{
				$('#datatable-3').html(data);
				$('#datatable-3').dataTable().fnDestroy();
				$('#datatable-3').DataTable();
				
			}
			
			
		});
		
	}
	
</script> 


<script type="text/javascript">
// Run Select2 plugin on elements
function DemoSelect2(){
	$('#s2_with_tag').select2({placeholder: "Select OS"});
	$('#s2_country').select2();
	$('#contrato').select2();
	$('#activo').select2();
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

//Run Datables plugin and create 3 variants of settings
function AllTables(){
TestTable1();
TestTable2();
TestTable3();
LoadSelect2Script(MakeSelect2);
}
function MakeSelect2(){
$('select').select2();
$('.dataTables_filter').each(function(){
	$(this).find('label input[type=text]').attr('placeholder', 'Search');
});
}
$(document).ready(function() {
// Load Datatables and run plugin on tables 
LoadDataTablesScripts(AllTables);
// Add Drag-n-Drop feature
WinMove();
})

</script> 



