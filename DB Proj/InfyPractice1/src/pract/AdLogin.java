package pract;

public class AdLogin {
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

	public String checkvalidadmin()
	{
		if((username.equals("sakh") && password.equals("sa")) || (username.equals("mank") && password.equals("ma")))
			return "success";
		else
			return "fail";
		
	}
}
