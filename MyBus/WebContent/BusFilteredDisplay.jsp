
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.BusFilterClass"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>final</title>
</head>
<body>
<form action="BusPreConfirmServlet">
		 <table border="1" bgcolor="rgb(238, 17, 203)">		  
		<tr>
		<th>Select</th>
		<th >Driver Name</th>
		<th>From Place</th>
		<th>To Place</th>
		<th>departure Time</th>
		<th>arrival Time</th>
		<th>bus Type</th>
		<th>seats</th>
		<th>cost</th>
		</tr>		
<%
			ArrayList<BusFilterClass> al=(ArrayList<BusFilterClass>)request.getAttribute("myBusFilterList");%>
			<%session.setAttribute("myBusFilterList",al); %>	 
		<%for (BusFilterClass v : al) {	%>	
		<tr>
		<td><input type="radio" name="r1" value=<%=v.getBusId()%> ></td>
		<td><%out.println(v.getDrivername()); %></td>				
		<td><%out.println(v.getFromPlace()); %></td>		
		<td><%out.println(v.getToPlace()); %></td>		
		<td><%out.println(v.getD1()); %> hrs <%v.getD2(); %> mins</td>
		<td><%out.println(v.getA1()); %> hrs <%v.getA2(); %> mins</td>		
		<td><%out.println(v.getBusType()); %></td>		
		<td><%out.println(v.getSeats()); %></td>		
		<td><%out.println(v.getCost()); %></td>		
		</tr>
		<%} %>
		 </table>
		
		 <input type="submit" value="Books Bus">
		 </form>
	  

</body>
</html>