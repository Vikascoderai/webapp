<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="height:400px;background-color: magenta;width:100% ;font-family:arial;font-size:20px;">
<form method="post" action="/kidscampportal/Uploadjobs">
<table style="margin:auto;">
<tr>
<th>jobid</th>
<th><input type="text" name="jobid"></th>
</tr>

<tr>
<th>Organiserid</th>
<th><input type="text" name="ozid"></th>
</tr>
<tr>
<th>postname</th>
<th><input type="text" name="pname"></th>
</tr>

<tr>
<th>noofseats</th>
<th><input type="text" name="nos"></th>
</tr>

<tr>
<th>lastdate</th>
<th><input type="date" name="ldate"></th>
</tr>
<tr>
<th>postdate</th>
<th><input type="date" name="pdate"></th>
</tr>

<tr>
<th>description</th>
<th><textarea rows=10 cols=15 name="desc"></textarea></th>
</tr>


<tr>
<th colspan=2><button type="submit" style="height:50px;width:80px;font-size:20px;">submit</button></th>
</tr>

</table>

</form>


</div>

</body>
</html>