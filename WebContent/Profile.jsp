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
<title>Profile</title>
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
<br>


     



<%


String url="jdbc:mysql://localhost:3306/wildlife";
String username="root";
String pass="579453";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,username,pass);

String sql1="select tour_book.book_id,tour_book.name,no_adult,no_child,amount,pname,sdate,no_of_days,np_name from tour_book,package,admin,np where tour_book.package_id=package.package_id and package.admin_id=admin.admin_id and admin.np_id=np.np_id and user_id=?";
	PreparedStatement st1=con.prepareStatement(sql1);
	st1.setString(1, session.getAttribute("user_id").toString());
	
	ResultSet rs1=st1.executeQuery();

	
	String sql2="select name,no_adult,no_child,amount,pname,sdate,no_of_days,np_name from past_bookings,past_package,admin,np where past_bookings.package_id=past_package.package_id and past_package.admin_id=admin.admin_id and admin.np_id=np.np_id and user_id=?";
	PreparedStatement st2=con.prepareStatement(sql2);
	st2.setString(1, session.getAttribute("user_id").toString());
	
	ResultSet rs2=st2.executeQuery();


	
out.println("<hr><p style='text-align:center;font-weight:bold;'>Present Bookings</p><hr>");
out.println("<div class='container'><table class='table table-hover'>");

out.println("<tr> <th>Name</th> <th>Adults</th> <th>Children</th> <th>Amount</th> <th>Package</th> <th>Start date</th> <th>No. of days</th> <th>National park</th> </tr>");	
while(rs1.next())
{
	out.println("<tr><td>"+rs1.getString("name") +"</td>");
	out.println("<td>"+rs1.getString("no_adult") +"</td>");
	out.println("<td>"+rs1.getString("no_child") +"</td>");
	out.println("<td>" + rs1.getString("amount") +"</td>");
	out.println("<td>" + rs1.getString("pname") +"</td>");
	out.println("<td>" + rs1.getString("sdate") +"</td>");
	out.println("<td>" + rs1.getString("no_of_days") +"</td>");
	out.println("<td>"+rs1.getString("np_name") +"</td>");
	out.println("<td><input type='button' value='Cancel' onclick=canceltour("+ rs1.getInt("book_id")+ ")>"  +  "</input></td></tr>");
	}
	out.println("</table></div>"); 

	out.println("<hr><p style='text-align:center;font-weight:bold;'>Past Bookings</p><hr>");
	out.println("<div class='container'><table class='table table-hover'>");

	out.println("<tr> <th>Name</th> <th>Adults</th> <th>Children</th> <th>Amount</th> <th>Package</th> <th>Start date</th> <th>No. of days</th> <th>National park</th> </tr>");	
	while(rs2.next())
	{
		out.println("<tr><td>"+rs2.getString("name") +"</td>");
		out.println("<td>"+rs2.getString("no_adult") +"</td>");
		out.println("<td>"+rs2.getString("no_child") +"</td>");
		out.println("<td>" + rs2.getString("amount") +"</td>");
		out.println("<td>" + rs2.getString("pname") +"</td>");
		out.println("<td>" + rs2.getString("sdate") +"</td>");
		out.println("<td>" + rs2.getString("no_of_days") +"</td>");
		out.println("<td>"+rs2.getString("np_name") +"</td>");
		//out.println("<td><input type='button' value='Cancel' onclick=canceltour("+ rs1.getInt("book_id")+ ")>"  +  "</input></td></tr>");
		}
		out.println("</table></div>"); 
%>




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

function canceltour(book_id)
{

	window.location.href="cancelbookings.jsp?book_id="+book_id;
}

</script>


</body>
</html>