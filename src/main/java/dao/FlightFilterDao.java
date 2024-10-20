package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Bean.Flight;

public class FlightFilterDao {
	 public static ArrayList<Flight> filterFlights(String from,String destination,String date) throws SQLException, ClassNotFoundException {
	

    ArrayList<Flight> availableFlights = new ArrayList<>();
    Connection connection=null;
    PreparedStatement preparedStatement=null;
    System.out.println(from+" "+destination+" "+date);
    // Query the database to filter flights based on the inputs
    try {
    	 connection = Connect_jdbc.getConnection();
    	 preparedStatement = connection.prepareStatement(
    			    "SELECT * FROM Flight f INNER JOIN Flight_Shedule fs ON f.FlightID = fs.FlightID " +
    			    "WHERE LOWER(f.Origin) = LOWER(?) AND LOWER(f.Destination) = LOWER(?) AND DateOfTravel = ?"
    			);

        preparedStatement.setString(1, from);
        preparedStatement.setString(2, destination);
        preparedStatement.setDate(3, java.sql.Date.valueOf(date)); // Ensure to format the date correctly
        System.out.println("hello error:"+java.sql.Date.valueOf(date));
        ResultSet resultSet = preparedStatement.executeQuery();

        while (resultSet.next()) {
        	Flight flight = new Flight(
                    resultSet.getInt("CarrierID"),
                    resultSet.getString("Origin"),
                    resultSet.getString("Destination"),
                    resultSet.getInt("SeatCapacityBusinessClass"),
                    resultSet.getInt("SeatCapacityEconomyClass"),
                    resultSet.getInt("SeatCapacityExecutiveClass"),
                    resultSet.getDate("DateOfTravel"), // Get departure date from Flight_Shedule
                    resultSet.getDouble("Airfare")
            );
            // Optionally, you can set flightID if needed
            flight.setFlightID(resultSet.getInt("FlightID"));

            availableFlights.add(flight);
            
        }
System.out.println(availableFlights.size());

       
    


    } catch (SQLException e) {
        e.printStackTrace();
    }
    return availableFlights;
 
	 }
}
