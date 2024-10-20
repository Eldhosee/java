package Controller;

import Bean.Carrier;
import dao.CarrierManage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CarrierAdd")
public class CarrierAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CarrierAdd() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		try {
			response.getWriter().println("Carrier");
			
			String carrierName = request.getParameter("carrierName");
			int discountPercentageThirtyDaysAdvanceBooking = Integer.parseInt(request.getParameter("d30days"));
			int discountPercentageSixtyDaysAdvanceBooking = Integer.parseInt(request.getParameter("d60days"));
			int discountPercentageNinteyDaysAdvanceBooking = Integer.parseInt(request.getParameter("d90days"));
			int refundPercentageForTicketCancellation2DaysBeforeTravelDate = Integer.parseInt(request.getParameter("r2days"));
			int refundPercentageForTicketCancellation10DaysBeforeTravelDate = Integer.parseInt(request.getParameter("r10days"));
			int refundPercentageForTicketCancellation20DaysBeforeTravelDate = Integer.parseInt(request.getParameter("r20days"));
			int bulkBookingDiscount = Integer.parseInt(request.getParameter("bulkbookingdiscount"));
			int silverUserDiscount = Integer.parseInt(request.getParameter("silverUserDiscount"));
			int goldUserDiscount = Integer.parseInt(request.getParameter("goldUserDiscount"));
			int platinumUserDiscount = Integer.parseInt(request.getParameter("platinumUserDiscount"));
			
			Carrier carrier = new Carrier(carrierName, discountPercentageThirtyDaysAdvanceBooking, discountPercentageSixtyDaysAdvanceBooking,  discountPercentageNinteyDaysAdvanceBooking, 
					refundPercentageForTicketCancellation2DaysBeforeTravelDate,refundPercentageForTicketCancellation10DaysBeforeTravelDate,
					refundPercentageForTicketCancellation20DaysBeforeTravelDate, bulkBookingDiscount, silverUserDiscount, goldUserDiscount, platinumUserDiscount);
			
			CarrierManage carriermanage = new CarrierManage();
			boolean inserted=false;
			inserted = carriermanage.insert(carrier);
			if(inserted)
			{
				System.out.println(inserted);
				response.getWriter().println("Carrier inserted");
			}
			else {
				
				response.getWriter().println("Carrier not inserted");
			}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
