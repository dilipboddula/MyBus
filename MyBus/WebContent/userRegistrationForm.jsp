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
        
                              if(document.myform1.name.value=="")
                                   {
                                    alert("name cannot be null");
                                    document.myform1.name.focus();
                                
                                   }
                              else if (document.myform1.userName.value=="")
                                   {
                                    alert("username cannot be null");
                                    document.myform1.userName.focus();
                                    
                                   }
                              else if (document.myform1.userPassword.value=="")
                                   {
                                    alert("password cannot be null");
                                    document.myform1.userPassword.focus();
                                    
                                   }
                              else if (document.myform1.userConfirmPassword.value != document.myform.userPassword.value)
                                   {
                                    alert("password not matching");
                                    document.myform1.userConfirmPassword.focus();
                                   
                                   }
                              else if (document.myform1.userPhone.value=="")
                                  {
                                   alert("phone number cannot be null");
                                   document.myform1.userPhone.focus();
                               
                                  }
                              else if (document.myform1.userEmail.value=="")
                                  {
                                   alert("email cannot be null");
                                   document.myform1.userEmail.focus();
                                  }
                              else if (document.myform1.userAddress.value=="")
                              {
                            	  alert("Address cannot be null");
                            	  document.myform1.userAddress.focus();
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
<form name="myform1" >
<table border="1" bgcolor="rgb(238, 17, 203)">

<tr>
<td>Name</td>
    <td><input type ="text" name="name" placeholder="Name"/></td>
</tr>

<tr>
<td>UserName</td>
    <td><input type ="text" name="userName" placeholder="Username"/></td>
</tr>

<tr>
<td>Password</td>
    <td><input type ="password" name="userPassword" placeholder="Password"/></td>
</tr>
<tr>
<td>confirmPassword</td>
    <td><input type ="password" name="userConfirmPassword" placeholder="ConfirmPassword"/></td>
</tr>
<tr>
<td>phone</td>
    <td><input type ="text" name="userPhone" placeholder="Phone"/></td>
</tr>
<tr>
<td>email</td>
    <td><input type ="text" name="userEmail" placeholder="Email"/></td>
</tr>
<tr>
<td>Address</td>
    <td><input type ="text" name="userAddress"/></td>
</tr>
</table>

<input type="button" value="Register" onclick="fun()"></form>
</head>
<body>

</body>
</html>