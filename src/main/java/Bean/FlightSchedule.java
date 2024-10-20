package Bean;

import java.sql.Date;

public class FlightSchedule {

    private int flightScheduleID;
    private int flightID;
    private Date dateOfTravel;
    private int businessClassBookedCount;
    private int economyClassBookedCount;
    private int executiveClassBookedCount;

    // Constructor
    public FlightSchedule(int flightID, Date dateOfTravel,
                          int businessClassBookedCount, int economyClassBookedCount,
                          int executiveClassBookedCount) {
        this.flightID = flightID;
        this.dateOfTravel = dateOfTravel;
        this.businessClassBookedCount = businessClassBookedCount;
        this.economyClassBookedCount = economyClassBookedCount;
        this.executiveClassBookedCount = executiveClassBookedCount;
    }

    // Getters and Setters
    public int getFlightScheduleID() {
        return flightScheduleID;
    }

    public int getFlightID() {
        return flightID;
    }

    public void setFlightID(int flightID) {
        this.flightID = flightID;
    }

    public Date getDateOfTravel() {
        return dateOfTravel;
    }

    public void setDateOfTravel(Date dateOfTravel) {
        this.dateOfTravel = dateOfTravel;
    }

    public int getBusinessClassBookedCount() {
        return businessClassBookedCount;
    }

    public void setBusinessClassBookedCount(int businessClassBookedCount) {
        this.businessClassBookedCount = businessClassBookedCount;
    }

    public int getEconomyClassBookedCount() {
        return economyClassBookedCount;
    }

    public void setEconomyClassBookedCount(int economyClassBookedCount) {
        this.economyClassBookedCount = economyClassBookedCount;
    }

    public int getExecutiveClassBookedCount() {
        return executiveClassBookedCount;
    }

    public void setExecutiveClassBookedCount(int executiveClassBookedCount) {
        this.executiveClassBookedCount = executiveClassBookedCount;
    }
}
