package model;

public class User {
	//private int iduser;
	private String email;
	private String pass;
	private String username;

	public User() {

	}

	public User(String email, String pass, String username) {
		//this.iduser = iduser;
		this.email = email;
		this.pass = pass;
		this.username = username;
	}

	//public int getiduser() {
	//	return iduser;
	//}

	//public void setiduser(int iduser) {
	//	this.iduser = iduser;
	//}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public String getpass() {
		return pass;
	}

	public void setpass(String pass) {
		this.pass = pass;
	}
	public String getusername() {
		return username;
	}

	public void setusername(String username) {
		this.username = username;
	}
}
