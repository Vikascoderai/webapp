<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table {
    opacity: 0.9;
    filter: alpha(opacity=30);
}</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="width:100%;height:1000px;background-color: orange;margin-top: 0px;float:left;margin-left: 0px;border-radius: 10px;background-image:url('/KidsCampPortal/images/kid7.jpg'); ">
<form action="/KidsCampPortal/Feedback" method="post">
<table style="width: 500px;height: 500px;font-size: 30px">
<tr><th>Parentid:</th><th><input type="text" name="uid" value="" required="required"></th></tr>
<tr><th>Campid:</th><th><input type="text" name="cid" value="" required="required"></th></tr>
<tr><th>Feedback:</th><th><textarea rows="20" cols="50" name="feedback" placeholder="please provide your valuable feedback so that we can improve our service" required="required" maxlength="1000"></textarea></th></tr>
<tr><th>Date:</th><th><input type="date" value="" name="date"></th></tr>
<tr><th colspan="2"><button style="margin-top: 10px" type="submit">submit</button></th></tr>
</table>
</form>

</div>

</body>
</html>