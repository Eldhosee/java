package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect_jdbc {
	public static Connection getConnection() throws ClassNotFoundException{
		Connection connect = null;
		Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		String url = "jdbc:derby:C:\\Users\\eldhose iype\\MyDB;create=true";
		try {
			connect = DriverManager.getConnection(url);
			if(connect != null) {
				System.out.println("Connection established..!");
			}
		} 
		catch (SQLException e) {
			System.out.println("Unable to Connect "+ e.getMessage());
		}
		return connect;
	}

}
