<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment page</title>
</head>
<body>

<h1>Hello <%=(String)session.getAttribute("myUserName") %></h1>
<h1>pay the amount <%=(Integer)session.getAttribute("mySelectBusCost") %> to book the seat</h1>
<form action="BusBookingServlet">
<input type="submit" value="Click here to Pay" >
<input type="button" value="Click here to cancel" onclick="window.location('city.jsp')">
</form>
</body>
</html>