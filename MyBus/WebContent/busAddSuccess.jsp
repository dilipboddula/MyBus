<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
background-image:url('hd-wallpaper1.jpg');
}
</style>
</head>
<body>
<%
	//getting name from Register Servlet using session
	//out.println("<h1> Welcome "+session.getAttribute("myName")+" </h1>");
	
	//getting autokey from register servlet using get attribute
	
	int key=(Integer)session.getAttribute("myKey");
	//System.out.println(key);
	out.println(key);
	out.println("<h2>The bus has been registered with Our Service.Bus unique Id is BMW2345612"+key+" </h2>");
%>
<marquee><h1 style="color:white">you have successfully registered</h1></marquee>
<input type="button" value="click Here to add another bus" onclick="window.location='BusRegister.jsp'">
</body>
</html>