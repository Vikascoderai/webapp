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
	   
<div style="height:900px;width:800px;border:solid;margin:auto">
<% 
String id=request.getParameter("ms");
//int id=Integer.parseInt(request.getParameter("ms"));
String strsql1="select * from jobdescription  where jobid=?";
ResultSet rs=CrudOperation.getData(strsql1,id);
if(rs.next())
{

%>

<table>
<tr><th><h1><font color=black> postname - </font> </h1></th><th ><h2 > <font color=blue> <%=rs.getString("postname") %></font> </h2> </th></tr>

<tr><th><h1><font color=black> No of Seats - </font> </h1></th><th ><h2 > <font color=blue> <%=rs.getString("noofseats") %></font> </h2> </th></tr> 
<tr><th><h1><font color=black> LastDate - </font> </h1></th><th ><h2 > <font color=blue> <%=rs.getString("lastdate") %></font> </h2> </th></tr> 
<tr><th><h1><font color=black> PostDate- </font> </h1></th><th ><h2 > <font color=blue> <%=rs.getString("postdate") %></font> </h2> </th></tr> 

<tr><th><h1><font color=black>Description-   </font></h1></th>
<th ><h2 > <font color=blue><textarea style="background-color:white;font-size:20px;" rows=10 cols=30><%=rs.getString("description")%>
</textarea></font></h2></th></tr>
<tr><th><h1><font color=black> Apply Now - </font> </h1></th><th ><h2 > <a href="#">click_here</a></font> </h2> </th></tr>

<%} %>
</table>
</div>	  

</body>
</html>