package entidades;

import java.sql.Date;

public class v_contrato {

	
	private int idContrato;
	private String direccion;
	private int estado;
	private String cliente;
	private String barrio;
	private String categoriacliente;
	private int numContrato;
	private String serialMedidor;
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
	public String getCliente() {
		return cliente;
	}
	public void setCliente(String cliente) {
		this.cliente = cliente;
	}
	public String getBarrio() {
		return barrio;
	}
	public void setBarrio(String barrio) {
		this.barrio = barrio;
	}
	public String getCategoriacliente() {
		return categoriacliente;
	}
	public void setCategoriacliente(String categoriacliente) {
		this.categoriacliente = categoriacliente;
	}
	public int getNumContrato() {
		return numContrato;
	}
	public void setNumContrato(int numContrato) {
		this.numContrato = numContrato;
	}
	public String getSerialMedidor() {
		return serialMedidor;
	}
	public void setSerialMedidor(String serialMedidor) {
		this.serialMedidor = serialMedidor;
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
	
	