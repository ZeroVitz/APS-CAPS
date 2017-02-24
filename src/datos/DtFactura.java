package datos;
import java.sql.*;
import java.util.ArrayList;


import entidades.tbl_factura;
import entidades.v_factura_contrato;


public class DtFactura {

	public ArrayList<v_factura_contrato> listaFactura()
	
	{
		ArrayList<v_factura_contrato> listaFactura = new ArrayList<v_factura_contrato>();
		String sql = ("SELECT * From sicap1.v_factura_contrato;");
		
		try 
		{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				v_factura_contrato a = new v_factura_contrato();
				a.setIdFactura(rs.getInt("idFactura"));
				a.setNumFactura(rs.getInt("numFactura"));
				a.setActivo(rs.getString("activo"));
				a.setFechaFactura(rs.getDate("fechaFactura"));
				a.setTotal(rs.getFloat("total"));
				a.setSubTotal(rs.getFloat("subtotal"));
				a.setObservaciones(rs.getString("observaciones"));
				a.setEstado(rs.getInt("estado"));
				a.setNumContrato(rs.getInt("numContrato"));
				a.setNombre(rs.getString("nombre"));
				a.setApellido(rs.getString("apellido"));
				a.setEmpresa(rs.getString("empresa"));
				
				listaFactura.add(a);
			}
			ps.close();
			cn.close();
		} 
		catch (Exception e) 
		{
			System.err.println("DATOS: ERROR " +e.getMessage());
		}
		
		return listaFactura;
	}
	
	
	public boolean guardar(tbl_factura fac)
	{
		int x=0;
		boolean resp=false;
		try
		{
			
			String SQL = ("INSERT INTO sicap1.factura (numFactura, activo, total, subtotal, observaciones, usuario_creacion, usuario_anulacion ,idContrato ,fechaFactura,idEmpresa, estado, fecha_creacion, fecha_anulacion) VALUES (?,?,?,?,?,?,?,2,CURRENT_TIMESTAMP,1,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP)");
			Connection cn = Conexion.getConnection();
			PreparedStatement s = cn.prepareStatement(SQL);
			s.setInt(1,fac.getNumFactura());
			s.setString(2, fac.getActivo());
			s.setFloat(3, fac.getTotal());
			s.setFloat(4, fac.getSubTotal());
			s.setString(5,fac.getObservaciones());
			s.setString(6, "Grecia");
			s.setString(7, "Hansel");
			
			x = s.executeUpdate();
			resp = x > 0;
			
			s.close();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("ERROR EN DATOS: "+e.getMessage());
		}
		
		
		return resp;
	}
}
