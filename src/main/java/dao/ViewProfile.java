package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import Bean.Customer;
import Bean.Flight;

public class ViewProfile {
	   public static Customer viewProfile(String id) throws SQLException, ClassNotFoundException {
    
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    Customer customer=null;

    try {
        // Establish connection using Connect_jdbc (replace with your connection logic)
        connection = Connect_jdbc.getConnection();

        // Updated SQL query to join Flight and Flight_Schedule tables
        String sql = "SELECT * " +
                     
                     "FROM Customer  c " +
                     "WHERE CustomerID = ?" ;


        // Prepare statement
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, id);
        // Execute query
        resultSet = preparedStatement.executeQuery();

        // Populate Flight objects with the result set
        while (resultSet.next()) {
             customer = new Customer(
                    resultSet.getString("FirstName"),
                    resultSet.getString("LastName"),
                    resultSet.getString("Phone"),
                    resultSet.getString("Email"),
                    resultSet.getString("Address"),
                    resultSet.getString("Category"),
                    resultSet.getString("dob")
                    
            );
            
        }

        return customer;

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
	   public static boolean updateProfile(Customer customer) throws ClassNotFoundException, ParseException {
		    Connection conn = null;
		    PreparedStatement pstmt = null;
		    boolean isUpdated = false;

		    try {
		        // Establish the database connection (Assuming you have a DBConnection class)
		        conn = Connect_jdbc.getConnection();

		        // SQL query to update the customer profile
		        String sql = "UPDATE Customer SET FirstName = ?, LastName = ?, Email = ?, Phone = ?, dob = ?, Address = ? WHERE CustomerID = ?";

		        // Prepare the statement
		        pstmt = conn.prepareStatement(sql);
		        
		        // Parse the date (dob)
		        System.out.println(customer.getDOB()); // Debug log
		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		        java.util.Date parsedDate = dateFormat.parse(customer.getDOB());
		        java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
		        
		        // Set the parameters from the customer object
		        pstmt.setString(1, customer.getFirstName());
		        pstmt.setString(2, customer.getLastName());
		        pstmt.setString(3, customer.getEmailId());   // Corrected order
		        pstmt.setString(4, customer.getPhone());     // Corrected order
		        pstmt.setDate(5, sqlDate);                   // Corrected order, assuming dob is in 'yyyy-MM-dd'
		        pstmt.setString(6, customer.getAddress());
		        pstmt.setInt(7, customer.getUserID());       // Assuming customer_id is stored in the Customer object

		        // Debug log for parsed date
		        System.out.println("Converted Date: " + sqlDate);
		        System.out.println("helooooooo"+customer.getFirstName()+" "+customer.getUserID());

		        // Execute the update
		        int rowsUpdated = pstmt.executeUpdate();
		        System.out.println(rowsUpdated);

		        // Check if the update was successful
		        return true;

		    } catch (SQLException e) {
		        e.printStackTrace();
		    } finally {
		        // Close the resources
		        try {
		            if (pstmt != null) pstmt.close();
		            if (conn != null) conn.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }

		    return isUpdated;  // Return true if the update was successful
		}

}


