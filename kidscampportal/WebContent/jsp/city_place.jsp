<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*,kidscampportal.dbutils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="/kidscampportal/bsfiles/jquery-3.3.1.min.js"></script>
<script>
  
  $(document).ready(function()
  		
  		{
      $("#cmbcity").change(
      		function(){
      			var ci=this.value;
      			//alert(ci)
       
      			 $.get("/kidscampportal/jsp/showplaces.jsp",
      			        {
      			          eventid:ci
      			          
      			        },
      			        function(data,status)
      			        {
      			        	//if(data=="")
      			          //  alert("Data: " + data + "\nStatus: " + status);
      			              $("#divplaces").html(data);
      			             $("#divplaces").show(); 
      			             //$("#div1").hide(5000);
      			             
      			        });
      			
      			
      			
      });
  });
  
</script>
</head>
<body>
<select id="cmbcity">
<option value="default">selectcity</option>
<%
String strsql="select * from cityname";
ResultSet rs=CrudOperation.getData(strsql);
while(rs.next())
{
	String cid=rs.getString("eventid");
	String cname=rs.getString("city");
	%>
<option value="<%=cname%>"><%=cid%></option>	
<%} %>	
</select>
<div id="divplaces" style="width:100%;height:600px;display:none;overflow:scroll"></div>

</body>
</html>