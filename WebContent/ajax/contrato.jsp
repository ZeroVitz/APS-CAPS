<%@page import="entidades.tbl_cliente"%>
<%@page import="entidades.tbl_contrato"%>
<%@page import="java.util.ArrayList"%>
<%@page import="datos.Dt_Contrato"%>
<%@page import="datos.Dt_cliente"%>
<%@page import="entidades.v_contrato"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Inicio</a></li>
			<li><a href="#">Clientes</a></li>
			<li><a href="#">Contrato</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-content">
				<h4 class="page-header">Contrato</h4>
				<form class="form-horizontal" role="form">
						<div class="form-group">
						<label class="col-sm-2 control-label">Direccion:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Direccion">
						</div>
							<label class="col-sm-2 control-label">Cliente:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_cliente">
									<option value="">Seleccione un cliente...</option>
									<%
					Dt_cliente dtCliente = new Dt_cliente();
					ArrayList<tbl_cliente> listaCliente = new ArrayList<tbl_cliente>();
					listaCliente = dtCliente.listarCliente();
					for(tbl_cliente cliente: listaCliente)
					{
				%>
				<option value="<%=cliente.getIdCliente()%>"><%=cliente.getNombre()+" "+cliente.getApellido()%></option>
				<%
					}	
				%>
								</select>
							</div>
					     </div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Barrio:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_barrio">
									<option value="">Seleccione un barrio...</option>
									<option value="fr">Sector1</option>
									<option value="de">Xolotlan</option>
								</select>
							</div>
							
						<label class="col-sm-2 control-label">Categoria Cliente:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_catcliente">
									<option value="">Seleccione un categoria cliente...</option>
									<option value="fr">Tercera edad</option>
									<option value="de">Embarazada</option>
								</select>
							</div>		
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">Numero de contrato:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Numero de contrato">
						</div>
						
						<label class="col-sm-2 control-label">Medidor:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_medidor">
									<option value="">Seleccione un medidor...</option>
									<option value="fr">001</option>
									<option value="de">002</option>
									<option value="it">003</option>
								</select>
							</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">Fecha de corte</label>
						<div class="col-sm-4">
							<input type="text" id="input_date" class="form-control" placeholder="Fecha de corte">
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
		<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-linux"></i>
					<span>Contratos</span>
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
							<th>Direccion</th>
							<th>Cliente</th>
							<th>Barrio</th>
							<th>CategoriaCliente</th>
							<th>Numero de Contrato</th>
							<th>Serial Medidor</th>
						</tr>
					</thead>
					<tbody>
					<%

					ArrayList<v_contrato> listContrato = new ArrayList<v_contrato>();
					Dt_Contrato datosCont = new Dt_Contrato();
					
					listContrato = datosCont.listaContrato();
					for(v_contrato cont: listContrato)
					{
					%>						
					<tr>
					 	<td> <%=cont.getIdContrato()%></td>
					 	<td> <%=cont.getDireccion()%></td>
						<td> <%=cont.getCliente() %></td>
						<td> <%=cont.getBarrio() %></td>
						<td> <%=cont.getCategoriacliente() %></td>
						<td> <%=cont.getNumContrato() %></td>
						<td> <%=cont.getSerialMedidor() %></td>
					</tr>
					<%	
					}
					%>
						
					</tbody>
					<tfoot>
						<tr>
							<th>Id</th>
							<th>Direccion</th>
							<th>Cliente</th>
							<th>Barrio</th>
							<th>CategoriaCliente</th>
							<th>Numero de Contrato</th>
							<th>Serial Medidor</th>
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
	$('#s2_empresa').select2();
	$('#s2_catcliente').select2();
	$('#s2_medidor').select2();
	$('#s2_cliente').select2();
	$('#s2_barrio').select2();
}

$(document).ready(function() {
	LoadSelect2Script(DemoSelect2);
});
</script>

<script type="text/javascript">


function guardarFactura()
	
	{
		
		var numFac2 = $("#numFactura").val();
		var activo2 = $("#activo").val();
		var total2 = $("#total").val();
		var subtotal2 = $("#subtotal").val();
		var observaciones2 = $("#observaciones").val();
		var contrato2= $("#contrato").val();
		
		
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
