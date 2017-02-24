package datos;
import entidades.v_medidor;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import entidades.tbl_contrato;

public class Dt_medidores

{
	public ResultSet rs; //ResultSet Global
	
	public ArrayList<v_medidor> listaMedidor()
	{
		ArrayList<v_medidor> listaMedidor = new ArrayList<v_medidor>();
		String sql = ("SELECT * From sicap1.v_medidor;");
		
		try 
		{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				v_medidor med = new v_medidor();
				med.setIdMedidor(rs.getInt("idMedidor"));
				med.setSerial(rs.getString("serial"));
				med.setAbreviatura(rs.getString("abreviatura"));
				med.setActivo(rs.getString("activo"));

				listaMedidor.add(med);
			}
			ps.close();
			cn.close();
		} 
		catch (Exception e) 
		{
			System.err.println("DATOS: ERROR " +e.getMessage());
		}
		return listaMedidor;
	}
}
