<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.c
{
font-size:20px;
}
body
{
background-image:url('city.jpg');
}
html, body {
    height: 100%;
}

html {
    display: table;
    margin: auto;
}

body {
    display: table-cell;
    vertical-align: middle;
}
</style>
</head>
<body>
<marquee><h1 style="color:blue">Bus Booking </h1></marquee>
<form action="BusFilterServlet" align="center">
<table border="10" cellspacing=5px cellpadding=10px bgcolor="yellow" align="center">

<td>From</td>
<td><select name="fromPlace" class="c" align="center" style="background-color:white">
<option value="Bangalore">Bangalore
<option value ="Hyderabad">Hyderabad
<option value="Chennai">Chennai
<option value="Delhi">Delhi
</select>
</td>
</tr>
<tr>

<td>To</td>
<td><select name="toPlace" class="c" align="center" style="background-color:white">
<option value="Bangalore">Bangalore
<option value ="Hyderabad">Hyderabad
<option value="Chennai">Chennai
<option value="Delhi">Delhi
</select>
</td>
</tr>
</table>
<input type="submit" value="Submit" style="height:30px;width:125px">
</form>
</body>
</html>