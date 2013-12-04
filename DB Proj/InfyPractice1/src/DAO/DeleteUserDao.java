package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.Payment;
import entity.Review;
import entity.User;
import pract.CancelUser;
import pract.UserLogin;

public class DeleteUserDao {
	
	public void delete(String username)
	{
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
		EntityManager em= emf.createEntityManager();
		try
		{
			
			System.out.println(username);
			System.out.println(1);
		em.getTransaction().begin();
		
		User u2=em.find(User.class, "sak");
		System.out.println(u2.getEmail());
		User u1=em.find(User.class, username);
		System.out.println(u1.getEmail());
		em.remove(u1);
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
	
	
	public List<User> load2() 
	{
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		List<User> login = (List<User>)em.createNamedQuery("User.findAll", User.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return login;
	}
	
	public boolean validateuser(String u1) {
		// TODO Auto-generated method stub
		boolean set = false;
		List<User> login = load2();
		for (User log : login)
			if (log.getUserid().equals(u1))
			{
				
				delete(u1);
				set = true;
			break;
			}
		return set;
	}

	
	/*public boolean validateuser(String ul) {
		// TODO Auto-generated method stub
		boolean set = false;
		List<User> login = load2();
		for (User log : login)
			if (log.getUserid().equals(ul))
			{
				
				delete(ul);
				set = true;
			break;
			}
		return set;
	}*/
	
	
	
	
	
	
	
	public void deleteBook(int bookingid)
	{
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
		EntityManager em= emf.createEntityManager();
		try
		{
			System.out.println(bookingid);
			System.out.println(1);
		em.getTransaction().begin();
		
		Payment u1=em.find(Payment.class, bookingid);
		//System.out.println(u1.getEmail());
		em.remove(u1);
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
	
	public List<Payment> load1() 
	{
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		List<Payment> login = (List<Payment>)em.createNamedQuery("Payment.findAll", Payment.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return login;
	}
	
	public boolean validatebooking(int ul) {
		// TODO Auto-generated method stub
		boolean set = false;
		List<Payment> login = load1();
		for (Payment log : login)
			if (log.getBookingid()==ul)
			{
				
				deleteBook(ul);
				set = true;
			break;
			}
		return set;
	}
	
	/*public boolean validatebooking(int ul) {
		boolean set = false;
		List<Payment> login = load1();
		for (Payment log : login)
			if (log.getBookingid()==ul)
			{
				
				deleteBook(ul);
				set = true;
			break;
			}
		return set;
	}*/

	
	
	
	
	

	
	public void deleteReview(int reviewid)
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
		EntityManager em= emf.createEntityManager();
		try
		{
			
			
		em.getTransaction().begin();
		
		Review u1=em.find(Review.class, reviewid);
		//System.out.println(u1.getEmail());
		em.remove(u1);
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
	
	private static final String PERSISTENCE_UNIT_NAME = "InfyPractice1";
	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
	
	public List<Review> load() 
	{
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		List<Review> login = (List<Review>)em.createNamedQuery("Review.findAll", Review.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return login;
	}
	public boolean validatereview(int ul) {
		boolean set = false;
		List<Review> login = load();
		for (Review log : login)
			if (log.getReviewid()==ul)
			{
				
				deleteReview(ul);
				set = true;
			break;
			}
		return set;
	}


	
	


	}

