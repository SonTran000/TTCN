package model;

import java.util.Date;

public class Post {
	private int idpost;
	private String title;
	private String content;
	private Date dateup;
	private String image;
	private int idcate;
	
	public Post()
	{
		
	}
	
	public Post(int idpost, String title, String content, Date dateup, String image, int idcate)
	{
		this.idpost = idpost;
		this.title = title;
		this.content = content;
		this.dateup = dateup;
		this.image = image;
		this.idcate = idcate;
	}
	public int getidpost()
	{
		return idpost;
	}
	
	public void setidpost(int idpost)
	{
		this.idpost = idpost;
	}
	
	public String gettitle()
	{
		return title;
	}
	
	public void settitle(String title)
	{
		this.title = title;
	}
	
	public String getcontent()
	{
		return content;
	}
	
	public void setcontent(String content)
	{
		this.content = content;
	}
	
	public Date getdateup()
	{
		return dateup;
	}
	
	public void setdateup(Date dateup)
	{
		this.dateup = dateup;
	}
	
	public String getimage()
	{
		return image;
	}
	
	public void setimage(String image)
	{
		this.image = image;
	}
	
	public int getidcate()
	{
		return idcate;
	}
	
	public void setidcate(int idcate)
	{
		this.idcate = idcate;
	}

}
