package entidades;
import java.sql.Date;

public class tbl_gastos {

	private int idGastos;
	private String concepto;
	private String numFactura;
	private String numRecibo;
	private int total;
	private Date fecha_creacion;
	private Date fecha_modificacion;
	private Date fecha_eliminacion;
    private String usuario_creacion;
    private String usuario_modificacion;
    private String usuario_eliminacion;
    private int mesCorrespondiente;
    
	public int getMesCorrespondiente() {
		return mesCorrespondiente;
	}
	public void setMesCorrespondiente(int mesCorrespondiente) {
		this.mesCorrespondiente = mesCorrespondiente;
	}
	public int getIdGastos() {
		return idGastos;
	}
	public void setIdGastos(int idGastos) {
		this.idGastos = idGastos;
	}
	public String getConcepto() {
		return concepto;
	}
	public void setConcepto(String concepto) {
		this.concepto = concepto;
	}
	public String getNumFactura() {
		return numFactura;
	}
	public void setNumFactura(String numFactura) {
		this.numFactura = numFactura;
	}
	public String getNumRecibo() {
		return numRecibo;
	}
	public void setNumRecibo(String numRecibo) {
		this.numRecibo = numRecibo;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
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
	public Date getFecha_eliminacion() {
		return fecha_eliminacion;
	}
	public void setFecha_eliminacion(Date fecha_eliminacion) {
		this.fecha_eliminacion = fecha_eliminacion;
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
	public String getUsuario_eliminacion() {
		return usuario_eliminacion;
	}
	public void setUsuario_eliminacion(String usuario_eliminacion) {
		this.usuario_eliminacion = usuario_eliminacion;
	}
    
    
}
