package entidades;
import java.sql.Date;


public class tbl_medidor {
	
	private int idMedidor;
	private String serial;
	private int estado;
	private int idUnidadesDeMedida;
	private Date fecha_creacion;
	private Date fecha_modificacion;
	private String usuario_creacion;
	private String usuario_modificacion;
	private String observaciones;
	private String activo;
	public int getIdMedidor() {
		return idMedidor;
	}
	public void setIdMedidor(int idMedidor) {
		this.idMedidor = idMedidor;
	}
	public String getSerial() {
		return serial;
	}
	public void setSerial(String serial) {
		this.serial = serial;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	public int getIdUnidadesDeMedida() {
		return idUnidadesDeMedida;
	}
	public void setIdUnidadesDeMedida(int idUnidadesDeMedida) {
		this.idUnidadesDeMedida = idUnidadesDeMedida;
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
	

}
