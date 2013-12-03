<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.BusFilterClass"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Congratulations 
<%=session.getAttribute("myUserName") %><br>
  your ticket has been Booked succussfully.
 </h1>
 <br><h2>Your Ticket Details are
 </h2>
 <br>
 <h3>
<br>Ticket Number : MyBusAXC43-<%=session.getAttribute("myBookId") %><br> </h3>
 		 <%BusFilterClass v= new BusFilterClass();
 		 v=(BusFilterClass)session.getAttribute("mySelectedBus");
		 %>	
		<table border="1" bgcolor="rgb(238, 17, 203)">		  
		<tr>		
		<th >Driver Name</th>
		<th>From Place</th>
		<th>To Place</th>
		<th>departure Time</th>
		<th>arrival Time</th>
		<th>bus Type</th>
		<th>Amount paid</th>
		<th>Driver Phone</th>
		</tr>		
		<tr>		
		<td><%out.println(v.getDrivername()); %></td>				
		<td><%out.println(v.getFromPlace()); %></td>		
		<td> <%out.println(v.getToPlace()); %></td>		
		<td><%out.println(v.getD1()); %> hrs <%v.getD2(); %> mins</td>
		<td><%out.println(v.getA1()); %> hrs <%v.getA2(); %> mins</td>		
		<td><%out.println(v.getBusType()); %></td>		
		
		<td><%out.println(v.getCost()); %></td>
		<td><%=v.getDriverPhone() %>		
		</tr>		
		 </table> 
<input type="button" value="click here to make Another Transaction" onclick="window.location='city.jsp'">
</body>
</html>