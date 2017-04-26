package com.arun.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.Javadoc;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Main
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String userId="arun";
	private static String password="123";
	// public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver"; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter write=response.getWriter();
		response.setContentType( "test/html"); 
		String id=request.getParameter("user");
		String pw=request.getParameter("pass");
		if(userId.equalsIgnoreCase(id)&&password.equalsIgnoreCase(pw))
		{
			response.sendRedirect("Main.jsp");
		
			
			}
			else{
				response.sendRedirect("error.jsp");
			}
		
	/*	int Ponumber=Integer.parseInt(request.getParameter("ponumber"));
		//String Ponumber=request.getParameter("ponumber").toString();
		String Supplier=request.getParameter("designstedmode").toString();
		//String Duedate=request.getParameter("duedate").toString();
		int Duedate=Integer.parseInt(request.getParameter("duedate"));
		String Postatus=request.getParameter("status").toString();
		//String Priority=request.getParameter("priority").toString();
		int Priority=Integer.parseInt(request.getParameter("priority"));
		String Items=request.getParameter("items").toString();		
		String Shipfrom=request.getParameter("shipfrom").toString();
		String Shipto=request.getParameter("shipto").toString();
		String Transresp=request.getParameter("transresp").toString();
		String Country=request.getParameter("country").toString();	
		 String sql = "INSERT INTO `arun`.`details` (`ponumber`, `supplier`, `duedate`, `postatus`, `priority`, `items`, `shipfrom`, `transresp`, `country`) values('"+Ponumber+"','"+Supplier+"','"+Duedate+"','"+Postatus+"','"+Priority+"','"+Items+"',"+Shipfrom+",'"+Transresp+"','"+Country+"')";
		    try{
		         Class.forName("com.mysql.jdbc.Driver").newInstance ();
		           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arun", "root", "arun");
		          
		           Statement stat = con.createStatement();

		            ResultSet rst = stat.executeQuery(sql);

		            rst.close();
		            stat.close();
		            con.close();
		        write.println("Data is successfully inserted!");
		        }
		        catch(Exception e){
		        System.out.print("ERROR: Unable to Connect to Database.");
		        e.printStackTrace();
		        }*/
				//write.println("Wrong Password");
		}
		
	


		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
