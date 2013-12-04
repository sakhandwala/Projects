package pract;

import DAO.DeleteUserDao;

public class CancelUser {

	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String deleteuser()
	{ 
		DeleteUserDao d = new DeleteUserDao();
		CancelUser u = new CancelUser();
		u.setUsername(this.username);
		if(d.validateuser(this.username))
		{
			this.username="";
		return "success";}
		else
		{
			this.username="";
			return "fail";}
	}
}
