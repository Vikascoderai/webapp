<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<script type="text/javascript"></script>
<script>
function main()
{
	b=true
	var ui=document.getElementById("txtuserid").value
	var upass=document.getElementById("txtuserpass").value
	//alert(ui)
	if(checkEmpty(ui)==false)
		{
		//alert("userId is needed")
		document.getElementById("msguserid").innerHTML="user id needed"
		b=false
		}
	else
		{
		document.getElementById("msguserid").innerHTML=""
		}
	if(checkEmpty(upass)==false)
	{
	//alert("userpassword is needed")
	document.getElementById("msguserpass").innerHTML="user password is needed"
	b=false
	}
	else
	{
	document.getElementById("msguserpass").innerHTML=""
	}
	return b
}

</script>
<script>
function myFunction() {
    var x = document.getElementById("txtuserpass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>
</head>
<body style="margin:0px">
<style type="text/css">
#1{
    opacity: 0.9;
filter: alpha(opacity=30);
}</style>
<%
String msg=(String)request.getAttribute("ms");
%>
<div style="width:100%; height:1000px;background-color: cyan;float:left">
<div style="height: 70%;width: 70%;background-image: url('/kidscampportal/images/kid8.jpg'); margin: auto;margin-top: 100px">
<div id="1" style="height: 60%;width: 80%;margin-left:10%;padding-top: 60px ">
<h3 style="text-align: center;font: bold;font-family: sans-serif;">Account Login </h3>
<h4 style="text-align: center;">Sign in to your account</h4>
<form method="post" action="/kidscampportal/Login" onsubmit="return main()">
<table  style="margin-left:250px;margin-top: 30px;">
<tr>
<th>UserID</th>
<th><input type="text" id="txtuserid" name="txtuserid" placeholder="userid" ></th></tr>
<tr height="10px">  </tr>
<tr>  </tr>
<tr><th>Password</th>
<th><input type="password" id="txtuserpass" name="txtuserpass" placeholder="password" ></th></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><th></th><td><input type="checkbox" onclick="myFunction()">Show Password</td></tr>

<th><button style="margin-top: 30px;margin-left: 30px;" type="submit">LogIn</button></th></tr>
<tr>
<th></th>
<td><span id="msguserid"></span></td>
<th></th>
<td><span id="msguserpass"></span></td>
</tr>
</table>

<%if(msg!=null)
	{%>
	<script >
	alert()
	</script>
	//<h3 style="color:red"><%=msg %></h3>
<%} %>

</form>
</div>
</div>
</div> 
</body>
</html>





