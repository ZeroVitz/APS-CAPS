package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.tbl_cliente;
import datos.Dt_cliente;

/**
 * Servlet implementation class SI_tabla_factura
 */
@WebServlet("/SI_tabla_cliente")
public class SI_tabla_cliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SI_tabla_cliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			Dt_cliente dtf = new Dt_cliente();
			tbl_cliente tcliente = new tbl_cliente();
			ArrayList<tbl_cliente> listaFactura = new ArrayList<tbl_cliente>();
			
			String nombre1 = request.getParameter("nombre1");
			String apellido1 = request.getParameter("apellido1");
			String cedula1 = request.getParameter("cedula1");
			String  = request.getParameter("subtotal1");
			String Observaciones = request.getParameter("obsv1");
		
/*			
			System.out.println("numFac2" + numFactura);
			System.out.println("activo2" + Activo);
			System.out.println("total2" + total);
			System.out.println("subtotal2" + subtotal);
			System.out.println("obsv2" + Observaciones);
*/
			
			
			fac.setNumFactura(Integer.parseInt(numFactura));
			fac.setActivo(Activo);
			fac.setTotal(Float.parseFloat(total));
			fac.setSubTotal(Float.parseFloat(subtotal));
			fac.setObservaciones(Observaciones);
			
			
			if(dtf.guardar(fac))
			{
				listaFactura = dtf.listaFactura();
				
				response.setContentType("text/html; charset=UTF-8");
				String out = "";
				
				out+="<thead>";
				out+="<tr>";
				out+="<th>Id</th>";
				out+="<th>Numero de factura</th>";
				out+="<th>Nombre</th>";
				out+="<th>Apellido</th>";
				out+="<th>Contrato</th>";
				out+="<th>Subtotal</th>";
				out+="<th>Total</th>";
				out+="<th>Fecha de factura</th>";
				out+="<th>Observaciones</th>";
				out+="<th>Activo</th>";
				out+="</tr>";
				out+="</thead>";
				
				out+="<tbody>";
				for(v_factura_contrato enti : listaFactura)
				{
					out+="<tr>";
					out+="<td>"+enti.getIdFactura()+"</td>";
					out+="<td>"+enti.getNumFactura()+"</td>";
					out+="<td>"+enti.getNombre()+"</td>";
					out+="<td>"+enti.getApellido()+"</td>";
					out+="<td>"+enti.getNumContrato()+"</td>";
					out+="<td>"+enti.getSubTotal()+"</td>";
					out+="<td>"+enti.getTotal()+"</td>";
					out+="<td>"+enti.getFechaFactura()+"</td>";
					out+="<td>"+enti.getObservaciones()+"</td>";
					out+="<td>"+enti.getActivo()+"</td>";
					out+="</tr>";
				}
				out+="</tbody>";
				
				out+="<tfoot>";
				out+="<tr>";
				out+="<th>Id</th>";
				out+="<th>Numero de factura</th>";
				out+="<th>Nombre</th>";
				out+="<th>Apellido</th>";
				out+="<th>Contrato</th>";
				out+="<th>Subtotal</th>";
				out+="<th>Total</th>";
				out+="<th>Fecha de factura</th>";
				out+="<th>Observaciones</th>";
				out+="<th>Activo</th>";
				out+="</tr>";
				out+="</tfoot>";
				
				PrintWriter pw = response.getWriter();
				pw.write(out);
				pw.flush();
				boolean error = pw.checkError();
				System.out.println("Error? "+error);
			}
			else
			{
				//Msj de Error
			}
			
		
			
		}
		catch(Exception e)
		{
			System.out.println("SL: error en el servlet:" +e.getMessage());
			e.printStackTrace();
		}
		
		
		
		
	}
	
}


