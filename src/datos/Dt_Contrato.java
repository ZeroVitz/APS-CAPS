package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import datos.Conexion;
import entidades.tbl_contrato;
import entidades.v_contrato;


public class Dt_Contrato 
{
	public ResultSet rs; //ResultSet Global
		
	public ArrayList<v_contrato> listaContrato()
	{
		ArrayList<v_contrato> listaContrato = new ArrayList<v_contrato>();
		String sql = ("SELECT * From sicap1.v_contrato;");
		
		try 
		{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				v_contrato c = new v_contrato();
				c.setIdContrato(rs.getInt("idContrato"));
				c.setDireccion(rs.getString("direccion"));
				c.setCliente(rs.getString("cliente"));
				c.setBarrio(rs.getString("barrio"));
				c.setCategoriacliente(rs.getString("categoriacliente"));
				c.setNumContrato(rs.getInt("numContrato"));
				c.setSerialMedidor(rs.getString("serialMedidor"));

				listaContrato.add(c);
			}
			ps.close();
			cn.close();
		} 
		catch (Exception e) 
		{
			System.err.println("DATOS: ERROR " +e.getMessage());
		}
		
		return listaContrato;
	}

}
