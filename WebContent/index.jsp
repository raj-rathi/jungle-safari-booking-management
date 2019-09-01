<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page
	import ="java.sql.Connection,
 java.sql.DriverManager,
 java.sql.PreparedStatement, java.sql.ResultSet"
 %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Wildlife</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
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

body, html {
  height: 100%;
  margin: 0;
  font: 400 15px/1.8 "Lato", sans-serif;
  color: #777;
  overflow-x:hidden;
}

.bgimg-1, .bgimg-2, .bgimg-3 {
  position: relative;
  opacity: 0.8;
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

}
.bgimg-1 {
  background-image:url("3.jpg");
  min-height: 100%;
}

.bgimg-2 {
  background-image: url("2.jpg");
  min-height: 400px;
}

.bgimg-3 {
  background-image: url("3.jpg");
  min-height: 400px;
}

.caption {
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  text-align: center;
  color: #000;
}

.caption span.border {
  background-color: #111;
  color: #fff;
  padding: 18px;
  font-size: 25px;
  letter-spacing: 10px;
}

h3 {
  letter-spacing: 5px;
  text-transform: uppercase;
  font: 20px "Lato", sans-serif;
  color: #111;
}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1024px) {
    .bgimg-1, .bgimg-2, .bgimg-3 {
        background-attachment: scroll;
    }
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
 padding: 10px;
  text-decoration: none;
   font-size: 23px; 
  line-height: 5px;
  border-radius: 2px;
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
.container
{
  position: relative;
  width: 300px;
}

.image {
  display: block;
  width:375px;
  height: 300px;

}

#one
{
	padding-left: 4%;
	padding-right: 6%;
}
#two
{
	padding-right: 6%;
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: #33CCCC;
  overflow: hidden;
  width: 375px;
  height: 0;
  transition: .5s ease;
}

.container:hover .overlay {
  height: 100%;
}

.text 
{
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
}

  .footer 
  {
   
   left: 0;
   bottom: 0;
   height:30%; 
   width: 100%;
   background-color: black ;
   color: white;
   text-align: center;
   display: block;
}
#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}

.column {
  float: left;
  width: 25%;
  padding: 20px;
  
}
.row :: after
{content:" ";
  clear: both;
  display: table;
}

.column {
  float: left;
  width: 25%;
  padding: 15px;
  padding-top: 20px;
  
}
.row :: after
{content:" ";
  clear: both;
  display: table;
}
.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 125%;
    border-radius: 5px;
    background: white;

}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container1 {
    padding: 2px 16px;
}
@media only screen and (max-width: 600px) {
    .column {
  
  width: 100%;
  padding: 0;
  padding-top: 0;
  
}
.container
{
  position: relative;
  width: 100%;
}

.image {
  display: block;
  width:100%;
  height: 300px;

}
#one
{
	padding-left: 0;
}
.bgimg-2
{
	display:none;
}
}
A
{
	text-decoration: none;
}
hr {
    background-color: white;
    color: dimgrey;
    border: solid 2px white;
    height: 5px;
    width: 1100px;
}

.fa {
  padding: 5px;
  font-size: 20px;
  width: 20px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.5;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}
</style>



</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>
	





<div class="bgimg-1" >
<div id="navbar">
<a href="#default" id="logo">JUNGLE SAFARI</a>
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
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
	  out.print("<a href='Profile.jsp'><i class='fa fa-fw fa-user'></i>Profile</a>");	  
  }
 
  
  
  %>
  
  <a href="#contact"><i class="fa fa-fw fa-envelope"></i>Contact</a>
</div>
</div>
	<div class="caption">
    <span class="border" style="background-color:transparent;margin-top:10px;font-size:45px;color: #f7f7f7;"><b>JUNGLE SAFARI AND WILDLIFE TOURS<hr size="5px" width="70%"></b><font size="5px">JIM CORBETT | TADOBA | PENCH | NAGZIRA | KAZIRANGA </span>
  </div>
</div>


