<%@page import="java.io.PrintWriter"%>
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
<%@ include file="admin_loginpage.html" %>
	<%
	String Username = request.getParameter("username");
	String Password = request.getParameter("password");
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SURAKSHA", "root", "");
	    PreparedStatement ps = con.prepareStatement("select * from admin where username = '"+Username+"' and password = '"+Password+"'");
	    ResultSet rs = ps.executeQuery();
	    
	    if(rs.next()){
	    	
	    	session.setAttribute("key", Username);
	    	response.sendRedirect("admin_homepage.jsp");
	    }
	    else {
	    	%>
	    	<h2>Invalid User Name or password</h2>
	    	<%
	    	
	    }
	    
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	%>

</body>
</html>