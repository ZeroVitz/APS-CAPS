package entidades;

public class tbl_categoriacliente {
	
	private int idCategoriaCliente;
	private String nombre;
	private float tarifaFija;
	private String descripcion;
	private int idUnidadesDeMedida;
	private int rango;
	private int tarifaExceso;
	
	public int getTarifaExceso() {
		return tarifaExceso;
	}
	public void setTarifaExceso(int tarifaExceso) {
		this.tarifaExceso = tarifaExceso;
	}
	public int getIdCategoriaCliente()
	
	{
		return idCategoriaCliente;
	}
	
	public String getNombre() {
		return nombre;
	}
	public float getTarifaFija() {
		return tarifaFija;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public int getIdUnidadesDeMedida() {
		return idUnidadesDeMedida;
	}
	public int getRango() {
		return rango;
	}
}
