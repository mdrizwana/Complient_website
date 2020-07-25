

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class nominee_Servlet
 */
public class nominee_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public nominee_Servlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nominee_name = request.getParameter("nominee_name");
		String nominee_mobile = request.getParameter("nominee_mobile");
		String  nominee_aadhar = request.getParameter("nominee_aadhar");
		String nominee_address = request.getParameter("nominee_address");
		String  complaint_type = request.getParameter("complaint_type");
		String  complaint_description = request.getParameter("complaint_description");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SURAKSHA", "root", "");
		    PreparedStatement ps = con.prepareStatement("insert into nominee values('"+nominee_name+"','"+nominee_mobile+"','"+nominee_aadhar+"','"+nominee_address+"','"+complaint_type+"','"+complaint_description+"')");
		    
		    int i = ps.executeUpdate();
		    if(i>0){
		    	response.sendRedirect("nominee_aftersubmit.jsp");
		    }
		    else{
		    	response.sendRedirect("nominee_page.jsp");
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
