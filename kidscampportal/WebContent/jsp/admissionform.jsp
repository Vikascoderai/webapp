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
<body style="background-image:url('/KidsCampPortal/images/kids.jpg');">
<div style="widtd:100%;height:100%;font-family: Cambria; font-size: 30px;">
<form name="admissionform" metdod="post" action="/KidsCampPortal/Admission" enctype="multipart/form-data">
<table style="margin:auto;widtd: 500px;height: 500px">


<tr><td>Parentid:</td><td><input type="text" name="parentid" value="Parentid"></td></tr>
<tr><td>Programid:</td><td><input type="text" name="programid" value="Programid"></td></tr>
<tr><td>Campid:</td><td><input type="text" name="campid" value="Campid"></td></tr>
<tr><td>ChildName:</td><td><input type="text" name="childname" value="ChildName"></td></tr>
<tr><td>Age:</td><td><input type="text" name="age" value="Age"></td></tr>
<tr><td>Gender</td><td><input type="radio" name="gender" value="male">male</td>
<br><br>
<td><input type="radio" name="gender" value="female">female</td>
</tr>
<tr><td>SchoolName</td><td><input type="text" name="schoolname" value="SchoolName"></td></tr>
<tr><td>TransactionNumber</td><td><input type="text" name="transno" value="TransactionNumber"></td></tr>
<tr><td>Status</td><td><input type="text" name="status" value="Status"></td></tr>
<tr><td>Pic</td><td><input type="file" name="pic" value="Pic"></td></tr>
<tr><td colspan="2"><button type="Submit">Submit</td><td></button></td></tr>
</table>
</form>
</div>
</body>
</html>