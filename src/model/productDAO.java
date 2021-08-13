package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class productDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	// DB ConnectionPool
	public void getConnection() {

		try {
			Context initctx = new InitialContext();
			DataSource ds = (DataSource) initctx.lookup("java:comp/env/jdbc/OracleDB");

			conn = ds.getConnection();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB연결 성공");
		}
	}
	
	//product Insert
	public boolean insertProduct(HttpServletRequest request) {
		boolean b=false;
		try {
			//업로드할 이미지 경로(절대경로)
			String uploadDir = request.getServletContext().getRealPath("image");
			//String uploadDir = "C:\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\FitTest\image";
			//MultipartRequest multi = new MultipartRequest(request,savePath,sizeLimit,new DefaultFileRenamePolicy());
			MultipartRequest multi =  new MultipartRequest(request, uploadDir, 5*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
			getConnection();
			String sql = "insert into product values(product_seq.nextval, ?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, multi.getParameter("category"));
			pstmt.setString(2, multi.getParameter("name"));
			pstmt.setString(3, multi.getParameter("price"));
			pstmt.setString(4, multi.getParameter("contents"));
			pstmt.setString(5, multi.getFilesystemName("image"));
			if(pstmt.executeUpdate()>0)b=true;				
			pstmt.close();
			conn.commit();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	
	public ArrayList<productBean> getProductList(){
		ArrayList<productBean> list = new ArrayList<>();
		try {
			getConnection();
			String sql = "select * from product ";
			pstmt = conn.prepareStatement(sql);

			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				productBean bean = new productBean();
				bean.setProdnum(rs.getInt("prodnum"));
				bean.setCategory(rs.getInt("category"));
				bean.setName(rs.getString("name"));
				bean.setPrice(rs.getString("price"));
				bean.setContents(rs.getString("contents"));
				bean.setImage(rs.getString("image"));
				list.add(bean);
			}
					
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public productBean getProduct(int prodnum) {
		productBean bean = new productBean();
		try {
			getConnection();
			String sql = "select * from product where prodnum=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, prodnum);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				
				bean.setProdnum(rs.getInt("prodnum"));
				bean.setCategory(rs.getInt("category"));
				bean.setName(rs.getString("name"));
				bean.setPrice(rs.getString("price"));
				bean.setContents(rs.getString("contents"));
				bean.setImage(rs.getString("image"));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	public boolean updateProduct(HttpServletRequest request) {
		boolean b=false;
		try {
			String uploadDir = request.getServletContext().getRealPath("image");
			MultipartRequest multi =  new MultipartRequest(request, uploadDir, 5*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
			getConnection();
	
			String sql="update product set category=?, name=?, price=?, contents=?,image=? where prodnum=?";
			pstmt=conn.prepareStatement(sql);
		
			pstmt.setString(1, multi.getParameter("category"));
			pstmt.setString(2, multi.getParameter("name"));
			pstmt.setString(3, multi.getParameter("price"));
			pstmt.setString(4, multi.getParameter("contents"));
			pstmt.setString(5, multi.getFilesystemName("image"));
			pstmt.setString(6, multi.getParameter("prodnum"));
			
			if(pstmt.executeUpdate() > 0 ) b = true;           
			

			pstmt.close();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	
	public boolean deleteProduct(int prodnum) {
		boolean b=false;
		try {
			getConnection();
			String sql="delete from product where prodnum=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, prodnum);
			
			if(pstmt.executeUpdate()>0)b=true;
			
			pstmt.close();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}
}
