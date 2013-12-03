package com.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BusFilterClass;
import com.model.ModelDAO;

/**
 * Servlet implementation class BusBookingServlet
 */
@WebServlet("/BusBookingServlet")
public class BusBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusBookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    static Connection connection;
    String insertquery="insert into busBooking(busId,userId,userEmail) values(?,?,?)";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(true);
		ArrayList<BusFilterClass> al=(ArrayList<BusFilterClass>)request.getAttribute("mySelectedBus");
		
		int busId=(Integer)session.getAttribute("mySelectedBusId");
		int userId=(Integer)session.getAttribute("myUserId");
		String userEmail=(String)session.getAttribute("myUserEmail");
		
		connection = ModelDAO.connectDB();	
		try {
			PreparedStatement ps =connection.prepareStatement(insertquery,Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, busId);
			ps.setInt(2, userId);
			ps.setString(3, userEmail);
			//executing query
			ps.execute();
			
			int autokey=0;
			ResultSet rs=ps.getGeneratedKeys();
			while(rs.next())
			{
				autokey = rs.getInt(1);
			}
			//request.setAttribute("myKey",autokey);
			
			session.setAttribute("myBookId",autokey);
			System.out.println(autokey);
			//dispatching attributes to success.jsp
			RequestDispatcher rd=request.getRequestDispatcher("BusBookSuccess.jsp");		
			rd.include(request, response);			
			return;
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
