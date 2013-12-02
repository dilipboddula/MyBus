package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.ModelDAO;

@WebServlet("/BusRegisterServlet")
public class BusRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public BusRegisterServlet() {
        super();
        
    }

    static Connection connection;
    String insertquery="insert into busDetails(driverName,fromPlace,toPlace,d1,d2,a1,a2,busType,seats,cost,driverPhone,adminId) values(?,?,?,?,?,?,?,?,?,?,?,?)";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		//getting values from form
		String driverName=request.getParameter("driverName");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		
		String d11=request.getParameter("d1");
		int d1=Integer.parseInt(d11);
		String d22=request.getParameter("d2");
		int d2=Integer.parseInt(d22);
		
		String a11=request.getParameter("a1");
		int a1=Integer.parseInt(a11);
		String a22=request.getParameter("a2");
		int a2=Integer.parseInt(a22);
		

		String busType=request.getParameter("busType");

		String seats1=request.getParameter("seats");
		int seats=Integer.parseInt(seats1);
		//System.out.println(seats);
		String cost1=request.getParameter("cost");
		int cost=Integer.parseInt(cost1);
		
		
		String p=request.getParameter("driverPhone");
		long driverPhone=Long.parseLong(p);
		HttpSession session=request.getSession();
		int adminID=(Integer)session.getAttribute("myAdminID");
		
		//System.out.println(adminID);
		
		
		//creating connection to database and inserting into table
		connection = ModelDAO.connectDB();	
		try {
			PreparedStatement ps =connection.prepareStatement(insertquery,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1,driverName);
			ps.setString(2,from);
			ps.setString(3,to);
			ps.setInt(4,d1);
			ps.setInt(5,d2);
			ps.setInt(6,a1);
			ps.setInt(7,a2);
			ps.setString(8,busType);
			ps.setInt(9,seats);
			ps.setInt(10,cost);
			ps.setLong(11,driverPhone);
			ps.setInt(12,adminID);
			//executing query
			ps.execute();
			
			int autokey=0;
			ResultSet rs=ps.getGeneratedKeys();
			while(rs.next())
			{
				autokey = rs.getInt(1);
			}
			//request.setAttribute("myKey",autokey);
			
			session.setAttribute("myKey",autokey);
			System.out.println(autokey);
			//dispatching attributes to success.jsp
			RequestDispatcher rd=request.getRequestDispatcher("busAddSuccess.jsp");		
			rd.include(request, response);			
			return;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
