package Bean;

import java.sql.Date;

public class Flight {
    private int flightID;
    private int carrierID;
    private String origin;
    private String destination;
    private int seatCapacityBusinessClass;
    private int seatCapacityEconomyClass;
    private int seatCapacityExecutiveClass;
    private Date departureDate;
    private double airfare;

    // Constructor with flightID (used when flightID is known)
    public Flight(int flightID, int carrierID, String origin, String destination,
                  int seatCapacityBusinessClass, int seatCapacityEconomyClass,
                  int seatCapacityExecutiveClass, Date departureDate, double airfare) {
        this.flightID = flightID;
        this.carrierID = carrierID;
        this.origin = origin;
        this.destination = destination;
        this.seatCapacityBusinessClass = seatCapacityBusinessClass;
        this.seatCapacityEconomyClass = seatCapacityEconomyClass;
        this.seatCapacityExecutiveClass = seatCapacityExecutiveClass;
        this.departureDate = departureDate;
        this.airfare = airfare;
    }

    // Constructor without flightID (used when flightID is not needed initially)
    public Flight(int carrierID, String origin, String destination,
                  int seatCapacityBusinessClass, int seatCapacityEconomyClass,
                  int seatCapacityExecutiveClass, Date departureDate, double airfare) {
        this.carrierID = carrierID;
        this.origin = origin;
        this.destination = destination;
        this.seatCapacityBusinessClass = seatCapacityBusinessClass;
        this.seatCapacityEconomyClass = seatCapacityEconomyClass;
        this.seatCapacityExecutiveClass = seatCapacityExecutiveClass;
        this.departureDate = departureDate;
        this.airfare = airfare;
    }

    // Getters and setters (including flightID)
    public int getFlightID() {
        return flightID;
    }

    public void setFlightID(int flightID) {
        this.flightID = flightID;
    }

    public int getCarrierID() {
        return carrierID;
    }

    public void setCarrierID(int carrierID) {
        this.carrierID = carrierID;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public int getSeatCapacityBusinessClass() {
        return seatCapacityBusinessClass;
    }

    public void setSeatCapacityBusinessClass(int seatCapacityBusinessClass) {
        this.seatCapacityBusinessClass = seatCapacityBusinessClass;
    }

    public int getSeatCapacityEconomyClass() {
        return seatCapacityEconomyClass;
    }

    public void setSeatCapacityEconomyClass(int seatCapacityEconomyClass) {
        this.seatCapacityEconomyClass = seatCapacityEconomyClass;
    }

    public int getSeatCapacityExecutiveClass() {
        return seatCapacityExecutiveClass;
    }

    public void setSeatCapacityExecutiveClass(int seatCapacityExecutiveClass) {
        this.seatCapacityExecutiveClass = seatCapacityExecutiveClass;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public double getAirfare() {
        return airfare;
    }

    public void setAirfare(double airfare) {
        this.airfare = airfare;
    }

	public Object getDateOfTravel() {
		// TODO Auto-generated method stub
		return null;
	}
}
