<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,kidscampportal.dbutils.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String id=request.getParameter("eventid");
String strsql="select * from cityevent where eventid=?";
ResultSet rs=CrudOperation.getData(strsql,id);

%>
<table border="3" style="background-color: grey; color: NavyBlue">
<tr><th>Name</th><th>Placeid</th></tr>
<%
while(rs.next())
{

%>
<tr><th><%=rs.getString("city") %></th>
<th><%=rs.getString("eventid") %>
</th></tr>

<% }%>




</table>
</body>
</html>