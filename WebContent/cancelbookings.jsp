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
<title>Insert title here</title>
</head>
<body>

<%

String sql="delete from tour_book where book_id=?";
String url="jdbc:mysql://localhost:3306/wildlife";
String username="root";
String pass="579453";

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,username,pass);
	PreparedStatement st=con.prepareStatement(sql);
	st.setString(1, request.getParameter("book_id").toString());
	int i=st.executeUpdate();
	
	
		
}

catch(Exception e)
{
	System.out.println("Log In failed: An Exception has occurred! " + e);
}
response.sendRedirect("Profile.jsp");
%>


</body>
</html>