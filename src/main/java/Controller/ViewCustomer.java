package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Customer;
import dao.ViewCustomerDao;
/**
 * Servlet implementation class ViewCustomer
 */
@WebServlet("/ViewCustomer")
public class ViewCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				ViewCustomerDao obj=new ViewCustomerDao();
				ArrayList<Customer> arr=obj.viewCustomer();
				if(arr.size()>0)
				{
				
					request.setAttribute("Customers", arr);
					RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
					dispatcher.forward(request, response);
				}
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("Error"+e.getMessage());
			}
		}
	}

