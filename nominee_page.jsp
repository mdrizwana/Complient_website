<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title></title>
	
  <link rel="stylesheet" type="text/css" href="D:\\web development coign\\bootstrap-4.4.1-dist\\bootstrap-4.4.1-dist\\css\\bootstrap.css">

</head>
<body>
<form action="nominee_Servlet">
<div class = "jumbotron bg-success text-center">
	<h1><strong>NOMINEE DETAILS</strong></h1>
	</div>
<form class="text-center">
 <b> Nominee:</b>
  <input type="text" name="nominee_name"> 
  <br> <br>
  <b>Aadhar_no: </b>
  <input type="text" name="nominee_aadhar"> 
  <br><br>
  <b>Mobile_no: </b>
  <input type="text" name="nominee_mobile">
  <br><br><br>
 
   <b> 
    	<font size = "4">
            <label for="Choose one">Choose one:</label> 
            <select name="complaint_type" id="complaints"> 
                <option value="abuse cases">abuse</option> 
                <option value="chainsnaching">chainSnaching</option> 
                <option value="accident cases">accident cases</option> 
                <option value="kidnaps">kidnaps</option> 
            </select> <br> <br>
            <label for="Complaint Description">Complaint Description:</label>
            <textarea id="Complaint" name="complaint_description" rows="4" cols="40">
            </textarea>
            <br> <br>
            <label for="Address">Address:</label>
            <textarea id="Address" name="nominee_address" rows="4" cols="20">
            </textarea> <br> <br> <br> <br>
            
            <input type="submit" class="btn btn-info" value="Submit"> 
            
            <input onclick = "parent.open('project_homepage.jsp')" class="btn btn-info" type="submit" value="Back">
        </font>
    </form> 
</form>  
  
</body>
</html>

