package DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.Payment;
import entity.Review;
import entity.User;
import pract.Pay;
import pract.UserBean;
import pract.UserReview;

public class RegistrationDao {
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
	
	public void send(UserBean b)
	{
		User user= new User();
		user.setFirstname(b.getFirstname());
		user.setLastname(b.getLastname());
		user.setCity(b.getCity());
		user.setEmail(b.getEmail());
		user.setMobile(b.getPhone());
		user.setPassword(b.getPassword());
		user.setSecretq(b.getSecretq());
		user.setStreet(b.getStreet());
		user.setState(b.getState());
		user.setUserid(b.getUsername());
		
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
		EntityManager em= emf.createEntityManager();
		try
		{
		em.getTransaction().begin();
		em.persist(user);
		em.getTransaction().commit();
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		finally
		{
		em.close();
		}
	}
	
	public void sendreview(UserReview r1)
	{
		Review r= new Review();
		r.setReview(r1.getReview());
		System.out.println(r.getReview());
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
		EntityManager em= emf.createEntityManager();
		try
		{
		em.getTransaction().begin();
		em.persist(r);
		em.getTransaction().commit();
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		finally
		{
		em.close();
		}
		
	}
	
	public void sendpay(Pay r1)
	{
		Payment p= new Payment();
		p.setAmount(r1.getAmount());
		p.setCreditcardNo(r1.getCreditcard_no());
		p.setCvvNo(r1.getCvv_no());
		p.setValidFrom(r1.getValid_from());
		p.setValidTo(r1.getValid_to());
		p.setUserid((r1.getUserid()));
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
		EntityManager em= emf.createEntityManager();
		try
		{
		em.getTransaction().begin();
		em.persist(p);
		em.getTransaction().commit();
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		finally
		{
		em.close();
		}
		
	}
	
	

}
