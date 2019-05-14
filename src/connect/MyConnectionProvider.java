package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnectionProvider{

	static String DB_URL = "jdbc:sqlserver://localhost:1433;" + "databaseName=Data;" + "integratedSecurity=true";
	static String USER_NAME = "sa";
	static String PASSWORD = "12345";
	
	static Connection con = null;

	public static Connection getCon() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
