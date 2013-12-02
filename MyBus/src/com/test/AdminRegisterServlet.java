package com.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.ModelDAO;

/**
 * Servlet implementation class AdminRegisterServlet
 */
@WebServlet("/AdminRegisterServlet")
public class AdminRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    static Connection connection;
    String insertquery="insert into adminDetails(travels,adminUserName,adminPassword,adminPhone,adminEmail) values(?,?,?,?,?)";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String travels=request.getParameter("travels");
		String adminUserName=request.getParameter("adminUserName");		
		String adminPassword =request.getParameter("adminPassword");				
		String p =request.getParameter("adminPhone");
		long adminPhone=Long.parseLong(p);
		String adminEmail=request.getParameter("adminEmail");
		
		//creating connection to database and inserting into table
		connection = ModelDAO.connectDB();	
		try {
			PreparedStatement ps =connection.prepareStatement(insertquery,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1,travels);
			ps.setString(2,adminUserName);
			ps.setString(3,adminPassword);
			ps.setLong(4, adminPhone);
			ps.setString(5,adminEmail);
			//executing query
			ps.execute();
			
			int autokey=0;
			ResultSet rs=ps.getGeneratedKeys();
			while(rs.next())
			{
				autokey = rs.getInt(1);
			}
			request.setAttribute("myKey",autokey);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
