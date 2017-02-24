package datos;
import java.sql.*;
import java.util.ArrayList;
import entidades.tbl_categoriacliente;

public class Dt_categoriacliente
{
	public ResultSet rs; //ResultSet Global
		
	public boolean cargarDatos()
	{
		boolean llenado = false;
		String sql = ("SELECT * From sicap1.categoriacliente;");
		try
		{
			Connection cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next())
			{
				llenado = true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("Error en DT_Recibo: "+e.getMessage());
		}
		return llenado;
	}	
	
	
	public int getidCategoriaCliente() throws SQLException{
		
		return rs.getInt("idCategoriaCliente");
	}
	
	public String getnombre() throws SQLException{
		
		return rs.getString("nombre");
	}
	
	public float gettarifaFija () throws SQLException{
		
		return rs.getFloat("tarifaFija");
	}
	
	public String getdescripcion() throws SQLException{
		
		return rs.getString("descripcion");
	}
	
	public int getidUnidadesDeMedida() throws SQLException{
		
		return rs.getInt("idUnidadesDeMedida");
	}
	
	public int getrango() throws SQLException{
		
		return rs.getInt("Rango");	
	}
	
	public int gettarifaExceso() throws SQLException{
		
		return rs.getInt("tarifaExceso");
	}
	
}