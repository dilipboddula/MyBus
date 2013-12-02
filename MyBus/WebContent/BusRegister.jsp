<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bus Registration</title>
</head>
<body>
<form action="BusRegisterServlet">
<table border="1" bgcolor="rgb(238, 17, 203)">

<tr>
<td>Driver Name</td>
    <td><input type ="text" name="driverName" placeholder="Driver Name"/></td>
</tr>

<tr>
<td>from</td>
<td><select name="from">
<option value="Bangalore">Bangalore
<option value ="Hyderabad">Hyderabad
<option value="Chennai">Chennai
<option value="Delhi">Delhi
</select>
</td>
</tr>
<tr>
<td>to</td>
<td><select name="to">
<option value="Bangalore">Bangalore
<option value ="Hyderabad">Hyderabad
<option value="Chennai">Chennai
<option value="Delhi">Delhi
</select>
</td>
</tr>

<tr>
<td>Departure</td>
    <td><select name="d1">
    <%for(int i=0;i<24;i++) {%>
    <option value=<%=i%>><%=i%></option>
    <%} %>    
    </select>
    <select name="d2">
    <%for(int i=0;i<60;i++) {%>
    <option value=<%=i%>><%=i%></option>
    <%} %>    
    </select></td>
</tr>
<tr>
<tr>
<td>Arrival</td>
    <td><select name="a1">
    <%for(int i=0;i<24;i++) {%>
    <option value=<%=i%>><%=i%></option>
    <%} %>    
    </select>
    <select name="a2">
    <%for(int i=0;i<60;i++) {%>
    <option value=<%=i%>><%=i%></option>
    <%} %>    
    </select></td>
</tr>

<tr>
<td>Bus Type</td>
<td><select name="busType">
<option value="acss">AC Semi Sleeper
<option value ="nacss">Non AC Semi Sleeper
<option value="acs">AC Sleeper
<option value="nacs">Non AC Sleeper
</select>
</td>
</tr>
<tr>
<td>No. of Seats</td>
    <td><input type ="text" name="seats" placeholder="No. of seats"/></td>
</tr>

<tr>
<td>cost</td>
    <td><input type ="text" name="cost" placeholder="Cost per hour"/></td>
</tr>


<tr>
<td> Driver phone</td>
    <td><input type ="text" name="driverPhone" placeholder="phone number"/></td>
</tr>

</table>
<input type="submit" value="submit">
</form>

</body>
</html>