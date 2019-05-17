package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DButils {
	
	public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException , SQLException{
		
		PreparedStatement ps = null;
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/CRUD";
		String user = "root";
		String pass= "";
		
		Connection conn = DriverManager.getConnection(url,user,pass);
		ps= conn.prepareStatement(sql);
		
		return ps;
	}
	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		System.out.println("helo succes");
		
		getPreparedStatement("select * from news");
	}

}
