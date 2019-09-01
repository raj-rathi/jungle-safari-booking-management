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
body {
  margin: 0;
  font-family: "Lato", sans-serif;
  overflow-x:hidden;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #111;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: #818181;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.context {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
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



}
</style>
</head>
<body>

<div class="sidebar">
  <a class="active" href="#user1">Tadoba National Park</a>
  <a href="#user2">Gir National Park</a>
  <a href="#user3">Jim Corbett National Park</a>
</div>

<div class="context">


	<div id="user1">
	
	
				

 
       <%
          response.setHeader("Cache-Control","no cache, no-store,must revalidate");
          
          if(session.getAttribute("admin_id")==null)
          {
            response.sendRedirect("index.jsp");
          }
       %>

				<hr><p style='text-align:center;font-weight:bold;'>TADOBA NATIONAL PARK</p><hr>
		
       <a href="LogoutServlet"><i class="fa fa-fw fa-user"></i>Logout</a>
       
       
       
       <%
        
       
        String sql="select * from package where admin_id=1";
        String url="jdbc:mysql://localhost:3306/wildlife";
        String username="root";
        String pass="579453";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(url,username,pass);
        
        
        PreparedStatement st=con.prepareStatement(sql);
        //st.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs=st.executeQuery();
        %>
        
        
        <%
        
          String sql0="select admin_id,aname,phone,password from admin where admin_id=1 ";
        PreparedStatement st0=con.prepareStatement(sql0);
       // st2.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs0=st0.executeQuery();


        out.println("<hr><p style='text-align:center;font-weight:bold;'>Admin details</p><hr>");

        out.println("<div class='container'><table class='table table-hover'>");
        out.println("<tr> <th>admin_id</th> <th>name</th> <th>phone no</th> <th>password</th> <th></th> </tr>");  
        while(rs0.next())
        {
          out.println("<tr><td>"+rs0.getString("admin_id") +"</td>");
          out.println("<td>" + rs0.getString("aname") +"</td>");
          out.println("<td>"+rs0.getString("phone") +"</td>");
          out.println("<td>"+rs0.getString("password") +"</td>");
          out.println("<td><input type='button' value='update' onclick=updateweather("+rs0.getInt("admin.admin_id")+")> </input></td></tr>");
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
        
        out.println("<hr><p style='text-align:center;font-weight:bold;'>Tour packages</p><hr>");
        
        while (rs.next ())
        {
         
           out.println(" <div class='col-lg-4'><div class='card card-lift--hover shadow border-0'><div class='card-body py-5'>");
           out.println(" <h4 style='text-align:centre;color:green;'>"+rs.getString("pname")+"</h4><hr>");
           out.println("<h5><p>Number of days::"+rs.getInt("no_of_days")+"<br><hr>Number of seats available::"+rs.getInt("no_of_seats_available")+"</p></h5>");
           out.println("<p><h5><hr>Adult Rate::"+rs.getInt("a_rate")+ "<br><hr>Child Rate::"+rs.getInt("c_rate")  +"</h5></p><hr>");
           out.println("<p><h5>Details::"+rs.getString("details")+"</h5></p>");
       
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


        String sql2="select description,sname,duration,season.s_id from weather,season where admin_id=1 and weather.s_id=season.s_id ";
        PreparedStatement st2=con.prepareStatement(sql2);
       // st2.setString(1, session.getAttribute("admin_id").toString());
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
        String sql1="select name,email,city,phone,no_adult,no_child,pname,amount from tour_book,package where tour_book.admin_id=1 and tour_book.package_id=package.package_id";
        PreparedStatement st1=con.prepareStatement(sql1);
        //st1.setString(1, session.getAttribute("admin_id").toString());
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


	</div>
============================================================================================================	

	<div id="user2">
	
	
		<hr><p style='text-align:center;font-weight:bold;'>GIR NATIONAL PARK</p><hr>
 
       <%
          response.setHeader("Cache-Control","no cache, no-store,must revalidate");
          
          if(session.getAttribute("admin_id")==null)
          {
            response.sendRedirect("index.jsp");
          }
       %>


		
       <a href="LogoutServlet"><i class="fa fa-fw fa-user"></i>Logout</a>
       
       
       
       <%
        
        String sql4="select * from package where admin_id=2";
        String url4="jdbc:mysql://localhost:3306/wildlife";
        String username4="root";
        String pass4="579453";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con4=DriverManager.getConnection(url4,username4,pass4);
        
        
        PreparedStatement st4=con.prepareStatement(sql4);
        //st.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs4=st4.executeQuery();
        %>
        
        
        <%
        
          String sql5="select admin_id,aname,phone,password from admin where admin_id=2 ";
        PreparedStatement st5=con.prepareStatement(sql5);
       // st2.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs5=st5.executeQuery();


        out.println("<hr><p style='text-align:center;font-weight:bold;'>Admin details</p><hr>");

        out.println("<div class='container'><table class='table table-hover'>");
        out.println("<tr> <th>admin_id</th> <th>name</th> <th>phone no</th> <th>password</th> <th></th> </tr>");  
        while(rs5.next())
        {
          out.println("<tr><td>"+rs5.getString("admin_id") +"</td>");
          out.println("<td>" + rs5.getString("aname") +"</td>");
          out.println("<td>"+rs5.getString("phone") +"</td>");
          out.println("<td>"+rs5.getString("password") +"</td>");
          out.println("<td><input type='button' value='update' onclick=updateweather("+rs5.getInt("admin.admin_id")+")> </input></td></tr>");
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
        
        out.println("<hr><p style='text-align:center;font-weight:bold;'>Tour packages</p><hr>");
        
        while (rs.next ())
        {
         
           out.println(" <div class='col-lg-4'><div class='card card-lift--hover shadow border-0'><div class='card-body py-5'>");
           out.println(" <h4 style='text-align:centre;color:green;'>"+rs.getString("pname")+"</h4><hr>");
           out.println("<h5><p>Number of days::"+rs.getInt("no_of_days")+"<br><hr>Number of seats available::"+rs.getInt("no_of_seats_available")+"</p></h5>");
           out.println("<p><h5><hr>Adult Rate::"+rs.getInt("a_rate")+ "<br><hr>Child Rate::"+rs.getInt("c_rate")  +"</h5></p><hr>");
           out.println("<p><h5>Details::"+rs.getString("details")+"</h5></p>");
       
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


        String sql6="select description,sname,duration,season.s_id from weather,season where admin_id=2 and weather.s_id=season.s_id ";
        PreparedStatement st6=con.prepareStatement(sql6);
       // st2.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs6=st6.executeQuery();


        out.println("<hr><p style='text-align:center;font-weight:bold;'>Update Weather</p><hr>");

        out.println("<div class='container'><table class='table table-hover'>");
        out.println("<tr> <th>Season Name</th> <th>Duration</th> <th>Details</th> <th></th> </tr>");  
        while(rs6.next())
        {
          out.println("<tr><td>"+rs6.getString("sname") +"</td>");
          out.println("<td>" + rs6.getString("duration") +"</td>");
          out.println("<td>"+rs6.getString("description") +"</td>");
          out.println("<td><input type='button' value='update' onclick=updateweather("+rs6.getInt("season.s_id")+")> </input></td></tr>");
        }
        out.println("</table></div>");

        out.println("<hr><p style='text-align:center;font-weight:bold;'>Booking details</p><hr>");
        String sql7="select name,email,city,phone,no_adult,no_child,pname,amount from tour_book,package where tour_book.admin_id=2 and tour_book.package_id=package.package_id";
        PreparedStatement st7=con.prepareStatement(sql7);
        //st1.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs7=st7.executeQuery();
        
        out.println("<div class='container'><table class='table table-hover'>");
        out.println("<tr> <th>Name</th> <th>Email</th> <th>City</th> <th>Phone</th><th>Number of adults</th><th>Number of children</th><th>Amount</th> <th>Package Name</th></tr>");  
        while(rs7.next())
        {
          out.println("<tr><td>"+rs7.getString("name") +"</td>");
          out.println("<td>"+rs7.getString("email") +"</td>");
          out.println("<td>"+rs7.getString("city") +"</td>");
          out.println("<td>"+rs7.getString("phone") +"</td>");
          out.println("<td>"+rs7.getString("no_adult") +"</td>");
          out.println("<td>"+rs7.getString("no_child") +"</td>");
          out.println("<td>"+rs7.getString("amount") +"</td>");
          out.println("<td>"+rs7.getString("pname") +"</td></tr>");
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


	</div>



	============================================================================================================	

	<div id="user3">
	
	
		<hr><p style='text-align:center;font-weight:bold;'>JIM CORBETT NATIONAL PARK</p><hr>
 
       <%
          response.setHeader("Cache-Control","no cache, no-store,must revalidate");
          
          if(session.getAttribute("admin_id")==null)
          {
            response.sendRedirect("index.jsp");
          }
       %>


		
       <a href="LogoutServlet"><i class="fa fa-fw fa-user"></i>Logout</a>
       
       
       
      
        
        
        <%
        
          String sql0j="select admin_id,aname,phone,password from admin where admin_id=3 ";
        PreparedStatement st0j=con.prepareStatement(sql0j);
       // st2.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs0j=st0j.executeQuery();


        out.println("<hr><p style='text-align:center;font-weight:bold;'>Admin details</p><hr>");

        out.println("<div class='container'><table class='table table-hover'>");
        out.println("<tr> <th>admin_id</th> <th>name</th> <th>phone no</th> <th>password</th> <th></th> </tr>");  
        while(rs0j.next())
        {
          out.println("<tr><td>"+rs0j.getString("admin_id") +"</td>");
          out.println("<td>" + rs0j.getString("aname") +"</td>");
          out.println("<td>"+rs0j.getString("phone") +"</td>");
          out.println("<td>"+rs0j.getString("password") +"</td>");
          out.println("<td><input type='button' value='update' onclick=updateweather("+rs0j.getInt("admin.admin_id")+")> </input></td></tr>");
        }
        out.println("</table></div>");
        
        %>
        
      
       <%
        
       
        String sql1j="select * from package where admin_id=3";
        String url1j="jdbc:mysql://localhost:3306/wildlife";
        String username1j="root";
        String pass1j="579453";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1j=DriverManager.getConnection(url1j,username1j,pass1j);
        
        
        PreparedStatement st1j=con.prepareStatement(sql1j);
        //st.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs1j=st1j.executeQuery();
        %>  
        
        
        <hr><hr>

      <section class="section section-lg pt-lg-0 mt--200">
            <div class="container">
              <div class="row justify-content-center">
                <div class="col-lg-12">
                  <div class="row row-grid">
          
        <%
        
        out.println("<hr><p style='text-align:center;font-weight:bold;'>Tour packages</p><hr>");
        
        while (rs1j.next ())
        {
         
           out.println(" <div class='col-lg-4'><div class='card card-lift--hover shadow border-0'><div class='card-body py-5'>");
           out.println(" <h4 style='text-align:centre;color:green;'>"+rs1j.getString("pname")+"</h4><hr>");
           out.println("<h5><p>Number of days::"+rs1j.getInt("no_of_days")+"<br><hr>Number of seats available::"+rs1j.getInt("no_of_seats_available")+"</p></h5>");
           out.println("<p><h5><hr>Adult Rate::"+rs1j.getInt("a_rate")+ "<br><hr>Child Rate::"+rs1j.getInt("c_rate")  +"</h5></p><hr>");
           out.println("<p><h5>Details::"+rs1j.getString("details")+"</h5></p>");
       
          out.println("<input type='button' value='delete' onclick=deletepackage("+ rs1j.getInt("package_id")+ ")>"  +  "</input>");
          out.println("<input type='button' value='Update' onclick=updatepackage("+ rs1j.getInt("package_id")+ ")>"  +  "</input>");
       
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


        String sql2j="select description,sname,duration,season.s_id from weather,season where admin_id=3 and weather.s_id=season.s_id ";
        PreparedStatement st2j=con.prepareStatement(sql2j);
       // st2.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs2j=st2j.executeQuery();


        out.println("<hr><p style='text-align:center;font-weight:bold;'>Update Weather</p><hr>");

        out.println("<div class='container'><table class='table table-hover'>");
        out.println("<tr> <th>Season Name</th> <th>Duration</th> <th>Details</th> <th></th> </tr>");  
        while(rs2j.next())
        {
          out.println("<tr><td>"+rs2j.getString("sname") +"</td>");
          out.println("<td>" + rs2j.getString("duration") +"</td>");
          out.println("<td>"+rs2j.getString("description") +"</td>");
          out.println("<td><input type='button' value='update' onclick=updateweather("+rs2j.getInt("season.s_id")+")> </input></td></tr>");
        }
        out.println("</table></div>");

        out.println("<hr><p style='text-align:center;font-weight:bold;'>Booking details</p><hr>");
        String sql3j="select name,email,city,phone,no_adult,no_child,pname,amount from tour_book,package where tour_book.admin_id=3 and tour_book.package_id=package.package_id";
        PreparedStatement st3j=con.prepareStatement(sql3j);
        //st1.setString(1, session.getAttribute("admin_id").toString());
        ResultSet rs3j=st3j.executeQuery();
        
        out.println("<div class='container'><table class='table table-hover'>");
        out.println("<tr> <th>Name</th> <th>Email</th> <th>City</th> <th>Phone</th><th>Number of adults</th><th>Number of children</th><th>Amount</th> <th>Package Name</th></tr>");  
        while(rs3j.next())
        {
          out.println("<tr><td>"+rs3j.getString("name") +"</td>");
          out.println("<td>"+rs3j.getString("email") +"</td>");
          out.println("<td>"+rs3j.getString("city") +"</td>");
          out.println("<td>"+rs3j.getString("phone") +"</td>");
          out.println("<td>"+rs3j.getString("no_adult") +"</td>");
          out.println("<td>"+rs3j.getString("no_child") +"</td>");
          out.println("<td>"+rs3j.getString("amount") +"</td>");
          out.println("<td>"+rs3j.getString("pname") +"</td></tr>");
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


	</div>

</div>

</body>
</html>
