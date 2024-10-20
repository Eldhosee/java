package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.Customer;
import Bean.Flight;

public class InsertCustomer {

	public boolean insert(Customer obj) throws ClassNotFoundException {
		Connection con=null;
			String sql = "INSERT INTO customer (firstname, lastname, password, phone, address, email, country, dob) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		    try {
		    	con=Connect_jdbc.getConnection() ;
		        PreparedStatement stmt = con.prepareStatement(sql);
		        stmt.setString(1, obj.getFirstName());
		        stmt.setString(2, obj.getLastName());
		        stmt.setString(3, obj.getPassword());
		        stmt.setString(4, obj.getPhone());
		        stmt.setString(5, obj.getAddress());
		        stmt.setString(6, obj.getEmailId());
		        stmt.setString(7, obj.getCountry());
		        stmt.setString(8, obj.getDOB());  // Corrected to use the departure date

		        int rowsInserted = stmt.executeUpdate();
		        if (rowsInserted > 0) {
		            System.out.println("A new Customer was inserted successfully!");
		        }
		        return true;
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
			return false;
			}
		}