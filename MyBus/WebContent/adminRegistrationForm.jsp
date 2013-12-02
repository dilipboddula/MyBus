<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
<!--
 function fun()
               {
        
                              if(document.myform.travels.value=="")
                                   {
                                    alert("Travelname cannot be null");
                                    document.myform.travels.focus();
                                
                                   }
                              else if (document.myform.adminUsername.value=="")
                                   {
                                    alert("username cannot be null");
                                    document.myform.username.focus();
                                    
                                   }
                              else if (document.myform.adminPassword.value=="")
                                   {
                                    alert("password cannot be null");
                                    document.myform.adminPassword.focus();
                                    
                                   }
                              else if (document.myform.adminConfirmPassword.value != document.myform.adminPassword.value)
                                   {
                                    alert("password not matching");
                                    document.myform.adminConfirmPassword.focus();
                                    return false;
                                   }
                              else if (document.myform.adminPhone.value=="")
                                  {
                                   alert("phone number cannot be null");
                                   document.myform.adminPhone.focus();
                                   return false;
                                  }
                              else if (document.myform.adminEmail.value=="")
                                  {
                                   alert("email cannot be null");
                                   document.myform.adminEmail.focus();
                                   return false;
                                  }
                              
                              else 
                                  {
                                   //alert("you are registered");
                                   document.myform.submit();
                                   return true;
                                  }
                              
               }
//-->

</script>
</head>
<body>
<form name="myform" action="AdminRegisterServlet">
<table border="1" bgcolor="rgb(238, 17, 203)">

<tr>
<td>Travels</td>
    <td><input type ="text" name="travels" placeholder="travels"/></td>
</tr>

<tr>
<td>Username</td>
    <td><input type ="text" name="adminUserName" placeholder="Username"/></td>
</tr>

<tr>
<td>Password</td>
    <td><input type ="password" name="adminPassword" placeholder="Password"/></td>
</tr>
<tr>
<td>confirmPassword</td>
    <td><input type ="password" name="adminConfirmPassword" placeholder="ConfirmPassword"/></td>
</tr>
<tr>
<td>phone</td>
    <td><input type ="text" name="adminPhone" placeholder="Phone"/></td>
</tr>
<tr>
<td>email</td>
    <td><input type ="text" name="adminEmail" placeholder="Email"/></td>
</tr>
</table>

<input type="button" value="Register" onclick="fun()"></form>
</body>
</html>


               