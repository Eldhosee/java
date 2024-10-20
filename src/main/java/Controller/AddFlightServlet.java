package Controller;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.Flight;
import dao.InsertFlight;


@WebServlet("/AddFlightServlet")
public class AddFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddFlightServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		try {
			int  carrier_id=Integer.parseInt( request.getParameter("carrier_id"));
			int  seat_capacity_executive=Integer.parseInt( request.getParameter("seat_capacity_executive"));
			int  seat_capacity_business=Integer.parseInt( request.getParameter("seat_capacity_business"));
			int  seat_capacity_economy=Integer.parseInt( request.getParameter("seat_capacity_economy"));
			double  air_fare=Double.parseDouble( request.getParameter("air_fare"));
			String  destination= request.getParameter("destination");
			String  origin= request.getParameter("origin");
			String departureDateStr = request.getParameter("depatureDate");
			
            String departureDate = null;
            System.out.println(departureDateStr);
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
                sdf.setLenient(false); // Ensures strict date validation
                departureDate = sdf.format(sdf.parse(departureDateStr));
                System.out.println(departureDate);
            } catch (ParseException e) {
                System.out.println("Invalid date format. Please enter the date in the correct format.");
                e.printStackTrace();
               
                
            }

			
			
			Flight obj=new Flight( carrier_id, origin, destination, seat_capacity_business,
					seat_capacity_economy, seat_capacity_executive,departureDate,air_fare);
			InsertFlight doaInsertObj=new InsertFlight();
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
