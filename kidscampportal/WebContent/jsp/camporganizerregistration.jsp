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
<body style="background-image:url('/KidsCampPortal/images/image02.jpg');">
<div style="width:100%;height:100%;font-family: Arial;">
<table style="margin:auto;width: 500px;height: 500px;font-size: 30px">

<form name="camporganizerregistration" method="post" action="/kidscampportal/camporganizerregistration">
<tr><th>Campid:</th><th><input type="text" name="Parentid" value="Campid"></th></tr>
<tr><th>Password:</th><th><input type="password" name="Password" value="Password"></th></tr>
<tr><th>CampName:</th><th><input type="text" name="Name" value="CampName"></th></tr>
<tr><th>CampAddress:</th><th><input type="text" name="Address" value="CampAddress"></th></tr>
<tr><th>CampPhoneno:</th><th><input type="phone" name="Phoneno" value="CampPhoneno"></th></tr>
<tr><th>CampEmail:</th><th><input type="email" name="Email" value="CampEmail"></th></tr>
<tr><th>Date:</th><th><input type="date" name="Date" value="Date"></th></tr>
<tr><th>Description</th><th><input type="text" name="Date" value="Description"></th></tr>
<tr><th colspan="2"><button type="Submit">submit</th><th></button></th></tr>
</form>

</table></div>
</body>
</html>