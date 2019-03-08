<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
    opacity: 0.9;
    filter: alpha(opacity=30);
}</style>
</head>

<body style="background-image:url('/KidsCampPortal/images/kid8.jpg');">
<h1 style="font-family: cursive;">Please give your valuable review about our service</h1>
<div style="height:100%;width:100%;">
<form>
<table style="margin: auto;width: 400px;height: 400px;font-size: 30px;">
<tr ><th>Organiserid:</th><th><input type="text" name="oid" placeholder="organiser id"></th></tr>

<tr><th>Programid:</th><th><input type="text" name="pid" placeholder="program id"></th></tr>
<tr><th>Rating:</th><th><select name="rating"><option>1.poor</option><option>2.Satisfactory</option><option>3.Good</option><option>4.Very Good</option><option>5.Excellent</option></select></th></tr>
<tr><th>Userid:</th><th><input type="text" name="uid" placeholder="user id"></th></tr>
<tr><th>Date:</th><th><input type="date" name="date" ></th></tr>
<tr><th>Review:</th><th><textarea name="review" rows="10" cols="30" placeholder="please provide your valuable reviews "></textarea>


</table>


</form>
</div>
</body>
</html>