<div style="color: #777;background-color:black;padding-bottom:  400px ">
	<div class="row" style="margin-right: 0px;margin-top : 0px" id="Sanctuaries">
	<center><font face="Garamond" size="8px" color="olivedrab"><pre>Best Wildlife Tour Packages</font></center>
		<div class="column" id="one">
			<div class="container">
				<div class="card">
					<img src="tadoba2.jpg" class="image">
  					<div class="container1">
  						<div class="overlay">
    						<div class="text">
    							<a href="tadoba.jsp">Tadoba<br></a>
    							Chandrapur, Maharashtra
    						</div>
    					</div>
    				</div>
    	 			<h4 style="text-align: center;"><b><font color="black" size="4px">TADOBA NATIONAL PARK</font></b></h4> 
    			</div>
  			</div>
  		</div>
  		<div class="column" id="two">
  			<div class="container">
				<div class="card">
					<img src="jimindex.jpg" class="image">
  					<div class="container1">
  						<div class="overlay">
    						<div class="text">
    							<a href="jim.jsp">Jim Corbett<br></a>
    							Nanital,Uttarakhand
    						</div>
    					</div>
    				</div>
    	 			<h4 style="text-align: center;"><b><font color="black" size="4px">JIM CORBETT WILDLIFE TOUR</font></b></h4> 
    			</div>
  			</div>
  		</div>
  		<div class="column">
  			<div class="container">
				<div class="card">
					<img src="girindex.jpg" class="image">
  						<div class="container1">
  							<div class="overlay">
    							<div class="text">
    								<a href="gir.jsp">Gir<br></a>
    								Jungadh,Gujarat
    							</div>
    						</div>
    					</div>
    	 				<h4 style="text-align: center;"><b><font color="black" size="4px">GIR NATIONAL PARK
    	 				</font></b></h4> 
    			</div>
  			</div>
  		</div>
	</div>
</div>
<div class="bgimg-2">
  <div class="caption">
    <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"></span>
  </div>
</div>

<div style="position:relative;">
  <div style="color:#ddd;background-color:black;text-align:center;padding:50px 80px;text-align: justify;">
  	<h1><center><font>Wildlife Safari Booking | Tour Packages</font></center></h1>
    <p>India, one of the most ideal holiday destinations for tourists across globe known for its royal cultural heritage is also one of the most preferred Tiger Safari and bird watching getaway in the world. Some of the top wildlife safari destinations in India are Bandhavgarh National Park, Pench National Park, Kanha National Park, Tadoba Tiger Reserve, Jim Corbett National Park and Ranthambore National Park.
With a number of Wildlife Sanctuaries & National Parks stretched across the vast subcontinent –Jungle Safari.com offers National Park Tour Packages that have exciting Tiger Safari and Bird-watching opportunities.<br>
Have a look at the safari itinerary options below, chances are, you will discover & do the best Wildlife Safari Booking , that you have at all times dreamt of. With so many Wildlife Safari Booking options, you can craft the great holiday for you and your family.
At Book My Safari.com, the handcrafted packages provide you the prospect to get on a wildlife sojourn to much treasured destinations. Our National Park Tour Packages offer you splendid wildlife and picturesque landscape accompanied by the knowledgeable guides so that you can enjoy memorable time of your life during your tour to some of the best national parks in India.
</p>
  </div>
</div>


<div class="bgimg-3">
  <div class="caption">
    <span class="border" style="background-color:transparent;font-size:25px;color:WHITE;">LET THE NEW ADVENTURES BEGIN</span>
  </div>
</div>

<div style="position:relative;">
  <div style="color:#ddd;background-color:black;text-align:center;padding:50px 80px;text-align: justify;">
  	<h1><center>About Us</center></h1>
    <p>Jungle Safari is proudly India's Biggest, Most Unique and Most efficient travel portal for Wildlife & Photography tours. </p>
  </div>
</div>
<!--div class="bgimg-1">
  <div class="caption">
    <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;">LESS HEIGHT</span>
  </div>
</div-->

<div class="footer">

 <center>Join Us </center>
 <br>
<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-linkedin"></a>
<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a>
 

</div>

<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>

</body>
</html>