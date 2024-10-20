package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;

import Bean.Booking;


public class InsertBooking {
	public boolean insert(Booking booking) {
		
		Connection con=null;
		String sql="insert into FlightBooking (flight_id, no_of_eats,  seat_caterogy, date_of_travel, BookingAmount)"
				+ "values (?,?,?,?,?)";
		try {
			con=Connect_jdbc.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, booking.getFlightId());
			stmt.setInt(2,booking.getNoOfSeats());
			stmt.setString(3,booking.getCategory());
			stmt.setString(4, booking.getDate());
			stmt.setDouble(5, booking.getAmount());
			
			int rowsInserted=stmt.executeUpdate();
			if(rowsInserted >0) {
				System.out.println("A new Booking is done successfully!");
			}
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
}
