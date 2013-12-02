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
@WebServlet("/AdminLoginCheckServlet")
public class AdminLoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    static Connection connection;
    String query="select * from adminDetails where adminUserName=?";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adminUserName=request.getParameter("adminUserName");
		String adminp=request.getParameter("adminPassword");
		connection = ModelDAO.connectDB();	
		try {
			PreparedStatement ps =connection.prepareStatement(query);
			ps.setString(1,adminUserName);
			ResultSet rs;
			System.out.println("Before query");
			rs=ps.executeQuery();
			System.out.println("After query");
			while (rs.next())
			{
				System.out.println("in query");
				String passwordDatabase=rs.getString("adminPassword");
				System.out.println("passwords "+passwordDatabase);
				if (adminp.equalsIgnoreCase(passwordDatabase))
				{
					System.out.println("OK");
					//String travels=rs.getString("travels");
					//HttpSession session=request.getSession();
					//session.setAttribute("myTravels", travels);
					RequestDispatcher rd=request.getRequestDispatcher("BusRegister.jsp");
					rd.forward(request,response);
					return;
				
				}
				else
				{
					System.out.println("Error");
					RequestDispatcher rd=request.getRequestDispatcher("ErrorAdminLogin.jsp");
					
					
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
