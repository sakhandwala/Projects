package entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the payment database table.
 * 
 */
@Entity
@NamedQuery(name="Payment.findAll", query="SELECT p FROM Payment p")
public class Payment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int bookingid;

	private int amount;

	@Column(name="creditcard_no")
	private int creditcardNo;

	
	@Column(name="cvv_no")
	private int cvvNo;

	private String userid;

	@Column(name="valid_from")
	private String validFrom;

	@Column(name="valid_to")
	private String validTo;

	
	
	
	
	public Payment() {
	}

	public int getBookingid() {
		return this.bookingid;
	}

	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}

	public int getAmount() {
		return this.amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getCreditcardNo() {
		return this.creditcardNo;
	}

	public void setCreditcardNo(int creditcardNo) {
		this.creditcardNo = creditcardNo;
	}

	public int getCvvNo() {
		return this.cvvNo;
	}

	public void setCvvNo(int cvvNo) {
		this.cvvNo = cvvNo;
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getValidFrom() {
		return this.validFrom;
	}

	public void setValidFrom(String validFrom) {
		this.validFrom = validFrom;
	}

	public String getValidTo() {
		return this.validTo;
	}

	public void setValidTo(String validTo) {
		this.validTo = validTo;
	}

}