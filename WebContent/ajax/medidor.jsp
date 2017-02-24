<%@page import="datos.Dt_medidores"%>
<%@page import="entidades.v_medidor"%>
<%@page import="java.util.ArrayList"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Inicio</a></li>
			<li><a href="#">Registros</a></li>
			<li><a href="#">Medidor</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-content">
				<h4 class="page-header">Medidor</h4>
				<form class="form-horizontal" role="form">
				
				<div class="form-group">
						<label class="col-sm-2 control-label">Serial:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Serial del medidor">
						</div>
						<label class="col-sm-2 control-label">Observaciones:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Observaciones">
						</div>
					</div>
					
			
						<div class="form-group">
							<label class="col-sm-2 control-label">Unidad de Medida:</label>
							<div class="col-sm-4">
							
								<select class="populate placeholder" name="country" id="s2_country">
									<option value="">Seleccione una unidad de medida...</option>
									<option value="fr">Galones</option>
									<option value="de">litros</option>
									<option value="it">centrimetros cubicos</option>
								</select>
							</div>
							
							<label class="col-sm-2 control-label">Estado:</label>
							<div class="col-sm-4">
								<select class="populate placeholder" name="country" id="s3_country">
									<option value="">Seleccione el estado...</option>
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
					<span>Registro de medidores</span>
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
							<th>Id medidor</th>
							<th>Serial</th>
							<th>Unidad de medida</th>
							<th>Activo</th>
						</tr>
					</thead>
					<tbody>
							
										<%

								ArrayList<v_medidor> listMedidor = new ArrayList<v_medidor>();
								Dt_medidores datosCont = new Dt_medidores();
												
												listMedidor = datosCont.listaMedidor();
												for(v_medidor cont: listMedidor)
												{
												%>						
												<tr>
												 	<td> <%=cont.getIdMedidor()%></td>
												 	<td> <%=cont.getSerial()%></td>
													<td> <%=cont.getAbreviatura() %></td>
													<td> <%=cont.getActivo()%></td>
													
												</tr>
												<%	
												}
												%>
													

					</tbody>
					<tfoot>
						<tr>
								<th>Id medidor</th>
							<th>Serial</th>
							<th>Unidad de medida</th>
							<th>Activo</th>
							
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
