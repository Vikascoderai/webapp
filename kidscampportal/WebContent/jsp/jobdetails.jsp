<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,kidscampportal.dbutils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="height:100px;width:500px;">
   <% 
	   String strsql="select * from jobdescription ";
	   ResultSet rs1=CrudOperation.getData(strsql);
	   %>
	   
	   <% 
	   while(rs1.next())
		   { String nid=rs1.getString("jobid");
		   %>
		   <li ><a href="/kidscampportal/jsp/detailsofjob.jsp?ms=<%=nid %>" style="color:red;font-size:30px;"><%=rs1.getString("postname") %></a></li>
	   <% } %>
	   </div>
 

</body>
</html>