package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Customer;
import dao.ViewProfile;

/**
 * Servlet implementation class ProfileUpdate
 */
@WebServlet("/ProfileUpdate")
public class ProfileUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String firstName = request.getParameter("firstName");
	        String lastName = request.getParameter("lastName");
	        String dob = request.getParameter("dob");
	        String email = request.getParameter("email");
	        String address = request.getParameter("address");
	        String phone = request.getParameter("phone");
	        String category = request.getParameter("category");
	        int id = Integer.parseInt(request.getParameter("id"));
	        System.out.println("print "+id+" "+firstName+" "+lastName+" "+dob+" "+email+" "+address+" "+phone);

	        // Update customer profile
	        Customer customer = new Customer(id,firstName,lastName,phone,email,address,category,dob);
	        

	        // Call your updateProfile method to update the database
	        boolean success = ViewProfile.updateProfile(customer);

	        // Redirect or respond based on the result
	        if (success) {
	            response.sendRedirect("request.getContextPath()"+"/index.jsp#myprofile");
	        } else {
	            response.getWriter().write("Error updating profile.");
	        }
	    
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
