package entidades;

import java.sql.Date;

public class tbl_contrato {

	
	private int idContrato;
	private String direccion;
	private int estado;
	private int idCliente;
	private int idEmpresa;
	private int idBarrio;
	private int idCategoriaCliente;
	private int numContrato;
	private int idMedidor;
	private Date fechaCorte;
	private Date fecha_creacion;
	private Date fecha_modificacion;
	private Date fecha_anulacion;
	private String usuario_creacion;
	private String usuario_modificacion;
	private String usuario_anulacion;
	public int getIdContrato() {
		return idContrato;
	}
	public void setIdContrato(int idContrato) {
		this.idContrato = idContrato;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public int getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public int getIdBarrio() {
		return idBarrio;
	}
	public void setIdBarrio(int idBarrio) {
		this.idBarrio = idBarrio;
	}
	public int getIdCategoriaCliente() {
		return idCategoriaCliente;
	}
	public void setIdCtegoriaCliente(int idCtegoriaCliente) {
		this.idCategoriaCliente = idCtegoriaCliente;
	}
	public int getNumContrato() {
		return numContrato;
	}
	public void setNumContrato(int numContrato) {
		this.numContrato = numContrato;
	}
	public int getIdMedidor() {
		return idMedidor;
	}
	public void setIdMedidor(int idMedidor) {
		this.idMedidor = idMedidor;
	}
	public Date getFechaCorte() {
		return fechaCorte;
	}
	public void setFechaCorte(Date fechaCorte) {
		this.fechaCorte = fechaCorte;
	}
	public Date getFecha_creacion() {
		return fecha_creacion;
	}
	public void setFecha_creacion(Date fecha_creacion) {
		this.fecha_creacion = fecha_creacion;
	}
	public Date getFecha_modificacion() {
		return fecha_modificacion;
	}
	public void setFecha_modificacion(Date fecha_modificacion) {
		this.fecha_modificacion = fecha_modificacion;
	}
	public Date getFecha_anulacion() {
		return fecha_anulacion;
	}
	public void setFecha_anulacion(Date fecha_anulacion) {
		this.fecha_anulacion = fecha_anulacion;
	}
	public String getUsuario_creacion() {
		return usuario_creacion;
	}
	public void setUsuario_creacion(String usuario_creacion) {
		this.usuario_creacion = usuario_creacion;
	}
	public String getUsuario_modificacion() {
		return usuario_modificacion;
	}
	public void setUsuario_modificacion(String usuario_modificacion) {
		this.usuario_modificacion = usuario_modificacion;
	}
	public String getUsuario_anulacion() {
		return usuario_anulacion;
	}
	public void setUsuario_anulacion(String usuario_anulacion) {
		this.usuario_anulacion = usuario_anulacion;
	}
	
	
}
