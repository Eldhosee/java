package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Customer;
import dao.Connect_jdbc;
import dao.InsertCustomer;

/**
 * Servlet implementation class AddCustomerServlet
 */
@WebServlet("/AddCustomerServlet")
public class AddCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String  firstname = request.getParameter("firstname");
			String  lastname = request.getParameter("lastname");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String country = request.getParameter("country");
			String dobStr = request.getParameter("dob");

			String dob = null;
            System.out.println(dobStr);
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
                sdf.setLenient(false); // Ensures strict date validation
                dob = sdf.format(sdf.parse(dobStr));
                System.out.println(dob);
            } catch (ParseException e) {
                System.out.println("Invalid date format. Please enter the date in the correct format.");
                e.printStackTrace();
               
                
            }

            Customer obj = new Customer(firstname, lastname, password, phone, email, address, country, dob);
			InsertCustomer doaInsertCustObj=new InsertCustomer();
			boolean inserted=false;
			PrintWriter out = response.getWriter();
			inserted = doaInsertCustObj.insert(obj);
			if(inserted)
			{
				response.setContentType("text/plain");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().write("success");
	        }
		
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}

