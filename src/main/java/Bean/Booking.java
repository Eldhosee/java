package Bean;
public class Booking {
	private int bookingId;
	private int flightId;
	private int noOfSeats;
	private String category;
	private String date;
	private String status;
	private double amount;
	public Booking(int bookingId, int flightId, int noOfSeats, String category, String date, String status,double amount) {
		
		this.bookingId = bookingId;
		this.flightId = flightId;
		this.noOfSeats = noOfSeats;
		this.category = category;
		this.date = date;
		this.status = status;
		this.amount = amount;
	}
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public int getFlightId() {
		return flightId;
	}
	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}
	public int getNoOfSeats() {
		return noOfSeats;
	}
	public void setNoOfSeats(int noOfSeats) {
		this.noOfSeats = noOfSeats;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
}
