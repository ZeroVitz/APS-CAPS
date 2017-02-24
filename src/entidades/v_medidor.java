package entidades;

import java.sql.Date;

public class v_medidor {
	
	private int idMedidor;
	private String serial;
	private String abreviatura;
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

	public String getAbreviatura() {
		return abreviatura;
	}
	public void setAbreviatura(String abreviatura) {
		this.abreviatura = abreviatura;
	}
	public String getActivo() {
		return activo;
	}
	public void setActivo(String activo) {
		this.activo = activo;
	}
}
	