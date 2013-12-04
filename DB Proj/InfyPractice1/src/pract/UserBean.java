package pract;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

import DAO.RegistrationDao;


public class UserBean {
	private String firstname;
	private String lastname;
	private String username;
	private String password;
	private String email;
	private String street;
	private String city;
	private String state;
	private int phone;
	private String secretq;
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getSecretq() {
		return secretq;
	}
	public void setSecretq(String secretq) {
		this.secretq = secretq;
	}
	
	public String insertdata()
	{
		RegistrationDao rd = new RegistrationDao();
		UserBean b= new UserBean();
		b.setFirstname(this.firstname);
		b.setLastname(this.lastname);
		b.setUsername(this.username);
		b.setPassword(this.password);
		b.setEmail(this.email);
		b.setPhone(this.phone);
		b.setStreet(this.street);
		b.setCity(this.city);
		b.setState(this.state);
		b.setSecretq(this.secretq);
		rd.send(b);
		
		this.firstname="";
		this.lastname="";
		this.username="";
		this.password="";
		this.email="";
		this.street="";
		this.city="";
		this.state="";
		this.phone=0;
		this.secretq="";
		
		return "success";
	}
	
}
