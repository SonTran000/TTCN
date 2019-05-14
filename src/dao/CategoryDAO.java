package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Category;
import connect.MyConnectionProvider;

public class CategoryDAO {
	
	public ArrayList<Category> getListCategory() throws SQLException
	{
		Connection con = MyConnectionProvider.getCon();
		String sql = "select * from Category";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Category> list = new ArrayList<>();
		while(rs.next())
		{
			Category cate = new Category();
			cate.setidcate(rs.getInt("idcate"));
			cate.setnamecate(rs.getString("namecate"));
			list.add(cate);
		}
		return list;
	}
	/*
	public static void main(String[] args) throws SQLException
	{
		CategoryDAO dao = new CategoryDAO();
		for (Category ds: dao.getListCategory())
		{
			System.out.println(ds.getidcate() + "-" + ds.getnamecate());
		}
	}*/
}
