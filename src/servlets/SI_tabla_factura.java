package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.tbl_factura;
import entidades.v_factura_contrato;
import datos.DtFactura;

/**
 * Servlet implementation class SI_tabla_factura
 */
@WebServlet("/SI_tabla_factura")
public class SI_tabla_factura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SI_tabla_factura() {
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
			DtFactura dtf = new DtFactura();
			tbl_factura fac = new tbl_factura();
			ArrayList<v_factura_contrato> listaFactura = new ArrayList<v_factura_contrato>();
			
			String numFactura="";
			String Activo ="";
			String total ="";
			String subtotal ="";
			String Observaciones ="";
			
			
			numFactura = request.getParameter("numFac1");
			Activo = request.getParameter("activo1");
			total = request.getParameter("total1");
			subtotal = request.getParameter("subtotal1");
			Observaciones = request.getParameter("obsv1");
		
			
			System.out.println("numFac2" + numFactura);
			System.out.println("activo2" + Activo);
			System.out.println("total2" + total);
			System.out.println("subtotal2" + subtotal);
			System.out.println("obsv2" + Observaciones);

			
			
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


