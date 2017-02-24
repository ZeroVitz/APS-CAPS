<%@page import="datos.Dt_cliente, entidades.tbl_cliente, java.util.*"%>
<div class="row">
	<div id="breadcruzmb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Inicio</a></li>
			<li><a href="#">Clientes</a></li>
			<li><a href="#">Cliente</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-content">
				<h4 class="page-header">Cliente</h4>
					<form class="form-horizontal" role="form">
						<div class="form-group">
						<label class="col-sm-2 control-label">Nombre:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Nombre" id="Nombre" name="Nombre" >
						</div>
						<label class="col-sm-2 control-label">Apellido:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Apellido">
						</div>		
						</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Cedula:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Cedula">
						</div>
						<label class="col-sm-2 control-label">Telefono:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Telefono">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Sexo:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_sexo">
									<option value="">Seleccione el sexo...</option>
									<option value="fr">Masculino</option>
									<option value="de">Femenino</option>
								</select>
							</div>
						<label class="col-sm-2 control-label">Celular:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Total">
						</div>
					</div>
					
						<div class="form-group">
						<label class="col-sm-2 control-label">Edad:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Edad">
						</div>
							<label class="col-sm-2 control-label">Activo:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s2_activo">
									<option value="">Seleccione estado del recibo...</option>
									<option value="fr">Activo</option>
									<option value="de">Inactivo</option>
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
					<span>Lista total de clientes</span>
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
							<th>Nombre</th>
							<th>Apellido</th>
							<th>Edad</th>
							<th>Cedula</th>
							<th>Telefono</th>
							<th>Celular</th>
							<th>Activo</th>
						</tr>
					</thead>
					<tbody>
				 <%
// 			    	DT_Actor dtact = new DT_Actor();
			    	ArrayList<tbl_cliente> listaCliente = new ArrayList<tbl_cliente>();
			    	Dt_cliente dtCliente = new Dt_cliente();
			    	listaCliente = dtCliente.listarCliente();
			    	for(tbl_cliente tblCliente : listaCliente)
			    	{
			    %>
			        <tr>
			            <td><%=tblCliente.getIdCliente()%></td>
			            <td><%=tblCliente.getNombre()%></td>
			            <td><%=tblCliente.getApellido()%></td>
			            <td><%=tblCliente.getEdad()%></td>
			            <td><%=tblCliente.getCedula()%></td>
			            <td><%=tblCliente.getTelefono()%></td>
			            <td><%=tblCliente.getCelular()%></td>
			            <td><%=tblCliente.getActivo()%></td>
			            
			            

			        </tr>
			      <%
			      	} 
			      %>
						
					</tbody>
					<tfoot>
						<tr>
							<th>Id</th>
							<th>Nombre</th>
							<th>Apellido</th>
							<th>Edad</th>
							<th>Cedula</th>
							<th>Telefono</th>
							<th>Celular</th>
							<th>Activo</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
function guardarCliente()
	
	{
		
		var nombre2 = $("#Nombre").val();
		var apellido2 = $("#Apellido").val();
		var cedula2 = $("#Cedula").val();
		var telefono2 = $("#Telefono").val();
		var sexo2 = $("#Sexo").val();
		var celular2= $("#Celular").val();
		var edad2= $("#Edad").val();
		var activo2= $("#Activo").val();
		
		$.ajax
		({
			url: "SI_tabla_cliente",
			type: "post",
			datatype: 'html',
			data: {'nombre1' :nombre2, 'apellido1' :apellido2, 'cedula1' :cedula2, 'telefono1' :telefono2 , 'sexo1' :sexo2, 'celular1':celular2, 'edad1':edad2, 'activo2':activo1 },
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
	$('#s2_sexo').select2();
	$('#s2_activo').select2();
};

$(document).ready(function() {
	// Create Wysiwig editor for textare
	$('.form-control').tooltip();
	LoadSelect2Script(DemoSelect2);
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
