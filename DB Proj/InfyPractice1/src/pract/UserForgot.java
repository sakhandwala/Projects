package pract;

import DAO.ForgotDao;


public class UserForgot {

	private String username;
	private String secretq;
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	

	public String getSecretq() {
		return secretq;
	}

	public void setSecretq(String secretq) {
		this.secretq = secretq;
	}
	
	public String displaypwd()
	{
		UserForgot uf=new UserForgot();
		uf.setSecretq(this.getSecretq());
		uf.setUsername(this.getUsername());
		this.password=new ForgotDao().RetrievePassword(uf);
		if(this.password!=null)
		{
			return "abcd";
		}
		else
			return "babaji ka thullu";
	}
}
