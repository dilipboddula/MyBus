package com.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.ModelDAO;

/**
 * Servlet implementation class AdminRegisterServlet
 */
@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    static Connection connection;
    String insertquery="insert into userDetails(userName,userEmail,userPassword,userPhone,userGender,userAddress) values(?,?,?,?,?,?)";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName=request.getParameter("userName");
		String userEmail=request.getParameter("userEmail");		
		String userPassword =request.getParameter("userPassword");				
		String p =request.getParameter("userPhone");
		long userPhone=Long.parseLong(p);
		String userGender=request.getParameter("userGender");
		String userAddress=request.getParameter("adminAddress");
		
		//creating connection to database and inserting into table
		connection = ModelDAO.connectDB();	
		try {
			PreparedStatement ps =connection.prepareStatement(insertquery,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1,userName);
			ps.setString(2,userEmail);
			ps.setString(3,userPassword);
			ps.setLong(4, userPhone);
			ps.setString(5,userGender);
			ps.setString(6, userAddress);
			//executing query
			ps.execute();
			
			int autokey=0;
			ResultSet rs=ps.getGeneratedKeys();
			while(rs.next())
			{
				autokey = rs.getInt(1);
			}
			HttpSession session=request.getSession();
			request.setAttribute("myUserID",autokey);
			session.setAttribute("myUserName", userName);
			RequestDispatcher rd=request.getRequestDispatcher("SuccessUserRegistration.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			RequestDispatcher rd=request.getRequestDispatcher("ErrorUserRegisterServlet.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
