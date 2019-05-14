package model;

public class Category {
	private int idcate;
	private String namecate;
	
	public Category(){		
	}
	
	public Category(int idcate, String namecate) {
		this.idcate = idcate;
		this.namecate = namecate;
	}
	
	public int getidcate()
	{
		return idcate;
	}
	
	public void setidcate(int idcate)
	{
		this.idcate = idcate;
	}
	
	public String getnamecate()
	{
		return namecate;
	}
	
	public void setnamecate(String namecate)
	{
		this.namecate = namecate;
	}
}
