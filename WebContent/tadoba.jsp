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
<meta charset="UTF-8">
<title>Tadoba</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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


body, html {
  height: 100%;
  margin: 0;
  font: 400 15px/1.8 "Lato", sans-serif;
  color: black;
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
   height:30%; 
   width: 100%;
   background-color: black ;
   color: white;
   text-align: center;
   display: block;
}
.section
{
  position: relative;
  padding-top: 4rem;
  padding-bottom: 4rem;
} 
.section-lg
{
  padding-top: 6rem;
  padding-bottom: 6rem;
}
.container-new
{
  width: 100%;
  margin-right: auto;
  margin-left: auto;
  padding-left: 15px;
  padding-right: 15px;
}
@media (min-width: 576px)
{
  .container-new
  {
    max-width: 540px;
  }
}
.pt-lg-0,
    .py-lg-0
    {
        padding-top: 0 !important;
    }
.row
{
    display: flex;

    margin-right: -15px;
    margin-left: -15px; 

    flex-wrap: wrap;
}
.center
{
    left: 50%;

    transform: translateX(-50%);
}

.col-lg-12
{
  position: relative;

    width: 100%;
    min-height: 1px;
    padding-right: 2s5px;
    padding-left: 25px;
}
.col-lg-4
{
    position: relative;

    width: 30%;
    min-height: 1px;
    padding-right: 20px;
    padding-left: 20px;
}
.card
{
    position: relative;

    display: flex;
    flex-direction: column;

    min-width: 0;
    word-wrap: break-word;

    border: .0625rem solid rgba(0, 0, 0, .05);
    border-radius: .25rem; 
    background-color: #fff;
    background-clip: border-box;
}
.card-lift--hover:hover
{
    transition: all .15s ease; 
    transform: translateY(-20px);
}
@media screen and (prefers-reduced-motion: reduce)
{
    .card-lift--hover:hover
    {
        transition: none;
    }
}
.shadow
{
    box-shadow: 0 15px 35px rgba(50, 50, 93, .1), 0 5px 15px rgba(0, 0, 0, .07) !important;
}
.border
{
    border: .0625rem solid #e9ecef !important;
}
.card-body
{
    padding: 1.5rem; 

    flex: 1 1 auto;
}
.btn
{
    font-size: 1rem;
    font-weight: 600;
    line-height: 1.5;
    display: inline-block;
    padding: .625rem 1.25rem;
    -webkit-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
    transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out; 
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    border: 1px solid transparent;
    border-radius: .25rem;
}
.btn-primary
{
    color: #fff;
    border-color: #5e72e4;
    background-color: #5e72e4;
    box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08);
}
</style>
</head>
<body>



<div id="navbar">
  <a href="#default" id="logo">JUNGLE SAFARAI</a>
  	<div id="navbar-right">
    	<a class="active" href="index.jsp"><i class="fa fa-fw fa-home"></i>Home </a>
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
<h1 style=" font-size:50px; text-align:left;">&nbsp &nbspTadoba National Park</h1>
	<p><font size="5px">&nbsp  &nbsp &nbsp &nbspNagpur, Maharashtra. Established since 1955. <br> &nbsp &nbsp &nbsp &nbspFamous for – Tigers, Leopards, Sloth bears, Wild dogs, Migratory Birds, Eagles & Owls, Boat Safari, Jungle Safari</font></p>
     <br>
     <div class="container" style="width:70%">
  		<div id="myCarousel" class="carousel slide" data-ride="carousel">
    	<!-- Indicators -->
    	<ol class="carousel-indicators">
      		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      		<li data-target="#myCarousel" data-slide-to="1"></li>
      		<li data-target="#myCarousel" data-slide-to="2"></li>
    	</ol>
    	<!-- Wrapper for slides -->
    	<div class="carousel-inner">
      		<div class="item active">
        	<img src="Tadoba1.jpg" style="width:100%;height:50%;">
      	</div>
      	<div class="item">
        	<img src="tadoba3.jpg"  style="width:100%;height:50%;">
      	</div>
    
      	<div class="item">
        	<img src="tadoba4.jpg"  style="width:100%;height:50%;">
      	</div>
    	</div>

<!-- Left and right controls -->
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
   <span class="glyphicon glyphicon-chevron-left"></span>
   <span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
   <span class="glyphicon glyphicon-chevron-right"></span>
   <span class="sr-only">Next</span>
 </a>
  </div>
</div>
<br><br>
     
  <div role="main" >
    <p><h2>About Tadoba Andhari Tiger Reserve :</h2>
	<font size="4px">	
	Considered as one of the oldest and largest National park in the country, Tadoba National Park lies in the Chandrapur district of Maharashtra. Commonly abbreviated to TATR, this tiger reserve is a combination of Tadoba National Park and Andhari Wildlife Sanctuary. In 1955 it was established as a national park and later in 1995 as a Tiger reserve.
	<br>
	<br>
		The name ‘Tadoba’ is the name of the God ‘Taru’ who is worshiped by the tribal people who live in the dense forests of this area. The Andhari River which flows through the forest gives the name Andhari. Earlier the kings of Gond ruled this forest area near Chimur hills. The Gond fort is situated in Chandrapur area.
	<br>
	<br>
		The total area of under the Project Tiger is 1727.6 sq.kms with core area of 625.82 sq.kms and buffer area of 1101.78 sq.kms. Tadoba National Park is closed every Tuesday, whereas the park remains closed during monsoons but the buffer area remains open for tourism. The peak season for visiting Tadoba National Park starts from October 15th to 30th June every year.
	<br>
	<br>
	Closest Airport : Nagpur (180 kms approx.)<br>
	Closest Railway Station : Chandrapur (47 kms) Nagpur (180 kms) </p>

