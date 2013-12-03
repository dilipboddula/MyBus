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
<script type="text/javascript">

<!--
function fun()
{

               if(document.myform1.adminUserName.value=="")
                    {
                     alert(" User name cannot be blank");
                     document.myform1.adminUserName.focus();
                 
                    }
               else if (document.myform1.adminPassword.value=="")
               {
                alert("Password cannot be balnk");
                document.myform1.adminPassword.focus();
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
<h1>Please login to access</h1>
<form action="AdminLoginCheckServlet" name="myform1">
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
<input type="button" value="Login" onclick="fun()" style="background-color:yellow">
<input type="button" value="New User"  style="background-color:yellow" onclick="window.location='adminRegistrationForm.jsp'">
</form>

</body>
</html>