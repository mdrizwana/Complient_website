

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contactus_servlet
 */
public class contactus_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactus_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String first_name = request.getParameter("first_name");
		String  last_name = request.getParameter("last_name");
		String  email = request.getParameter("email");
		String comment = request.getParameter("comment");
		
		
		try {
			//String s = session.getAttribute("key").toString();
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SURAKSHA", "root", "");
		    PreparedStatement ps = con.prepareStatement("insert into contactus values('"+first_name+"','"+last_name+"','"+email+"','"+comment+"')");
		    
		    int i = ps.executeUpdate();
		    if(i>0){
		    	response.sendRedirect("feedback_after.jsp");
		    }
		    else{
		    	response.sendRedirect("contactus_page.html");
		    }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
