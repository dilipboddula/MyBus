<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<script type="text/javascript">

<!--
function fun()
{

               if(document.myform1.userEmailId.value=="")
                    {
                     alert(" Email cannot be blank");
                     document.myform1.name.focus();
                 
                    }
               else if (document.myform1.userPassword.value=="")
               {
                alert("Password cannot be balnk");
                document.myform1.userEmail.focus();
               }
               
               
               else 
                   {
                    //alert("you are registered");
                    document.myform1.submit();
                
                   }
               
}
//-->


</script>
</head>
<body>
<body>
<form action="UserLoginCheckServlet" name="myform1">
<table border="1" bgcolor="rgb(238, 17, 203)">

<tr>
<td>Email Id</td>
    <td><input type ="text" name="userEmailId" placeholder="Email Id"/></td>
</tr>
<tr>
<tr>
<td>Password</td>
    <td><input type ="password" name="userPassword" placeholder="Password"/></td>
</tr>
<tr>
</table>
<input type="button" value="Login" onclick="fun()">
<input type="button" value="New User" onclick="window.location='userRegistrationForm.jsp'">
</form>

</body>
</html>
