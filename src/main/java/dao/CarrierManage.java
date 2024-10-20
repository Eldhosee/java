package dao;

import Bean.Carrier;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class CarrierManage {
	public boolean insert(Carrier carrier) throws ClassNotFoundException {
		Connection con=null;
		 String sql = "INSERT INTO carrier (carrierName, discountPercentageThirtyDaysAdvanceBooking, discountPercentageSixtyDaysAdvanceBooking,\r\n"
	        		+ "discountPercentageNinteyDaysAdvanceBooking,  refundPercentageForTicketCancellation2DaysBeforeTravelDate, refundPercentageForTicketCancellation10DaysBeforeTravelDate, refundPercentageForTicketCancellation20DaysBeforeTravelDate, bulkBookingDiscount, silverUserDiscount, goldUserDiscount, platinumUserDiscount\r\n"
	        		+ ") "
	                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		 try {
			 con=Connect_jdbc.getConnection();
			 PreparedStatement stmt = con.prepareStatement(sql);
		    
		    stmt.setString(1, carrier.getCarrierName());
	        stmt.setInt(2, carrier.getDiscountPercentageThirtyDaysAdvanceBooking());
	        stmt.setInt(3, carrier.getDiscountPercentageSixtyDaysAdvanceBooking());
	        stmt.setInt(4, carrier.getDiscountPercentageNinteyDaysAdvanceBooking());         
	        stmt.setInt(5, carrier.getRefundPercentageForTicketCancellation2DaysBeforeTravelDate());
	        stmt.setInt(6, carrier.getRefundPercentageForTicketCancellation10DaysBeforeTravelDate());
	        stmt.setInt(7, carrier.getRefundPercentageForTicketCancellation20DaysBeforeTravelDate());  
	        stmt.setInt(8, carrier.getBulkBookingDiscount());
	        stmt.setInt(9, carrier.getSilverUserDiscount());
	        stmt.setInt(10, carrier.getGoldUserDiscount());
	        stmt.setInt(11, carrier.getPlatinumUserDiscount());  
            
	        int rowsInserted = stmt.executeUpdate();
	        if (rowsInserted > 0) {
	            System.out.println("A new Carrier was inserted successfully!");
	        }
	        return true;
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		return false;
	}
}
