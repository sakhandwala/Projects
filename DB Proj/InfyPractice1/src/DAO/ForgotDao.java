package DAO;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import pract.UserForgot;
import pract.UserLogin;
import entity.User;

public class ForgotDao {

	private static final String PERSISTENCE_UNIT_NAME = "InfyPractice1";
	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("InfyPractice1");
	EntityManager em= emf.createEntityManager();
	
	public List<User> load() 
	{
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		List<User> login = (List<User>)em.createNamedQuery("User.findAll", User.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return login;
	}
	public boolean validateCredential(UserForgot ul) {
		boolean set = false;
		List<User> login = load();
		for (User log : login)
			if ((log.getUserid().equals(ul.getUsername())) && (log.getSecretq().equals(ul.getSecretq()))){
				set = true;
			break;
			}
		return set;
		
		
	}
	
	public String RetrievePassword(UserForgot uf)
	{
		if(validateCredential(uf))
		{
			Query query=em.createQuery("select k from User k where k.userid=?1 and k.secretq=?2");
			query.setParameter(1, uf.getUsername());
			query.setParameter(2, uf.getSecretq());
			List<User> list=query.getResultList();
			return (list.get(0).getPassword());
		}
		else 
			return null;

	}
}
