package entidades;

public class tbl_usuario {
	
	private int idUsuario;
	private String login;
	private int IdRoles;
	private String pwd;
	
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public int getIdRoles() {
		return IdRoles;
	}
	public void setIdRoles(int idRoles) {
		IdRoles = idRoles;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
