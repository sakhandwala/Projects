package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import pract.Pay;
import pract.UserForgot;
import entity.Payment;
import entity.Review;
import entity.User;

public class DisplayBookingDao {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
	EntityManager em= emf.createEntityManager();
	
	

	public List<Payment> display(Pay p1) {
		
		// TODO Auto-generated method stub
		//EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
		//EntityManager em= emf.createEntityManager();
		Query query = em.createQuery("select k from Payment k where k.userid= ?1"); 
		query.setParameter(1, p1.getUserid());
		List<Payment> rs=query.getResultList();
		return rs;
		
	}
	
}
