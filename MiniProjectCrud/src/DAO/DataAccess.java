package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;



import DB.DButils;
import model.News;

public class DataAccess {
	
	public void addNew(News n) {
		
			 
			try {
				PreparedStatement ps = DButils.getPreparedStatement("insert into news values(default,?,?,?,?,?,?)");
				ps.setString(1, n.getTitle());
				ps.setString(2, n.getDate());
				ps.setString(3, n.getDescription());
				ps.setString(4, n.getDetail());
				ps.setString(5, n.getCategory());
				ps.setString(6, n.getImage());
				ps.executeUpdate();
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		
	}
	
	
	
	public static List<News> getAll(){
		
		List<News> ls  =  new LinkedList<>();
		
			ResultSet rs;
			try {
				rs = DButils.getPreparedStatement("select * from news").executeQuery();
				while (rs.next()) {
					News n = new News(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
							rs.getString(7));
					
					ls.add(n);
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
	
		
		return ls;
	}
	
	
	public static List<News> getNewById(int id){
		
		List<News> ls = new LinkedList<>();
		String sql ="select * from news where id="+id;
		try {
			ResultSet rs = DButils.getPreparedStatement(sql).executeQuery();
			while (rs.next()) {
				News n = new News(rs.getInt(1),
						rs.getString(2), 
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6), 
						rs.getString(7));
				ls.add(n);
				
			}
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ls;
	}
	
	
	
	public void edit(int id,String title,String description,String detail,String category,String image ) {
		
		String sql="update news set title=?,discription=?, detail=?,category=?,image=?"+"where id=?";
		PreparedStatement ps ;
		try {
			ps= DButils.getPreparedStatement(sql);
			ps.setString(1, title);
			ps.setString(2, description);
			ps.setString(3, detail);
			ps.setString(4, category);
			ps.setString(5, image);
			ps.setInt(6, id);
			
			ps.executeUpdate();

			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	public void delete(int id) {
		String sql="delete from news where id=?";
		try {
			PreparedStatement ps = DButils.getPreparedStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	

}
