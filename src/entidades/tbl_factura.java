package entidades;

import java.sql.Date;

public class tbl_factura {
	
	private int idFactura;
	private int numFactura;
	private Date fechaFactura;
	private float total;
	private float subTotal;
	private String observaciones;
	private String activo;
	private int idEmpresa;
	private int idContrato;
	private Date fecha_creacion;
	private Date fecha_anulacion;
	private String usuario_creacion;
	private String usuaruio_anulacion;
	private int estado;
	
	
	public int getIdFactura() {
		return idFactura;
	}
	public void setId_Factura(int idFactura) {
		this.idFactura = idFactura;
	}
	public int getNumFactura() {
		return numFactura;
	}
	public void setNumFactura(int numFactura) {
		this.numFactura = numFactura;
	}
	public Date getFechaFactura() {
		return fechaFactura;
	}
	public void setFechaFactura(Date fechaFactura) {
		this.fechaFactura = fechaFactura;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public float getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(float subTotal) {
		this.subTotal = subTotal;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	public String getActivo() {
		return activo;
	}
	public void setActivo(String activo) {
		this.activo = activo;
	}
	public int getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public int getIdContrato() {
		return idContrato;
	}
	public void setIdContrato(int idContrato) {
		this.idContrato = idContrato;
	}
	public Date getFecha_creacion() {
		return fecha_creacion;
	}
	public void setFecha_creacion(Date fecha_creacion) {
		this.fecha_creacion = fecha_creacion;
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
	public String getUsuaruio_anulacion() {
		return usuaruio_anulacion;
	}
	public void setUsuaruio_anulacion(String usuaruio_anulacion) {
		this.usuaruio_anulacion = usuaruio_anulacion;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	

}

