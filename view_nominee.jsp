<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Watch your Profile....</h2>
<% 
 String nominee_aadhar = request.getParameter("nominee_aadhar");

	try {
    	session.setAttribute("key", nominee_aadhar);
		//String s = session.getAttribute("key").toString();
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SURAKSHA", "root", "");
	    PreparedStatement ps = con.prepareStatement("select nominee_name, nominee_aadhar, nominee_mobile from nominee");
	    ResultSet rs = ps.executeQuery();
	    while(rs.next()){
	    	%>
	    	Name: <%=rs.getString("nominee_name")%> <br>
	    	Mobile_NO: <%=rs.getString("nominee_mobile")%> <br>
	    	Aadhar: <%=rs.getString("nominee_aadhar")%> <br>
	    	Complaint type: <%=rs.getString("complaint_type")%> <br>
	    	Complaint Description: <%=rs.getString("complaint_description")%> <br>
	    	Address : <%=rs.getString("nominee_address")%> <br>
	    	
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