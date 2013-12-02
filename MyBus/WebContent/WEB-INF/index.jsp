<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<%!int count=1;%>
visitor count <%=count++%>
<form >

<input type="button" value="admin" onclick="window.location='register.jsp'">
<input type="button" value="user" onclick="window.location='city.jsp'">

</form>
</body>
</html>