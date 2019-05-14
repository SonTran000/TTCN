package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.MyConnectionProvider;
import model.Post;

public class PostDAO {
	public ArrayList<Post> getListPost(int idcate) throws SQLException
	{
		Connection con = MyConnectionProvider.getCon();
		String sql = "select * from Post where idcate = '"+idcate+"'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Post> list = new ArrayList<>();
		while(rs.next())
		{
			Post p = new Post();
			p.setidpost(rs.getInt("idpost"));
			p.settitle(rs.getString("title"));
			p.setcontent(rs.getString("content"));
			p.setdateup(rs.getDate("dateup"));
			p.setimage(rs.getString("image1"));
			list.add(p);
		}
		return list;
	}
	public ArrayList<Post> getListPostDate() throws SQLException
	{
		Connection con = MyConnectionProvider.getCon();
		String sql = "select * from Post where dateup > '2-2-2019'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Post> list = new ArrayList<>();
		while(rs.next())
		{
			Post p = new Post();
			p.setidpost(rs.getInt("idpost"));
			p.settitle(rs.getString("title"));
			p.setcontent(rs.getString("content"));
			p.setdateup(rs.getDate("dateup"));
			p.setimage(rs.getString("image1"));
			p.setidcate(rs.getInt("idcate"));
			list.add(p);
		}
		return list;
	}
	public Post getPost(int idpost) throws SQLException
	{
		Connection con = MyConnectionProvider.getCon();
		String sql = "select * from Post where idpost = '"+idpost+"'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		Post p = new Post();
		while(rs.next())
		{
			p.setidpost(rs.getInt("idpost"));
			p.settitle(rs.getString("title"));
			p.setcontent(rs.getString("content"));
			p.setdateup(rs.getDate("dateup"));
			p.setimage(rs.getString("image1"));
		}
		return p;
	}
	public static void main(String[] args) throws SQLException
	{
		PostDAO dao = new PostDAO();
		for (Post p: dao.getListPostDate())
		{
			System.out.println(p.getidpost() + "-" + p.getcontent() + "-" + p.getdateup());
		}
	}

}
