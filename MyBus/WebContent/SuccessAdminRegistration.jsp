<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome</h1>
<%
//getting name from Register Servlet using session
	//out.println("<h1> Welcome "+(String)session.getAttribute("myTravels")+" </h1>");
	
//getting autokey from register servlet using get attribute
	
	Integer key=(Integer)request.getAttribute("myKey");
	out.println("<h2> Your Id is "+key+" </h2>");

%>
<h1>You are successFully Registered with us</h1>

<input type="button" value="Click here to Login" onclick="window.location='AdminLogin.jsp'" >

</body>
</html>