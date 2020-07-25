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
    PreparedStatement ps = con.prepareStatement("select nominee_aadhar, nominee_address, complaint_type, complaint_description from nominee");
    
    	%>
    	<table class = "table" border="5">
		<thead class = "thead-dark">
			<th>Nominee Aadhar</th>
			<th>Nominee Address</th>
			<th>Complaint type</th>
			<th>Complaint Description</th>
		</thead>
		<%ResultSet rs = ps.executeQuery();
		    while(rs.next()){ %>
		<tbody>
			<tr>
			
				<td><%=rs.getString("nominee_aadhar")%></td>
				<td><%=rs.getString("nominee_address")%></td>
				<td> <%=rs.getString("complaint_type")%> </td>
				<td><%=rs.getString("complaint_description")%></td>
			</tr>
		</tbody>
		</table>
	
    	
    	
    	
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