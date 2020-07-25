<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
	//session.setAttribute("key", nominee_aadhar);
	//String s = session.getAttribute("key").toString();
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SURAKSHA", "root", "");
    PreparedStatement ps = con.prepareStatement("select * from contactus");
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
    	%>
    	First Name: <%=rs.getString("first_name")%> <br>
    	Last Name: <%=rs.getString("last_name")%> <br>
    	Email: <%=rs.getString("email")%> <br>
    	Comment: <%=rs.getString("comment")%> <br>
    	
    	<% 
    }
    
    
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<br>
<br>
<br>
<form action="admin_homepage.jsp">
<input type = "submit" value="Back">
</form>

</body>
</html>