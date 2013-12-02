<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<form action="AdminLoginCheckServlet">
<table border="1" bgcolor="rgb(238, 17, 203)">

<tr>
<td>Admin UserName</td>
    <td><input type ="text" name="adminUserName" placeholder="Admin User Name"/></td>
</tr>
<tr>
<tr>
<td>Password</td>
    <td><input type ="password" name="adminPassword" placeholder="Admin Password"/></td>
</tr>
<tr>
</table>
<input type="submit" value="Login">
<input type="button" value="New User" onclick="window.location('adminRegistrationForm.jsp')">
</form>

</body>
</html>