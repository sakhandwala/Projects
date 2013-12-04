package pract;

import DAO.LoginDao;

public class UserLogin {
	private String username;
	private String password;
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
	
	public String checkuser()
	{
		UserLogin ul = new UserLogin();
		LoginDao ld= new LoginDao();
		ul.setUsername(this.username);
		ul.setPassword(this.password);
		if(ld.validateCredential(ul))
		return "success";
		else
	    return "false";
	}

}
