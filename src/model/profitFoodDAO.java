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

public class profitFoodDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;	
	
	public void getConnection() throws SQLException  {				
		
		try {
			Context initctx;
			
			initctx = new InitialContext();
			DataSource ds = (DataSource) initctx.lookup("java:comp/env/jdbc/OracleDB");
			System.out.println("커넥션풀 연결 성공");
			conn = ds.getConnection(); 	
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	
	public Vector<profitFoodBean> selectAllFood() throws SQLException {
		getConnection(); 
		
		 Vector<profitFoodBean> vec = new  Vector<profitFoodBean>();
		
		 try {	 
				String sql  = "select * from food";
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					profitFoodBean bean = new profitFoodBean();
					
					bean.setName(rs.getString(1));
					bean.setCalcory(rs.getInt(2));
					

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

	public int selectCalory(String food) throws SQLException {
		getConnection(); 
		
		int calory = 0;
		
		 try {	 
				String sql  = "select calory from food where name = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, food);
				
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
	
	
	
}
