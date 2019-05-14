package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.MyConnectionProvider;
import model.User;

public class UserDAO {

	public boolean checkEmail(String email) {
		Connection con = MyConnectionProvider.getCon();
		String sql = "select * from Users where email = '" + email + "'";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				con.close();
				return true;
			}
		} catch (SQLException e) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
		}
		return false;
	}

	public boolean insertUser(User u) {
		Connection con = MyConnectionProvider.getCon();
		String sql = "insert into Users values(?,?,?)";
		try {
			PreparedStatement ps = con.prepareCall(sql);
			// ps.setInt(1, u.getiduser());
			ps.setString(1, u.getemail());
			ps.setString(2, u.getusername());
			ps.setString(3, u.getpass());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
		}
		return false;
	}

	public User Login(String email, String pass) {
		Connection con = MyConnectionProvider.getCon();
		String sql = "select * from Users where email='" + email + "' and pass='" + pass + "'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				User u = new User();
				u.setemail(rs.getString("email"));
				u.setusername(rs.getString("username"));
				u.setpass(rs.getString("pass"));
				con.close();
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}