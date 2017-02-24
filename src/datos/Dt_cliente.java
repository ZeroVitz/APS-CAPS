package datos;
import entidades.tbl_cliente;
import entidades.tbl_cliente;


import java.sql.*;
import java.util.ArrayList;


public class Dt_cliente 
{
	public ResultSet rs; //ResultSet Global
		
	public boolean guardar(tbl_cliente tcliente)
	{
		int x=0;
		boolean resp=false;
		try
		{
			
			String SQL = ("INSERT INTO sicap1.cliente (nombre, apellido, cedula, telefono, sexo, estado, celular , edad, usuario_creacion, usuario_eliminacion, usuario_modificacion, fecha_creacion, fecha_modificacion, fecha_eliminacion) VALUES (?,?,?,?,?,1,?,?,1,1,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,?)");
			Connection cn = Conexion.getConnection();
			PreparedStatement s = cn.prepareStatement(SQL);
			s.setString(1, tcliente.getNombre());
			s.setString(2, tcliente.getApellido() );
			s.setString(3,tcliente.getCedula());
			s.setString(4, tcliente.getTelefono());
			s.setString(5,tcliente.getSexo());
			s.setString(6, tcliente.getCelular());
			s.setInt(7, tcliente.getEdad());
			
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
	
	public ArrayList<tbl_cliente> listarCliente()
	{
		ArrayList<tbl_cliente> listaCliente = new ArrayList<tbl_cliente>();
		String sql = ("SELECT * From sicap1.cliente;");
		
		try 
		{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				tbl_cliente tcliente = new tbl_cliente();
				
				tcliente.setIdCliente(rs.getInt("idCliente"));
				tcliente.setActivo(rs.getString("activo"));
				tcliente.setApellido(rs.getString("apellido"));
				tcliente.setNombre(rs.getString("nombre"));
				tcliente.setCedula(rs.getString("cedula"));
				tcliente.setCelular(rs.getString("celular"));
				tcliente.setEstado(rs.getInt("estado"));
				tcliente.setSexo(rs.getString("sexo"));
				tcliente.setEdad(rs.getInt("edad"));
				tcliente.setTelefono(rs.getString("telefono"));
				
				listaCliente.add(tcliente);
			}
			ps.close();
			cn.close();
		} 
		catch (Exception e) 
		{
			System.err.println("ERROR EN Dt_Cliente listaActores " +e.getMessage());
		}
		
		return listaCliente;
	}
	
}