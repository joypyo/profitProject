package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class exerciseDAO {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getConnection() throws SQLException  {				
		
		try {
			Context initctx;
			
			initctx = new InitialContext();
			DataSource ds = (DataSource) initctx.lookup("java:comp/env/jdbc/OracleDB");

			conn = ds.getConnection(); 	
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public Vector<exerciseBean> selectAllExercise() throws SQLException {
		getConnection(); 
		
		 Vector<exerciseBean> vec = new  Vector<exerciseBean>();
		
		 try {	 
				String sql  = "select * from exercise";
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					exerciseBean bean = new exerciseBean();
					
					bean.setName(rs.getString(1));
					bean.setStand(rs.getInt(2));
					bean.setInc(rs.getInt(3));

					vec.add(bean);			
				}
		if(pstmt != null) {
			if(conn != null) {
				pstmt.close();
				conn.commit();
				conn.close();
			}
		}	
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return vec;	
	}	

	public int selectCalory(String exercise) throws SQLException {
		getConnection(); 
		
		int calory = 0;		
		
		 try {	 
				String sql  = "select stand from exercise where name = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, exercise);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {	
					calory = rs.getInt(1);	

				}
				
		if(pstmt != null) {
			if(conn != null) {
				pstmt.close();
				conn.commit();
				conn.close();
			}
		}	
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		 return calory;	
	}		
	
	public int selectIncrement(String exercise) throws SQLException {
		getConnection(); 
		int inc = 1;
		
		 try {	 
				String sql  = "select inc from exercise where name = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, exercise);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					inc = rs.getInt(1);
							
				}
		if(pstmt != null) {
			if(conn != null) {
				pstmt.close();
				conn.commit();
				conn.close();
			}
		}	
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		 return inc;	
	}		
	
}
