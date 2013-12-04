package pract;

import DAO.DeleteUserDao;

public class CancelBooking {

	private int bookingid;

	public int getBookingid() {
		return bookingid;
	}

	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	
	public String deletebooking()
	{
		DeleteUserDao d = new DeleteUserDao();
		CancelBooking b = new CancelBooking();
		b.setBookingid(this.bookingid);
		if(d.validatebooking(this.bookingid))
		{
			this.bookingid=0;
		return "success";}
		else
		{
			this.bookingid=0;
			return "fail";}
	}
}
