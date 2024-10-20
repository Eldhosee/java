package Bean;

public class Customer {
	public int userID;
	public String FirstName;
	public String LastName;
	public String password;
	public String phone;
	public String address;
	public String emailId;
	public String country;
	public String DOB;
	public Customer(String FirstName, String LastName,String password, String phone,String emailId,String address,String country,String DOB) {
		this.FirstName=FirstName;
		this.LastName=LastName;
		this.password=password;
		this.phone=phone;
		this.emailId=emailId;
		this.address=address;
		this.country=country;
		this.DOB=DOB;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String FirstName) {
		this.FirstName = FirstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String LastName) {
		this.LastName = LastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress1(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	
}
