<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
    opacity: 0.9;
    filter: alpha(opacity=30);
}</style>

</head>
<body style="background-image:url('/KidsCampPortal/images/image009.jpg');">
<div style="width:100%;height:100%;font-family: Cousera new;font-size: 30px">
<table style="margin:auto;width: 500px;height: 500px">

<form name="parentregistration" method="post" action="/kidscampportal/parentregistration">
<tr><th>Parentid:</th><th><input type="text" name="Parentid" value="Parentid"></th></tr>
<tr><th>Password:</th><th><input type="password" name="Password" value="Password"></th></tr>
<tr><th>Name:</th><th><input type="text" name="Name" value="Name"></th></tr>
<tr><th>Address:</th><th><input type="text" name="Address" value="Address"></th></tr>
<tr><th>Phoneno:</th><th><input type="phone" name="Phoneno" value="Phoneno"></th></tr>
<tr><th>Email:</th><th><input type="email" name="Email" value="Email"></th></tr>
<tr><th>Date:</th><th><input type="date" name="Date" value="Date"></th></tr>
<tr><th><button type="Submit">submit</button></th></tr>
</form>

</table></div>
</body>
</html>