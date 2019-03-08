<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="width:100%;height:900px;font-family: Arial;">
<table style="margin:auto;width: 500px;height: 500px;font-size: 30px">

<form name="uploadcityevents" metdod="post" action="/kidscampportal/UploadCityEvents">
<tr><td>EventId:</td><td><input type="text" name="eid" value=""></td></tr>
<tr><td>Event Name:</td><td><input type="text" name="ename" value=""></td></tr>
<tr><td>Date:</td><td><input type="date" name="date" value=""></td></tr>
<tr><td>City:</td><td><input type="text" name="city" value=""></td></tr>
<tr><td>Venue Address:</td><td><input type="text" name="vadd" value=""></td></tr>
<tr><td>Url page:</td><td><input type="email" name="url" value=""></td></tr>
<tr><<td>Description</td><td><textarea name="desc" rows="10" cols="20"></textarea></td></tr>
<tr><td colspan="2"><button type="Submit">submit</td><td></button></td></tr>
</form>
</table></div>
</body>
</html>