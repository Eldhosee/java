package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;

import Bean.Flight;

public class ViewFlightsDao {

    public static ArrayList<Flight> viewFlights() throws SQLException, ClassNotFoundException {
        ArrayList<Flight> flights = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Establish connection using Connect_jdbc (replace with your connection logic)
            connection = Connect_jdbc.getConnection();

            // Updated SQL query to join Flight and Flight_Schedule tables
            String sql = "SELECT f.FlightID, f.CarrierID, f.Origin, f.Destination, " +
                         "f.SeatCapacityEconomyClass, f.SeatCapacityBusinessClass, " +
                         "f.SeatCapacityExecutiveClass, fs.DateOfTravel, f.Airfare " +
                         "FROM Flight f " +
                         "INNER JOIN Flight_Shedule fs ON f.FlightID = fs.FlightID " ;


            // Prepare statement
            preparedStatement = connection.prepareStatement(sql);

            // Execute query
            resultSet = preparedStatement.executeQuery();

            // Populate Flight objects with the result set
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

                flights.add(flight);
            }

            return flights; // Return the list of flights

        } catch (SQLException e) {
            throw e; // Re-throw SQLException for proper error handling
        } finally {
            // Close resources in a finally block (consider a utility class for connection management)
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
    }
}
