package datos;
import java.sql.*;

import datos.Conexion;
public class Dt_factura {

	public ResultSet rs; //ResultSet Global
	
	public boolean cargarDatos()
	{
		boolean llenado = false;
		String sql = ("SELECT * From sicap1.factura;");
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
			System.out.println("Error en DT_factura: "+e.getMessage());
		}
		return llenado;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	public int getIdFactura() throws SQLException{
		
		return rs.getInt("idFactura");
		
		
	}
	
	public String getActivo() throws SQLException{
		
		return rs.getString("activo");
	}
	
	public Date getFechaFactura() throws SQLException{
		
		return rs.getDate("fechaFactura");
	}
	
	public int getNumeroFactura() throws SQLException{
		
		return rs.getInt("numFactura");
		
		
	}
	
	public int getIdEmpresa() throws SQLException{
		
		return rs.getInt("idEmpresa");
		
		
	}
	
	public int getIdContrato() throws SQLException{
		
		return rs.getInt("idContrato");
		
		
	}
	
	public float getTotal() throws SQLException{
		
		return rs.getFloat("total");
		
		
	}
	
	public float getSubTotal() throws SQLException{
		
		return rs.getFloat("subTotal");
		
		
	}
	
	public Date fecha_creacion() throws SQLException{
		
		return rs.getDate("fecha_creacion");
	}
	
	public Date getFecha_anulacion() throws SQLException{
		
		return rs.getDate("fecha_anulacion");
	}
	
	public String getUsuario_creacion() throws SQLException{
		
		return rs.getString("usuario_creacion");
		
	}
	
	public String getUsuario_anulacion() throws SQLException{
		
		return rs.getString("usuario_anulacion");
		
	}
	
	public String observaciones() throws SQLException{
		
		return rs.getString("observaciones");
		
	}
	
public int getEstado() throws SQLException{
		
		return rs.getInt("estado");
		
		
	}
	
}
