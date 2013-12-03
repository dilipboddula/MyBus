<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style type="text/css">
body
{
background-image:url('bs2.jpg');
}
.a{
color:green;
text-align:center;
font color:orange;
}
.b{
color:blue;
text-align:center;
font color:yellow;
}
.f{
position:top right;
}
#c{
text type:bold;
color:maroon;
text-align:center;
font-size:100px;
}</style>
</head>
<body bgcolor="AntiqueWhite">
<%!int count=1;%>
visitor count <%=count++%>
<h1 class="a" style="type:bold">Welcome to MyBus in India......</h1>
<h2 class="f">Toll-freeno:1800-254681</h2>
<form >

<input type="button" class="a" color="orange" id="c" value="admin" onclick="window.location='AdminLogin.jsp'">
<input type="button" class="b" color="violet" id="c" value="user" onclick="window.location='city.jsp'">
</form>


</body>
</html>