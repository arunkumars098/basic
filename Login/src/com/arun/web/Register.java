package com.arun.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter write=response.getWriter();
		//response.setContentType( "test/html"); 
	/*	String id=request.getParameter("user");
		String pw=request.getParameter("pass");
		if(userId.equalsIgnoreCase(id)&&password.equalsIgnoreCase(pw))
		{
			response.sendRedirect("Main.jsp");
		
			
			}
			else{
				response.sendRedirect("error.jsp");
			}*/
		
		/*int poNumber=Integer.parseInt(request.getParameter("ponumber"));
		//String Ponumber=request.getParameter("ponumber").toString();
		String supplier=request.getParameter("designstedmode");
		//String Duedate=request.getParameter("duedate").toString();
		int dueDate=Integer.parseInt(request.getParameter("duedate"));
		String poStatus=request.getParameter("status").toString();
		//String Priority=request.getParameter("priority").toString();
		int priority=Integer.parseInt(request.getParameter("priority"));
		String items=request.getParameter("items");		
		String shipFrom=request.getParameter("designstedmode");
		//String Shipto=request.getParameter("shipto");
		String transResp=request.getParameter("transresp");
		String country=request.getParameter("country");
		 //String sql = "INSERT INTO `arun`.`details` (`supplier`, `duedate`, `postatus`, `priority`, `items`, `shipfrom`, `transresp`, `country`,`ponumber`) values('"+Supplier+"','"+Duedate+"','"+Postatus+"','"+Priority+"','"+Items+"',"+Shipfrom+",'"+Transresp+"','"+Country+"','"+Ponumber+"')";
		String sql ="INSERT INTO `arun`.`details` (sno,`supplier`, `duedate`, `postatus`, `priority`, `items`, `shipfrom`, `transresp`, `country`, `ponumber`) VALUES (null,?,?,?,?,?,?,?,?,?)";
		 Connection con = null;
		 try{
		         Class.forName("com.mysql.jdbc.Driver");
		         con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/arun", "root", "arun");
		         PreparedStatement stat = (PreparedStatement) con.prepareStatement(sql);
		         stat.setString(1,  supplier);
		         stat.setInt(2, dueDate);
		         stat.setString(3, poStatus);
		         stat.setInt(4,priority );
		         stat.setString(5, items);
		         stat.setString(6,shipFrom );
		         stat.setString(7,transResp );
		         stat.setString(8,country );
		         stat.setInt(9, poNumber);
			    	stat.executeUpdate(sql);

		            

		            
		           // stat.close();
		         //   con.close();
		           
		        write.println("Data is successfully inserted!");
		        }
		        catch(Exception e){
		        System.out.print("ERROR: Unable to Connect to Database.");
		        e.printStackTrace();
		        }*/
		Connection con=(Connection) connection.getConnection();
		PreparedStatement pstmt=null;
		String sqlQuery = "INSERT INTO details(supplier,duedate,postastus,priority,items,shipfrom,transresp,country,ponumber,checkbox) VALUES (?,?, ?, ? ,? ,?, ?, ? ,? ,?)";
		
		
		try{
			pstmt = (PreparedStatement) con.prepareStatement(sqlQuery);
		}catch(SQLException e){
			System.out.println("Failed to create Prepared statement");
		}
		try {
			
			pstmt.setString(1, request.getParameter("designstedmode"));
			pstmt.setString(2, request.getParameter("duedate"));
			pstmt.setString(3, request.getParameter("status"));
			pstmt.setString(4, request.getParameter("priority"));
			pstmt.setString(5, request.getParameter("items"));
			pstmt.setString(6, request.getParameter("shipfrom"));
			pstmt.setString(7, request.getParameter("transresp"));
			pstmt.setString(8, request.getParameter("country"));
			pstmt.setString(9, request.getParameter("ponumber"));
			Boolean b = "true".equals(request.getParameter("check"));
			pstmt.setBoolean(10, b);
			response.sendRedirect("nest");
		} catch (SQLException e) {
			System.out.println("Exception in setString");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
		pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("exception in executeupdate");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		    
		
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
