<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bus Registration</title>
<style type="text/css">
body
{
background-image:url('vt-animation-G1.gif');
background-repeat:no-repeat;

}
</style>
<script type="text/javascript">

<!--
function fun()
{

               if(document.myform1.driverName.value=="")
                    {
                     alert("Driver name cannot be blank");
                     document.myform1.name.focus();
                 
                    }
               else if (document.myform1.seats.value=="")
               {
                alert("seats cannot be blank");
                document.myform1.userEmail.focus();
               }
               
               else if (document.myform1.cost.value=="")
                    {
                     alert("cost cannot be blank");
                     document.myform1.userPassword.focus();
                     
                    }
               else if (document.myform1.driverPhone.value=="")
                   {
                    alert("phone number cannot be null");
                    document.myform1.userPhone.focus();
                
                   }

               else 
                   {
                    //alert("you are registered");
                    document.myform1.submit();
                
                   }
               
}
//-->
//-->

</script>
</head>
<body>
<h1 style="color:white">Enter the details</h1>
<form action="BusRegisterServlet" name="myform1">
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
<input type="button" value="submit" onclick="fun()">
</form>

</body>
</html>