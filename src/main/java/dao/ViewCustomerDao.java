package dao;


	import java.sql.Connection;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.ArrayList;

	import Bean.Customer;

	public class ViewCustomerDao { 
		public static ArrayList<Customer> viewCustomer()
		{
			ArrayList<Customer> arr=new ArrayList<>();
			try {
				String sql = "select * from customer";
				Connection con=Connect_jdbc.getConnection() ;
				Statement smt=con.createStatement();
				ResultSet rs=smt.executeQuery(sql);
				while(rs.next())
				{
					Customer obj=new Customer(rs.getString("firstname"),rs.getString("lastname"),rs.getString("password"),rs.getString("phone"),rs.getString("email"),rs.getString("address"),rs.getString("country"),rs.getString("dob"));
					arr.add(obj);
					System.out.println(rs.getInt("firstname"));
				}
				return arr;
				
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("error:"+e.getMessage());
			}
			return null;
		}
	}

