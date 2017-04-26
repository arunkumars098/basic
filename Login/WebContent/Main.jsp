<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
 input[type=text] {
    width: 180px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 220px;
}
div.container {
  float:top;
  height: 100px;
  width: 100%;
  
 }
ul{
	list-style-type: none;
	margin: 0;
	padding: 0;
}


li{
	float: left;
}
a:link, a:visited{
display: block;
background-color:#1eb6e1;
width: 135px;
color: white;
text-decoration: none;
text-align: center;
padding: 5px;
}
a:hover,a:active{
background-color:#4686ec;
}

header {
    padding: 1em;
    color: white;
    background-color: #13ece1;
    clear: left;
    text-align: left;
}
header1{
text-align:right;
margin:24px 0 12px 0;

}

#leftContent {
  float:left;
  width: 35%;
  
 }

 #rightContent {
   float: right;
   width: 30%;
  
  }
  #containers {
  float:bottom;
  height: 50%;
  width: 100%;
  
 }
#leftContents {
  float:left;
  width: 50%;
  
  align: centre;
 }
 div ul{
 
 float: center;
 
 list-style-type: none;
 }

 #mainContents {
   float: right;
   width: 50%;
   align: centre;
   
  }

 #mainContent {
    width: 35%;
    float: right;
   
   
  }
</style>
</head>
<body >
<form method="get" action="best" >
<div id="container" style="background-color:#afe9f5">
<header>
   <h3>City Gallery</t>
   <header1>
   <img src="car.jpg" alt="Avatar" style="float:right" width=8% height=10% valign="middle"></t><button type="submit" style="float:right">GO</button></t>
   <input type="text" placeholder="search here" style="float:right" ></t>
   
   </header1>  
 </h3>
 </header>
<table border=0 style="width:100%;background-color:#1eb6e1;">
	<tr style="width:100%">
		<td style="width:100%">
			<ul>
				<li><a href="#">Purchase Orders</a></li>
				<li><a href="#">Customer Orders</a></li>
				<li><a href="#">ASNs</a></li>
				<li><a href="#">Shipments</a></li>
				<li><a href="#">Bookings</a></li>
				<li><a href="#">Invoice</a></li>
				<li><a href="#">Visibility</a></li>
				<li><a href="#">Cimchat</a></li>
				<li><a href="#">Settings</a></li>
			</ul>
		</td>
	</tr>
</table><p style="background-color:#5c7458;margin-top:0px;">NEW PURCHASE ORDER</p><br>
  <div id="leftContent" style="background-color:#afe9f5">          <nav>
  <ul>
     <table  class="tableContainer" cellspacing="20px">
 <tr  >
  <td>  P.O Number  </td>
  <td> <input type="text"  name="ponumber" size="20" required >   </td>
  </tr>
  
   <tr>
  <td> P.O Issue Date</td>
  <td> <input type="text"  name="poissuedate" size="20" required >  </td>
  </tr>
  
  <tr>
  <td> *Ship Form</td>
  <td> <input type="text"  name="shipfrom" size="20" required >  </td>
  </tr>
  
  <tr>
  <td> Trans. Resp</td>
  <td> <input type="text"  name="transresp" size="20" required >  </td>
  </tr>
  
  <tr>
  <td> Designated Mode</td>
  <td> <input type="text"  name="designstedmode" size="20" required >  </td>
  </tr>
  
  </table>   
  </ul>
</nav>
  </div>
  <div id="mainContent" style="background-color:#afe9f5"><nav>
  
  <table  class="tableContainer" cellspacing="20px">
 <tr  >
  <td>  Priority  </td>
  <td> <input type="text"  name="priority" size="20" required >   </td>
  </tr>
  
   <tr>
  <td> Seller/Vendor</td>
  <td> <input type="text"  name="seller" size="20" required >  </td>
  </tr>
  
  <tr>
  <td> Bill To</td>
  <td> <input type="text"  name="billto" size="20" required >  </td>
  </tr>
  <tr>
  <td> Bill No</td>
  <td> <input type="text"  name="billno" size="20" required >  </td>
  </tr>
  
  <tr>
  <td> Must Ship Together</td>
  <td> <input type="checkbox" value="true" style="zoom:1.11" >  </td>
  </tr>
 
  
  
  
  </table>
  
</nav>
  </div>
  <div id="rightContent" style="background-color:#afe9f5"><nav>
  <ul>
  <table  class="tableContainer" cellspacing="20px">
 <tr  >
  <td>  Status  </td>
  <td> <input type="text"  name="status" size="20" required >   </td>
  </tr>
  
   <tr>
  <td> *Due Date</td>
  <td> <input type="text"  name="duedate" size="20" required >  </td>
  </tr>
  
  <tr>
  <td> *Ship To</td>
  <td> <input type="text"  name="shipto" size="20" required >  </td>
  </tr>
  
  <tr>
  <td> Incoterms</td>
  <td> <input type="text"  name="oncoterms" size="20" required >  </td>
  </tr>
  
  <tr>
  <td> Carrier</td>
  <td> <input type="text"  name="carrier" size="20" required >  </td>
  </tr>
  
  </table>   
  </ul>
</nav>
  </div>
</div><br>
<div id="containers" style="background-color:#afe9f5">
  <div id="leftContents" style="background-color:#afe9f5">          <nav>
  <ul>
  <h1 style="color:#00dd48">Orgin</h1>
  <table  class="tableContainer" cellspacing="20px">
 <tr  >
  <td>  Ship From  </td>
  <td> <input type="text"  name="search" size="40" required >   </td>
  </tr>
  
   <tr>
  <td> Street Adress</td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> City </td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> Country</td>
  <td> <input type="text"  name="country" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> State/Province</td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> Country</td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> Picup Start</td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> Picup End  </td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  </table>   
         
  </ul>
</nav>
  </div>
  <div id="mainContents"  style="background-color:#afe9f5"><nav>
  <ul>
  <h1 style="color:#00dd48">Destination</h1>
   <table  class="tableContainer" cellspacing="20px">
 <tr  >
  <td>  Ship To  </td>
  <td> <input type="text"  name="search" size="40" required >   </td>
  </tr>
  
   <tr>
  <td> Street Address</td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> City </td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> Country</td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> State/Province</td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> Items</td>
  <td> <input type="text"  name="items" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> Delivery Start</td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  <tr>
  <td> Delivery End  </td>
  <td> <input type="text"  name="search" size="40" required >  </td>
  </tr>
  
  </table>
  </ul>
</nav>
  </div>
 <div tyle="background-color:#afe9f5">
 
 <center> <input type="reset" value="Cancel" name="calcel" size="100" style="height:50px;width:100px" >
  <input type="submit" value="Submit" name="submit"  size="100" style="height:50px;width:100px" ></center><
 </div>
  </div>
  
</form>

</body>
</html>
