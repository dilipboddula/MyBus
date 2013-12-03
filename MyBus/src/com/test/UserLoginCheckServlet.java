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
 * Servlet implementation class AdminLoginCheckServlet
 */
@WebServlet("/UserLoginCheckServlet")
public class UserLoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    static Connection connection;
    String query="select * from userDetails where userEmail=?";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userEmailId=request.getParameter("userEmailId");
		String userPassword=request.getParameter("userPassword");
		connection = ModelDAO.connectDB();	
		try {
			PreparedStatement ps =connection.prepareStatement(query);
			ps.setString(1,userEmailId);
			ResultSet rs;
			System.out.println("Before query");
			rs=ps.executeQuery();
			System.out.println("After query");
			while (rs.next())
			{
				System.out.println("in query");
				String passwordDatabase=rs.getString("userPassword");
				System.out.println("passwords "+passwordDatabase);
				if (userPassword.equalsIgnoreCase(passwordDatabase))
				{
					//System.out.println("OK");
					String i=rs.getString("userId");
					int userId=Integer.parseInt(i);
					String userName=rs.getString("userName");
					String userEmail=rs.getString("userEmail");
					HttpSession session=request.getSession(true);
					session.setAttribute("myUserID",userId);
					session.setAttribute("myUserName",userName);
					session.setAttribute("myUserEmail",userEmail);
					
					System.out.println(userId);
					RequestDispatcher rd=request.getRequestDispatcher("UserPayment.jsp");
					rd.forward(request,response);
					return;
				
				}
				else
				{
					System.out.println("Error");
					RequestDispatcher rd=request.getRequestDispatcher("ErrorUserLogin.jsp");
					rd.forward(request,response);
					
				}
			}
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
