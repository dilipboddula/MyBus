package com.test;
import com.model.CabClass;
import java.util.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.model.CabClass;


@WebServlet("/confirmserv")
public class ConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ConfirmServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//creating object of io
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("r1");
		out.println("No Error!!");
		
		
		int driverid=Integer.parseInt(id);
		out.println(driverid);
	
		HttpSession session = request.getSession(true);
		ArrayList<CabClass> al=(ArrayList<CabClass>)session.getAttribute("myResult");
		ArrayList<CabClass> fl=new ArrayList<CabClass>();
		for (CabClass v : al) {
			if(driverid==v.getDriverid())
			{
				session.setAttribute("myDriverid",v);
				CabClass c = new CabClass();
				c.setDriverid(v.getDriverid());
				c.setName(v.getName());
				c.setCabtype(v.getCabtype());
				c.setCost(v.getCost());
				c.setCity(v.getCity());
				fl.add(c);
				break;
			}
		}
		session.setAttribute("myConfirm",fl);
		RequestDispatcher rd=request.getRequestDispatcher("confirm.jsp");
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
