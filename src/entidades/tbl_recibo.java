package entidades;
import java.sql.Date;

public class tbl_recibo {
 
	private int idRecibo;
	private String activo;
	private Date fechaRecibido;
	private int numeroRecibo;
	private int idEmpresa;
	private int idContrao;
	private float total;
	private float subTotal;
	private Date fecha_creacion;
	private Date fecha_anulacion;
	private String usuario_creacion;
	private String usuario_anulacion;
	private String observaciones;
	private int estado;
	public int getIdRecibo() {
		return idRecibo;
	}
	public void setIdRecibo(int idRecibo) {
		this.idRecibo = idRecibo;
	}
	public String getActivo() {
		return activo;
	}
	public void setActivo(String activo) {
		this.activo = activo;
	}
	public Date getfechaRecibido() {
		return fechaRecibido;
	}
	public void setfechaRecibido(Date fechaRecibido) {
		this.fechaRecibido = fechaRecibido;
	}
	public int getNumeroRecibo() {
		return numeroRecibo;
	}
	public void setNumeroRecibo(int numeroRecibo) {
		this.numeroRecibo = numeroRecibo;
	}
	public int getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public int getIdContrao() {
		return idContrao;
	}
	public void setIdContrao(int idContrao) {
		this.idContrao = idContrao;
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
	public String getUsuario_anulacion() {
		return usuario_anulacion;
	}
	public void setUsuario_anulacion(String usuario_anulacion) {
		this.usuario_anulacion = usuario_anulacion;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	
	
	
}
