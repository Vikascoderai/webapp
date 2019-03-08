<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
 <link rel="stylesheet" type="text/css" href="/KidsCampPortal/css/style.css">


<style type="text/css">

table {
    opacity: 0.9;
    filter: alpha(opacity=30);
}


  .dropbtn {
     
    padding: 16px;
    font-size: 16px;
    border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: grey;
    min-width: 150px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}
  
/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: pink;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #3e8e41;}


</style>
</head>
<body style="margin: 0px">
  <div style="width: 100%;height: 1000px;">
      <div style="width: 100%;height: 150px;background-color: white">
          <div style="width: 120px;height: 120px;background-color: red;float: left;margin-left: 100px;margin-top: 20px">
           logo
          </div>
          
           <div style="width: 200px;height: 50px;background-color: red;float: left;text-align: center;margin: 50px;">
              Kids Camp Portal
          </div>
          
           <div style="width: 200px;height: 50px;background-color: red;float: right;text-align: center;margin: 50px;">
             <a><input type="text"name="txtsearch"placeholder="Search"></a>
          </div>
      </div>
      
      <div style="width: 100%;height: 50px;background-color: red">
      
         <div style="width: 100px;height: 100%;float: left;font-family: cursive;font-size: 20px;text-align: center;">
     
           
             <div  style="width: 100%;height: 100%" class="dropdown">
                  <button class="dropbtn">About us</button>
                   <div class="dropdown-content">
                      <a href="/KidsCampPortal/html/aboutus.html">Who we are</a>
                      <a href="/KidsCampPortal/html/history.html">History</a>
                     
                    </div>
               </div>
            
          </div>
          
         
           <div style="width: 100px;height: 100%;float: left;font-family: cursive;font-size: 20px;text-align: center;">
     
            <div  style="width: 100%;height: 100%" class="dropdown">
                  <button class="dropbtn">Programs</button>
                   <div class="dropdown-content">
                      <a href="#">Programs by age</a>
                      <a href="#">Program by area</a>
                      <a href="#">Program by interest</a>
                    </div>
               </div>
          </div>
            <div style="width: 150px;height: 100%;float: left;font-family: cursive;font-size: 20px;text-align: center;">
     
           
              <div  style="width: 100%;height: 100%" class="dropdown">
                  <button class="dropbtn">Registration</button>
                   <div class="dropdown-content">
                      <a href="/KidsCampPortal/jsp/parentregistration.jsp">Register as Parents</a>
                      <a href="/KidsCampPortal/jsp/camporganizerregistration.jsp">Register as Organizer</a>
                     
                    </div>
               </div>
            
          </div>
          
           <div style="width: 150px;height: 100%;float: left;font-family: cursive;font-size: 20px;text-align: center;">
     
             <div  style="width: 100%;height: 100%" class="dropdown">
                  <button class="dropbtn">City Events</button>
                   <div class="dropdown-content">
                      <a href="#">Link 1</a>
                      <a href="#">Link 2</a>
                      <a href="#">Link 3</a>
                    </div>
               </div>
          </div>
          
          <div style="width: 100px;height: 100%;float: left;font-family: cursive;font-size: 20px;text-align: center;">
   
      
            <div  style="width: 100%;height: 100%" class="dropdown">
                  <button class="dropbtn">Employment</button>
                   <div class="dropdown-content">
                      <a href="#">job describtion</a>
                      <a href="#">vacancies</a>
                      <a href="#">Apply</a>
                    </div>
               </div>
            
          </div>
       
          <div style="width: 100px;height: 100%;float: right;font-family: cursive;font-size: 20px;text-align: center;background-color: grey">
     
            <a href="/KidsCampPortal/jsp/login.jsp">Login</a>
          </div>
    
      </div>
      
      <div style="width: 70%;height: 650px;background-color: olive;float: left;background-image:url('/KidsCampPortal/images/kid8.jpg');">
      
      </div>
      <div style="width: 30%;height: 650px;background-color: lime;float: right">
          <div style="width: 100%;height: 200px;background-color: cyan;float: left">
          
                 <div style="width: 70%;height: 50px;font-family: cursive;font-size: 20px;text-align: center;background-color: red;margin: 2px;margin-top: 20px;margin-left: 70px">
     
                   <a href="#">Admission details</a>
                 </div>
                 <div style="width: 70%;height: 50px;font-family: cursive;font-size: 20px;text-align: center;background-color: red;margin: 2px;margin-top: 20px;margin-left: 70px">
     
                   <a href="/KidsCampPortal/jsp/rating_review.jsp">Rating and Review</a>
                 </div>
               </div>
      </div>
      
      <div style="width: 100%;height: 50px;background-color: red;float: left;">
         <div style="width: 100px;height: 100%;float: left;font-family: cursive;font-size: 20px;text-align: center;margin-left: 500px">
     
            <a href="/KidsCampPortal/html/contactdetails.html">Contact us</a>
          </div>
          <div style="width: 200px;height: 100%;float: left;font-family: cursive;font-size: 20px;text-align: center;margin-left: 100px">
     
            <a href="/KidsCampPortal/html/privacypolicy.html">Privacy Policy</a>
          </div>
         
      </div>
      <div style="width: 100%;height: 150px;background-color: black;float: right;">
        
      </div>
      
  </div>
</body>
</html>