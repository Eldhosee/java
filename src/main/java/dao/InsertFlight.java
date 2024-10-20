package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.Flight;

public class InsertFlight {
	public boolean insert(Flight flight) throws ClassNotFoundException {
Connection con=null;
	String sql = "INSERT INTO flight (carrier_id, origin, destination, airfare, "
            + "economy_class_seat_capacity, business_class_seat_capacity, executive_class_seat_capacity, departure_date) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    try {
    	con=Connect_jdbc.getConnection() ;
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setInt(1, flight.getCarrierID());
        stmt.setString(2, flight.getOrigin());
        stmt.setString(3, flight.getDestination());
        stmt.setDouble(4, flight.getAirfare());
        stmt.setInt(5, flight.getSeatCapacityEconomyClass());
        stmt.setInt(6, flight.getSeatCapacityBusinessClass());
        stmt.setInt(7, flight.getSeatCapacityExecutiveClass());
        stmt.setString(8, flight.getDepatureDate());  // Corrected to use the departure date

        int rowsInserted = stmt.executeUpdate();
        if (rowsInserted > 0) {
            System.out.println("A new flight was inserted successfully!");
        }
        return true;
    } catch (SQLException e) {
        e.printStackTrace();
    }
	return false;
	}
}
