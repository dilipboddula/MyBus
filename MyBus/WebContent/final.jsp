
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.BusSelectClass"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>final</title>
</head>
<body>
<form action="confirmserv">
		 <table border="1" bgcolor="rgb(238, 17, 203)">		  
		<tr>
		<th>Select</th>
		<th>driverid</th>
		<th>name</th>
		<th>cabtype</th>
		<th>cost</th>
		<th>city</th>
		</tr>		
<%
			ArrayList<BusSelectClass> al=(ArrayList<BusSelectClass>)request.getAttribute("myCabList");
			  for (BusSelectClass v : al) {
		%>		 
		<tr>
		<td><input type="radio" name="r1" value=<%=v.getDriverid()%> ></td>
		<td><%out.println(v.getDriverid()); %></td>				
		<td><%out.println(v.getName()); %></td>		
		<td><%out.println(v.getCabtype()); %></td>		
		<td><%out.println(v.getCost()); %></td>		
		<td><%out.println(v.getCity()); %></td>		
		</tr>
		<%} %>
		 </table>
		 <input type="submit" value="Books cabs">
		 </form>
	  

</body>
</html>