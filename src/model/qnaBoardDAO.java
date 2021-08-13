package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class qnaBoardDAO {

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
			System.out.println("커넥션풀 연결 실패");
		}
	}

	// qnaBoard Insert
	public void insertqnaBoard(boardBean bBean) {
		getConnection();

		int ref = 0;
		int re_step = 1;
		int re_level = 1;

		try {
			String rsql = "select max(ref) from qnaBoard";
			pstmt = conn.prepareStatement(rsql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				ref = rs.getInt(1) + 1;
			}
			String sql = "insert into qnaBoard values(qnaBoard_seq.nextval,?,?,?,?,?,sysdate,?,?,?,0,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bBean.getId());
			pstmt.setString(2, bBean.getPassword());
			pstmt.setString(3, bBean.getName());
			pstmt.setString(4, bBean.getTitle());
			pstmt.setInt(5, bBean.getCategory());
			pstmt.setInt(6, ref);
			pstmt.setInt(7, re_step);
			pstmt.setInt(8, re_level);
			pstmt.setString(9, bBean.getContent());

			pstmt.executeUpdate();

			if (rs != null) {
				if (pstmt != null) {
					if (conn != null) {
						rs.close();
						pstmt.close();
						conn.commit();
						conn.close();
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// qnaBoardList
	public Vector<boardBean> getAllboard(int start, int end) {

		getConnection();

		Vector<boardBean> vec = new Vector<boardBean>();
		try {
			String sql = "select * from (select A.*, Rownum Rnum from (select* from qnaBoard order by ref desc, re_step asc)A) where Rnum >=? and Rnum <=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				boardBean bean = new boardBean();

				bean.setNum(rs.getInt(1));
				bean.setId(rs.getString(2));
				bean.setPassword(rs.getString(3));
				bean.setName(rs.getString(4));
				bean.setTitle(rs.getString(5));
				bean.setCategory(rs.getInt(6));
				bean.setReg_date(rs.getString(7));
				bean.setRef(rs.getInt(8));
				bean.setRe_step(rs.getInt(9));
				bean.setRe_level(rs.getInt(10));
				bean.setReadcount(rs.getInt(11));
				bean.setContent(rs.getString(12));

				vec.add(bean);
			}
			if (rs != null) {
				if (pstmt != null)
					if (conn != null)
						rs.close();
				pstmt.close();
				conn.commit();
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return vec;
	}

	// Board count
	public int getAllcount() {
		getConnection();

		int count = 0;
		try {
			String sql = "select count(*) from qnaBoard";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1);
			}
			if (rs != null) {
				if (pstmt != null)
					if (conn != null)
						rs.close();
				pstmt.close();
				conn.commit();
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	// qnaBoard View
	public boardBean getOneBoard(int num) {
		getConnection();

		boardBean bean = new boardBean();

		try {
			String readsql = "update qnaBoard set readcount = readcount +1 where num=?";
			pstmt = conn.prepareStatement(readsql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
						
			String sql = "select * from qnaBoard where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setId(rs.getString(2));
				bean.setPassword(rs.getString(3));
				bean.setName(rs.getString(4));
				bean.setTitle(rs.getString(5));
				bean.setCategory(rs.getInt(6));
				bean.setReg_date(rs.getString(7));
				bean.setRef(rs.getInt(8));
				bean.setRe_step(rs.getInt(9));
				bean.setRe_level(rs.getInt(10));
				bean.setReadcount(rs.getInt(11));
				bean.setContent(rs.getString(12));
			}
			if (rs != null) {
				if (pstmt != null) {
					if (conn != null) {
						rs.close();
						pstmt.close();
						conn.commit();
						conn.close();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return bean;
	}
	
	//qnaBoardReply
	public void replyqnaBoard(boardBean bBean) {
		getConnection();
		
		try {
			int ref = bBean.getRef();
			int re_step = bBean.getRe_step();
			int re_level = bBean.getRe_level();
					
			String levelsql = "update qnaBoard set re_level = re_level+1 where ref=? and re_level>?";
			pstmt = conn.prepareStatement(levelsql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, re_level);
			pstmt.executeUpdate();
			
			String sql = "insert into qnaBoard values(qnaBoard_seq.nextval,?,?,?,?,?,sysdate,?,?,?,0,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bBean.getId());
			pstmt.setString(2, bBean.getPassword());
			pstmt.setString(3, bBean.getName());
			pstmt.setString(4, bBean.getTitle());
			pstmt.setInt(5, bBean.getCategory());
			pstmt.setInt(6, ref);
			pstmt.setInt(7, re_step +1);
			pstmt.setInt(8, re_level +1);
			pstmt.setString(9, bBean.getContent());

			pstmt.executeUpdate();
			
			if(pstmt != null) {
				if(conn != null)
					pstmt.close();
					conn.commit();
					conn.close();
			}				
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//password return
	public String getPass(int num) {
		getConnection();
		String pass = null;
		try {
			String sql = "select password from qnaBoard where num =?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				pass = rs.getString(1);
			}
			if(pstmt != null) {
				if(conn != null)
					pstmt.close();
					conn.commit();
					conn.close();
				}	
			}catch(Exception e) {
				e.printStackTrace();
			}
		return pass;
	}
	
	//board Update return
	public boardBean getOneUpdateBoard(int num) {
		getConnection();
		
		boardBean bean = new boardBean();
		
		try {
			String sql = "select * from qnaBoard where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setId(rs.getString(2));
				bean.setPassword(rs.getString(3));
				bean.setName(rs.getString(4));
				bean.setTitle(rs.getString(5));
				bean.setCategory(rs.getInt(6));
				bean.setReg_date(rs.getString(7));
				bean.setRef(rs.getInt(8));
				bean.setRe_step(rs.getInt(9));
				bean.setRe_level(rs.getInt(10));
				bean.setReadcount(rs.getInt(11));
				bean.setContent(rs.getString(12));
			}
			if( rs != null) {
				if (pstmt != null) {
					if(conn != null) {
						rs.close();
						pstmt.close();
						conn.commit();
						conn.close();
					}
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	//board update
	public void updateBoard(boardBean bBean) {
		getConnection();
		
		try {
			String sql = "update qnaBoard set title =?, category =?, content =? where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, bBean.getTitle());
			pstmt.setInt(2, bBean.getCategory());
			pstmt.setString(3, bBean.getContent());
			pstmt.setInt(4,bBean.getNum());
			
			pstmt.executeUpdate();
			
			if(pstmt != null) {
				if( conn != null)
				pstmt.close();
				conn.commit();
				conn.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//board delete
	public void deleteBoard(int num) {
		getConnection();
		
		try {
			String sql = "delete from qnaBoard where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
			if(pstmt != null) {
				if( conn != null)
				pstmt.close();
				conn.commit();
				conn.close();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	


}
