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
   HttpSession hs=request.getSession(false);
   String userid=(String)hs.getAttribute("userkey");//downcasting or narrowcasting
   userid=userid.toUpperCase();
   
   
   
   %>
<div style="width: 100%;height: 80px;float:left;background-color: grey">

 <h2 style="color: red;">Hello <%=userid%></h2>

</div>

 </div>
  
  <div style="width: 20%;height: 800px; background-color: orange; float: left;">
  
    <%@include file="/WEB-INF/usermenu.html" %>
  
  </div>
  
  <div style="width: 80%;height: 800px; background-color: cyan; float: left;">
      
      <%
      String strsql="select * from Parent where ParentId=?";
      ResultSet rs=CrudOperation.getData(strsql, userid);
     if(rs.next())
     {
    	  
      
    %>
      <div>
        <table style="width: 200px;height: 200px;">
        <tr><th>Name</th><th><%=rs.getString("Name") %></th></tr>
        <tr><th>Email</th><th><%=rs.getString("Phoneno") %></th></tr>
        <tr><th>PhoneNo</th><th><%=rs.getString("Email") %></th></tr>
        <tr><th>PhoneNo</th><th><%=rs.getString("Address") %></th></tr>
        </table>
      
      </div>
      <%}
     rs.close();%>
     
  </div>
  
  <div style="width: 100%;height: 100px; background-color: grey; float: left;">
   
  </div>
  

</body>
</html>