package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BusFilterClass;
import com.model.ModelDAO;

@WebServlet("/BusFilterServlet")
public class BusFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public BusFilterServlet() {
        super();
        
    }
    static Connection connection;
    String query="select * from busDetails where fromPlace=? AND toPlace=?";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String fromPlace=request.getParameter("fromPlace");
	String toPlace=request.getParameter("toPlace");
	System.out.println(fromPlace);
	System.out.println(toPlace);
	//creating object of io
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			//out.println(city);
			System.out.println("Before Connection");
	connection = ModelDAO.connectDB();	
	System.out.println("After Connection");
	ArrayList<BusFilterClass> al=new ArrayList<BusFilterClass>();
	try {
		PreparedStatement ps =connection.prepareStatement(query);
		System.out.println("after prepared statement");
		ps.setString(1,fromPlace);
		ps.setString(2,toPlace);
		ResultSet rs;
		rs= ps.executeQuery();
		System.out.println("after Execute");
		while(rs.next()){
			
		
			BusFilterClass c = new BusFilterClass();
			System.out.println(rs.getInt("busId"));
			c.setBusId(rs.getInt("busId"));
			c.setDrivername(rs.getString("driverName"));
			c.setFromPlace(rs.getString("fromPlace"));
			c.setToPlace(rs.getString("toPlace"));
			c.setD1(rs.getInt("d1"));
			c.setD2(rs.getInt("d2"));
			c.setA1(rs.getInt("a1"));
			c.setA2(rs.getInt("a2"));
			c.setBusType(rs.getString("busType"));
			c.setSeats(rs.getInt("seats"));
			c.setCost(rs.getInt("cost"));
			c.setDriverPhone(rs.getLong("driverPhone"));
			c.setAdminId(rs.getInt("adminId"));
			al.add(c);
		
	      }
		request.setAttribute("myBusFilterList", al);
	     
	      System.out.println("before Dispatching");
	  	RequestDispatcher rd=request.getRequestDispatcher("BusFilteredDisplay.jsp");
	  	rd.forward(request, response);
	  	 rs.close();
	  	return;
	  	
	    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

	//creating session
	//HttpSession session=request.getSession();
	//session.setAttribute("myResult",al);
	
	//dispatching
	
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
