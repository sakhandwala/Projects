package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import pract.UserLogin;
import entity.User;

public class LoginDao {
	private static final String PERSISTENCE_UNIT_NAME = "InfyPractice1";
	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
	
	public List<User> load() 
	{
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		List<User> login = (List<User>)em.createNamedQuery("User.findAll", User.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return login;
	}
	public boolean validateCredential(UserLogin ul) {
		boolean set = false;
		List<User> login = load();
		for (User log : login)
			if ((log.getUserid().equals(ul.getUsername())) && (log.getPassword().equals(ul.getPassword()))){
				set = true;
			break;
			}
		return set;
	}

}
