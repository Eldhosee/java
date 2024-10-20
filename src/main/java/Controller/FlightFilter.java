package Controller;

import java.io.IOException;
import java.util.ArrayList;
import Bean.Flight;

import dao.FlightFilterDao;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FlightFilter
 */
@WebServlet("/FlightFilter")
public class FlightFilter extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String from = request.getParameter("from");
        String destination = request.getParameter("destination");
        String date = request.getParameter("date");
        try {
        	
        	ArrayList<Flight> flights=FlightFilterDao.filterFlights(from, destination, date);
        	request.setAttribute("filterFlights", flights);
        	System.out.println("helooo");
			RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error"+e.getMessage());
		}
    }
}

