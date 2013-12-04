package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.Review;

public class DisplayReviewDao {
	
	public List<Review> display()
	{
	
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
		EntityManager em= emf.createEntityManager();
		Query query = em.createQuery("select k from Review k"); 
		List<Review> rs=query.getResultList();
		return rs;
		
	}
	


}