<%


String url="jdbc:mysql://localhost:3306/wildlife";
String username="root";
String pass="579453";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,username,pass);

String sql3="delete from package where sdate < now()";

PreparedStatement st3=con.prepareStatement(sql3);
st3.executeUpdate();

String sql="select * from package where admin_id=1";
String sql1="select description,sname,duration from weather,season where admin_id=1 and weather.s_id=season.s_id ";

String sql2="select * from best_places where admin_id=1";

	
	PreparedStatement st=con.prepareStatement(sql);
	ResultSet rs=st.executeQuery();
	
	PreparedStatement st1=con.prepareStatement(sql1);
	ResultSet rs1=st1.executeQuery();
	
	
	PreparedStatement st2=con.prepareStatement(sql2);
	ResultSet rs2=st2.executeQuery();
	
	


	
out.println("<hr><p style='text-align:center;font-weight:bold;'>Weather</p><hr>");
out.println("<div class='container'><table class='table table-hover'>");

out.println("<tr> <th>Season Name</th> <th>Duration</th> <th>Details</th> </tr>");	
while(rs1.next())
{
	out.println("<tr><td>"+rs1.getString("sname") +"</td>");
	out.println("<td>" + rs1.getString("duration") +"</td>");
	out.println("<td>"+rs1.getString("description") +"</td></tr>");
}
out.println("</table></div>");

out.println("<hr><p style='text-align:center;font-weight:bold;'>Nearby Places</p><hr>");
out.println("<div class='container'><table class='table table-hover'>");
out.println("<tr> <th>Name of the place</th> <th>Description</th> <th>How to Reach</th> <th>Famous for</th> <th>Best time to visit</th></tr>");	
while(rs2.next())
{
	out.println("<tr><td>"+rs2.getString("pname") +"</td>");
	out.println("<td>" + rs2.getString("description") +"</td>");
	out.println("<td>" + rs2.getString("how_to_reach") +"</td>");
	out.println("<td>" + rs2.getString("Famous_for") +"</td>");
	out.println("<td>"+rs2.getString("best_time_to_visit") +"</td></tr>");
}
out.println("</table></div>");

%>

<hr><hr>

<section class="section section-lg pt-lg-0 mt--200">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12">
            <div class="row row-grid">
<% 

while (rs.next ())
{
 	out.println(" <div class='col-lg-4'><div class='card card-lift--hover shadow border-0'><div class='card-body py-5'>");
 out.println(" <h4 style='text-align:centre;color:green;'>"+rs.getString("pname")+"</h4><hr>");
 out.println("<h5><p>Number of days::"+rs.getInt("no_of_days")+"<br><hr>Number of seats available::"+rs.getInt("no_of_seats_available")+"</p></h5>");
 
 if(rs.getInt("no_of_seats_available")==0)
 {
	 out.println("<p style='color:red;'> Booking full</p>");
 }
 
 out.println("<p><h5><hr>Adult Rate::"+rs.getInt("a_rate")+ "<br><hr>Child Rate::"+rs.getInt("c_rate")  +"</h5></p><hr>");
 out.println("<p><h5>Details::"+rs.getString("details")+"</h5></p><hr>");
 
 out.println("<p><h5> Starting Date::"+rs.getDate("sdate")+"</h5></p><hr>");
 out.println("<p><h5>Reporting Place::"+rs.getString("reporting_place")+"</h5></p><hr>");
 out.println("<p><h5>Reporting Time::"+rs.getTime("reporting_time")+"</h5></p><hr>");
 out.println("<p><h5><b>Discount::"+rs.getInt("discount")+"%</b></h5></p>");
 
 out.println("<input type='button' value='Book Now' onclick=booknow("+ rs.getInt("package_id")+ ","+  rs.getInt("admin_id")+","+rs.getInt("no_of_seats_available")+ ")>"  +  "</input>");
 out.println("</div></div></div>");
 out.println("<hr><hr>");
 
} 

%>



            </div>
          </div>
        </div>
     </div>
  </section>

<div class="footer">

</div>
<script >
function scrollFunction() {
    if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
        document.getElementById("navbar").style.padding = "30px 10px";
        document.getElementById("logo").style.fontSize = "25px";
    } else {
        document.getElementById("navbar").style.padding = "80px 10px";
        document.getElementById("logo").style.fontSize = "35px";
    }
}
function booknow(package_id,admin_id,no_of_seats_available)
{
	window.location.href="bookpackage.jsp?package_id=" + package_id+"&admin_id="+ admin_id+"&no_of_seats_available="+no_of_seats_available;	
	
}

</script>
</body>
</html>