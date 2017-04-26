<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Hai</title>
<style >

div{


 
}
div.relative{

position: relative;
left:  200px;
width: 500px;
  border-radius: 55px;  
    padding: 105px;
    margin: 125px;
    align-right: 100px;
    
background-color: #13ece1;
    text-align: center;
}


}
submit{
height: 400dp;
    width: 10%;
    space: 10dp;

}

title{

color: red;

}



</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title >Login Page</title>

</head>
<body>

<div class="relative">
<p><h1 style="color:white;"><font face="Consolas">LOGIN TO YOUR WEBPAGE </h1></p>
<form method="get" action="test">

<input type="text" placeholder="Enter the UserName" name="user" size="70" style="height:20px" required >

<br><br>

<input type="text" placeholder="Enter the Password"  name="pass" size="70" style="height:20px"required  ><br><br>
Forgot your username or password
<a href="#"> Click here to reset</a>
<input type="submit" value="Login"  size="100" style="height:50px;width:100px">
</form>
</div>
</body>
</html>