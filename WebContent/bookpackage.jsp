<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>.
.icon-bar {
  position: fixed;
  top: 50%;
  transform: translateY(-50%);
}

.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}

.icon-bar a:hover {
    background-color: #000;
}

.facebook {
  background: #3B5998;
  color: white;
}

.twitter {
  background: #55ACEE;
  color: white;
}

.google {
  background: #dd4b39;
  color: white;
}

.linkedin {
  background: #007bb5;
  color: white;
}

.youtube {
  background: #bb0000;
  color: white;
}
body, html {
  height: 100%;
  margin: 0;
  font: 400 15px/1.8 "Lato", sans-serif;
  color: black;
  overflow-x:hidden;
}

.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container 
{
  max-width: 1000px;
  position: relative;
  margin: auto;
}



/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}



/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

/*navbar----*/
#navbar 
{
  overflow: hidden;
  background-color: black;
  
   padding: 50px 10px; /* Large padding which will shrink on scroll (using JS) */
  transition: 0.4s;
  top: 0;
  width: 100%;
   z-index: 50;
}
#navbar a 
{
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
 padding: 12px;
  text-decoration: none;
   font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

#navbar a:hover {
  background: #ddd;
  color: black;
}
#navbar #logo {
  font-size: 35px;
  font-weight: bold;
  transition: 0.4s;
}
#navbar a.active {
  background-color: dodgerblue;
  color: white;
}

#navbar-right {
  float: right;
}
@media screen and (max-width: 580px) 
{
  #navbar {
    padding: 20px 10px !important;
  }
  #navbar a {
    float: none;
    display: block;
    text-align: left;
  }
  #navbar-right 
  {
    float: none;
  }
}
  .footer 
  {
   
   left: 0;
   bottom: 0;
   height:24%; 
   width: 100%;
   background-color: black ;
   color: white;
   text-align: center;
   display: block;
}

</style>

</head>
<body>
<%
	if(session.getAttribute("user_id")==null)
	{
		response.sendRedirect("LoginPage.jsp");
	}
	session.setAttribute("package_id",request.getParameter("package_id"));
	
%>
<div id="navbar">
  <a href="#default" id="logo">JUNGLE SAFARI</a>
  <div id="navbar-right">
    <a class="active" href="#home"><i class="fa fa-fw fa-home"></i>Home </a>
  <a href="#Sanctuaries"><i class="fa fa-fw fa-search"></i>Sanctuaries</a>
  <% if(session.getAttribute("emailid")==null && session.getAttribute("admin_id")==null) 
  {
  	out.print("<a href='LoginPage.jsp'><i class='fa fa-fw fa-user'></i>Sign In</a>");
  	out.print("<a href='SignUp.jsp'><i class='fa fa-fw fa-user'></i>Sign Up</a>");
  	out.print("<a href='adminsign.jsp'><i class='fa fa-fw fa-user'></i>admin</a>");

  }
  else 
  {
	  out.print("<a href='LogoutServlet'><i class='fa fa-fw fa-user'></i>Log Out</a>");
  }
  %>
  <a href="#contact"><i class="fa fa-fw fa-envelope"></i>Contact</a>
</div>
</div>

<br>
<br>

      <h1 style=" font-size:50px; text-align:center;">| Booking Form</h1>


<h2 style="text-align: center;"></h2>
 <br>
 <br>
 <%
	String package_id=request.getParameter("package_id");
 	String admin_id=request.getParameter("admin_id"); 	
 	String no_of_seats_available=request.getParameter("no_of_seats_available");
%>
<div class="container" style="margin-left: 29%">
  <form name="bookform" action="book" method="post" onsubmit="return validate()">
    <div class="form-group" style="width: 50%">
      <label for="pname"> Name :</label>
      <input type="text" class="form-control"  placeholder="Enter Name" name="pname" >
    </div>
    <div class="form-group" style="width: 25%">
      <label for="email">Email :</label>
      <input type="email" class="form-control"  placeholder="Enter Email" name="email" >
    </div>
    <div class="form-group" style="width: 25%">
      <label for="City">City :</label>
      <input type="text" class="form-control"  placeholder="Enter City " name="city" >
    </div>
    <div class="form-group" style="width: 25%; ">
      <label for="phone">Phone :</label>
      <input type="text" class="form-control" placeholder="Enter Phone no."  name="phone" >
    </div>
    <div class="form-group" style="width: 13%">
        <label for="adults">No. of Adults :</label>
        <select class="form-control" name="no_of_adults">
          <option value="0">0</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
        </select>
    </div>
    <div class="form-group" style="width: 13%">
        <label for="children">No. of Children :</label>
        <select class="form-control" name="no_of_children">
          <option value="0">0</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
        </select>
    </div>

    <div class="form-group" style="width: 13%">
          <label for="guides">Need of Guide :</label>
          <label class="radio-inline">
            <input type="radio" name="optradio" checked >yes
          </label>
          <label class="radio-inline">
            <input type="radio" name="optradio">no
          </label>
    </div>
      </div>
              <input type="hidden" value="<%= package_id%>"  name="package_id"></input>
              <input type="hidden" value="<%= admin_id%>"  name="admin_id"></input>
              <input type="hidden" value="<%=  no_of_seats_available%>"  name="no_of_seats_available"  ></input>
              
    <button type="submit" class="btn btn-default" style="margin-left: 35%">Submit</button>
  </form>
  <br>
  <br>
  <br>

<div class="footer">

</div>
<script >
function validate()
{
	
	var x = document.forms["bookform"]["no_of_seats_available"].value;
	var no_adults=document.forms["bookform"]["no_of_adults"].value;
	var no_children=document.forms["bookform"]["no_of_children"].value;
	var sum=+no_adults+ +no_children;
	if(x>=sum){
		return true;
		
	}
	alert("Seats not available!!! Available seats="+x);
	return false;
}

function scrollFunction() {
    if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
        document.getElementById("navbar").style.padding = "30px 10px";
        document.getElementById("logo").style.fontSize = "25px";
    } else {
        document.getElementById("navbar").style.padding = "80px 10px";
        document.getElementById("logo").style.fontSize = "35px";
    }
}


</script>
</body>
</html>