package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Flight;
import dao.ViewFlightsDao;

/**
 * Servlet implementation class ViewFlights
 */
@WebServlet("/ViewFlights")
public class ViewFlights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewFlights() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ViewFlightsDao obj=new ViewFlightsDao();
			ArrayList<Flight> arr=obj.viewFlights();
			if(arr.size()>0)
			{
			
				request.setAttribute("Flights", arr);
				RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error"+e.getMessage());
		}
	}

	
}
