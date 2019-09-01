<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
    <%@ page
	import ="java.sql.Connection,
 java.sql.DriverManager,
 java.sql.PreparedStatement, java.sql.ResultSet"
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>


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


 <a href="LogoutServlet"><i class="fa fa-fw fa-user"></i>Logout</a>
 
 
 <%
 	
 
	String sql="select * from package where admin_id=?";
	String url="jdbc:mysql://localhost:3306/wildlife";
	String username="root";
	String pass="579453";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,username,pass);
	
	
	String sql4="delete from package where sdate < now()";
	
	PreparedStatement st4=con.prepareStatement(sql4);
	st4.executeUpdate();
	
	PreparedStatement st=con.prepareStatement(sql);
	st.setString(1, session.getAttribute("admin_id").toString());
	ResultSet rs=st.executeQuery();
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
		 out.println("<p><h5><hr>Adult Rate::"+rs.getInt("a_rate")+ "<br><hr>Child Rate::"+rs.getInt("c_rate")  +"</h5></p><hr>");
		 out.println("<p><h5>Details::"+rs.getString("details")+"</h5></p><hr>");
 
		 
		 out.println("<p><h5> Starting Date::"+rs.getDate("sdate")+"</h5></p><hr>");
		 out.println("<p><h5>Reporting Place::"+rs.getString("reporting_place")+"</h5></p><hr>");
		 out.println("<p><h5>Reporting Time::"+rs.getTime("reporting_time")+"</h5></p><hr>");
		 out.println("<p><h5><b>Discount::"+rs.getInt("discount")+"%</b></h5></p>");
		 
		 
		out.println("<input type='button' value='delete' onclick=deletepackage("+ rs.getInt("package_id")+ ")>"  +  "</input>");
		out.println("<input type='button' value='Update' onclick=updatepackage("+ rs.getInt("package_id")+ ")>"  +  "</input>");
 
		 out.println("</div></div></div>");
 		
	} 
	%>
	            </div>
            </div>
          </div>
        </div>
  </section>
  
	<% 
	out.println("<a href='admin_tp_add.jsp'><input type='submit' value='Add tours'></a>");
	out.println("<a href='best_places_to_visit_update.jsp'><input type='submit' value='Best Places to visit'></a>");


	String sql2="select description,sname,duration,season.s_id from weather,season where admin_id=? and weather.s_id=season.s_id ";
	PreparedStatement st2=con.prepareStatement(sql2);
	st2.setString(1, session.getAttribute("admin_id").toString());
	ResultSet rs2=st2.executeQuery();


	out.println("<hr><p style='text-align:center;font-weight:bold;'>Update Weather</p><hr>");

	out.println("<div class='container'><table class='table table-hover'>");
	out.println("<tr> <th>Season Name</th> <th>Duration</th> <th>Details</th> <th></th> </tr>");	
	while(rs2.next())
	{
		out.println("<tr><td>"+rs2.getString("sname") +"</td>");
		out.println("<td>" + rs2.getString("duration") +"</td>");
		out.println("<td>"+rs2.getString("description") +"</td>");
		out.println("<td><input type='button' value='update' onclick=updateweather("+rs2.getInt("season.s_id")+")> </input></td></tr>");
	}
	out.println("</table></div>");

	out.println("<hr><p style='text-align:center;font-weight:bold;'>Booking details</p><hr>");
	String sql1="select name,email,city,phone,no_adult,no_child,pname,amount from tour_book,package where tour_book.admin_id=? and tour_book.package_id=package.package_id";
	PreparedStatement st1=con.prepareStatement(sql1);
	st1.setString(1, session.getAttribute("admin_id").toString());
	ResultSet rs1=st1.executeQuery();
	
	out.println("<div class='container'><table class='table table-hover'>");
	out.println("<tr> <th>Name</th> <th>Email</th> <th>City</th> <th>Phone</th><th>Number of adults</th><th>Number of children</th><th>Amount</th> <th>Package Name</th></tr>");	
	while(rs1.next())
	{
		out.println("<tr><td>"+rs1.getString("name") +"</td>");
		out.println("<td>"+rs1.getString("email") +"</td>");
		out.println("<td>"+rs1.getString("city") +"</td>");
		out.println("<td>"+rs1.getString("phone") +"</td>");
		out.println("<td>"+rs1.getString("no_adult") +"</td>");
		out.println("<td>"+rs1.getString("no_child") +"</td>");
		out.println("<td>"+rs1.getString("amount") +"</td>");
		out.println("<td>"+rs1.getString("pname") +"</td></tr>");
	}
	out.println("</table></div>");
%>

<script>
function deletepackage(package_id)
{
	
	window.location.href="deletepackage.jsp?package_id=" + package_id;
	
}
function updatepackage(package_id)
{
	window.location.href="admin_tp_update.jsp?package_id=" + package_id;
}

function updateweather(s_id)
{
	
		window.location.href="weather_update.jsp?s_id="+s_id;
}

</script>



</body>
</html>