package pract;

import java.util.ArrayList;
import java.util.List;

import entity.Payment;
import DAO.DisplayBookingDao;
import DAO.RegistrationDao;

public class Pay {

	private int amount;
	private String valid_from;
	private String valid_to;
	private int creditcard_no;
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getCreditcard_no() {
		return creditcard_no;
	}
	public void setCreditcard_no(int creditcard_no) {
		this.creditcard_no = creditcard_no;
	}
	public int getCvv_no() {
		return cvv_no;
	}
	public void setCvv_no(int cvv_no) {
		this.cvv_no = cvv_no;
	}
	private int cvv_no;
	private String userid;
	
	
	
	
	public String getValid_from() {
		return valid_from;
	}
	public void setValid_from(String valid_from) {
		this.valid_from = valid_from;
	}
	public String getValid_to() {
		return valid_to;
	}
	public void setValid_to(String valid_to) {
		this.valid_to = valid_to;
	}
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String insertpayment()
	{
		RegistrationDao pd= new RegistrationDao();
		Pay p= new Pay();
		p.setAmount(this.amount);
		p.setCreditcard_no(this.creditcard_no);
		p.setValid_from(this.valid_from);
		p.setValid_to(this.valid_to);
		p.setCvv_no(this.cvv_no);
		p.setUserid(this.userid);
		pd.sendpay(p);
		return "success";
	}
	
	private List<Payment> dr;
	public List<Payment> getDr() {
		return dr;
	}
	public void setDr(List<Payment> dr) {
		this.dr = dr;
	}
	public String displaybooking()
	{
		Pay p1 = new Pay();
		p1.setUserid(this.getUserid());
		dr=new ArrayList<Payment>();
		DisplayBookingDao drd = new DisplayBookingDao();
		this.dr=drd.display(p1);
		return "success2";
	}

}
