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
background-image:url('hd.jpg');
background-repeat:no-repeat;
background-size:1000px 1000px;
align:"center";
}

</style>
</head>
<body>
<body>
<h1>Please login to access</h1>
<form action="AdminLoginCheckServlet">
<table border="1" bgcolor="green">

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
<input type="submit" value="Login"  style="background-color:yellow">
<input type="button" value="New User"  style="background-color:yellow" onclick="window.location='adminRegistrationForm.jsp'">
</form>

</body>
</html>