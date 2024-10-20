package Controller;
import Bean.Booking;
import dao.InsertBooking;
import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat; 
/**
 * Servlet implementation class SaveBookingDetails
 */
@WebServlet("/SaveBookingDetails")
public class SaveBookingDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveBookingDetails() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int flightId=Integer.parseInt( request.getParameter("flightId"));
			int noOfSeats=Integer.parseInt( request.getParameter("noOfSeats"));
			String category = request.getParameter("category");
			String date=request.getParameter("date");
			String status;
			double amount=Double.parseDouble(request.getParameter("amount")); 
			

		
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
                sdf.setLenient(false); // Ensures strict date validation
                date = sdf.format(sdf.parse(date));
                System.out.println(date);
            } catch (ParseException e) {
                System.out.println("Invalid date format. Please enter the date in the correct format.");
                e.printStackTrace();
               
                
            }

			Booking obj=new Booking(flightId,noOfSeats,noOfSeats, category,date,status,amount);
			
			
			InsertBooking doaInsertObj=new InsertBooking();
			boolean inserted=false;
			inserted=doaInsertObj.insert(obj);
			if(inserted)
			{
				System.out.println(inserted);
				response.getWriter().println("Data inserted");
			}
			else {
				
				response.getWriter().println("Data inserted");
			}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}
	}

}
