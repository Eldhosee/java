package Bean;

public class Carrier {
	public int carrierID;
	public String carrierName;
	public int discountPercentageThirtyDaysAdvanceBooking;
	public int discountPercentageSixtyDaysAdvanceBooking;
	public int discountPercentageNinteyDaysAdvanceBooking;
	public int refundPercentageForTicketCancellation2DaysBeforeTravelDate;
	public int refundPercentageForTicketCancellation10DaysBeforeTravelDate;
	public int refundPercentageForTicketCancellation20DaysBeforeTravelDate;
	public int bulkBookingDiscount;
	public int silverUserDiscount;
	public int goldUserDiscount;
	public int platinumUserDiscount;
	
//	public Carrier() {
//		super();
//		
//	}
	
	public Carrier(String carrierName,int discountPercentageThirtyDaysAdvanceBooking,int discountPercentageSixtyDaysAdvanceBooking,int discountPercentageNinteyDaysAdvanceBooking, int refundPercentageForTicketCancellation2DaysBeforeTravelDate,int refundPercentageForTicketCancellation10DaysBeforeTravelDate,int refundPercentageForTicketCancellation20DaysBeforeTravelDate, int bulkBookingDiscount, int silverUserDiscount,int goldUserDiscount,int platinumUserDiscount)
	{
		this.carrierName=carrierName;
		this.discountPercentageThirtyDaysAdvanceBooking=discountPercentageThirtyDaysAdvanceBooking;
		this.discountPercentageSixtyDaysAdvanceBooking=discountPercentageSixtyDaysAdvanceBooking;
		this.discountPercentageNinteyDaysAdvanceBooking=discountPercentageNinteyDaysAdvanceBooking;
		this.refundPercentageForTicketCancellation2DaysBeforeTravelDate = refundPercentageForTicketCancellation2DaysBeforeTravelDate;
		this.refundPercentageForTicketCancellation10DaysBeforeTravelDate = refundPercentageForTicketCancellation10DaysBeforeTravelDate;
		this.refundPercentageForTicketCancellation20DaysBeforeTravelDate = refundPercentageForTicketCancellation20DaysBeforeTravelDate;
		this.bulkBookingDiscount = bulkBookingDiscount;
		this.silverUserDiscount=silverUserDiscount;
		this.goldUserDiscount=goldUserDiscount;
		this.platinumUserDiscount=platinumUserDiscount;
	}
	
	public int getBulkBookingDiscount() {
		return bulkBookingDiscount;
	}
	public void setBulkBookingDiscount(int bulkBookingDiscount) {
		this.bulkBookingDiscount = bulkBookingDiscount;
	}
	public int getRefundPercentageForTicketCancellation2DaysBeforeTravelDate() {
		return refundPercentageForTicketCancellation2DaysBeforeTravelDate;
	}
	public void setRefundPercentageForTicketCancellation2DaysBeforeTravelDate(
			int refundPercentageForTicketCancellation2DaysBeforeTravelDate) {
		this.refundPercentageForTicketCancellation2DaysBeforeTravelDate = refundPercentageForTicketCancellation2DaysBeforeTravelDate;
	}
	public int getRefundPercentageForTicketCancellation10DaysBeforeTravelDate() {
		return refundPercentageForTicketCancellation10DaysBeforeTravelDate;
	}
	public void setRefundPercentageForTicketCancellation10DaysBeforeTravelDate(
			int refundPercentageForTicketCancellation10DaysBeforeTravelDate) {
		this.refundPercentageForTicketCancellation10DaysBeforeTravelDate = refundPercentageForTicketCancellation10DaysBeforeTravelDate;
	}
	public int getRefundPercentageForTicketCancellation20DaysBeforeTravelDate() {
		return refundPercentageForTicketCancellation20DaysBeforeTravelDate;
	}
	public void setRefundPercentageForTicketCancellation20DaysBeforeTravelDate(
			int refundPercentageForTicketCancellation20DaysBeforeTravelDate) {
		this.refundPercentageForTicketCancellation20DaysBeforeTravelDate = refundPercentageForTicketCancellation20DaysBeforeTravelDate;
	}
	public int getCarrierID() {
		return carrierID;
	}
	public void setCarrierID(int carrierID) {
		this.carrierID = carrierID;
	}
	public String getCarrierName() {
		return carrierName;
	}
	public void setCarrierName(String carrierName) {
		this.carrierName = carrierName;
	}
	public int getDiscountPercentageThirtyDaysAdvanceBooking() {
		return discountPercentageThirtyDaysAdvanceBooking;
	}
	public void setDiscountPercentageThirtyDaysAdvanceBooking(int discountPercentageThirtyDaysAdvanceBooking) {
		this.discountPercentageThirtyDaysAdvanceBooking = discountPercentageThirtyDaysAdvanceBooking;
	}
	public int getDiscountPercentageSixtyDaysAdvanceBooking() {
		return discountPercentageSixtyDaysAdvanceBooking;
	}
	public void setDiscountPercentageSixtyDaysAdvanceBooking(int discountPercentageSixtyDaysAdvanceBooking) {
		this.discountPercentageSixtyDaysAdvanceBooking = discountPercentageSixtyDaysAdvanceBooking;
	}
	public int getDiscountPercentageNinteyDaysAdvanceBooking() {
		return discountPercentageNinteyDaysAdvanceBooking;
	}
	public void setDiscountPercentageNinteyDaysAdvanceBooking(int discountPercentageNinteyDaysAdvanceBooking) {
		this.discountPercentageNinteyDaysAdvanceBooking = discountPercentageNinteyDaysAdvanceBooking;
	}
	public int getSilverUserDiscount() {
		return silverUserDiscount;
	}
	public void setSilverUserDiscount(int silverUserDiscount) {
		this.silverUserDiscount = silverUserDiscount;
	}
	public int getGoldUserDiscount() {
		return goldUserDiscount;
	}
	public void setGoldUserDiscount(int goldUserDiscount) {
		this.goldUserDiscount = goldUserDiscount;
	}
	public int getPlatinumUserDiscount() {
		return platinumUserDiscount;
	}
	public void setPlatinumUserDiscount(int platinumUserDiscount) {
		this.platinumUserDiscount = platinumUserDiscount;
	}
}
