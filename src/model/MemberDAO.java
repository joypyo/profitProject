	package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public void MemberDAO() {

		try {
			String driverName = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "profit";
			String password = "1234";

			Class.forName(driverName);
			conn = DriverManager.getConnection(url, id, password);

			System.out.println("DB�� ���� �Ǿ����ϴ�.\n");

		} catch (ClassNotFoundException e) {
			System.out.println("DB ����̹� �ε� ���� :" + e.toString());
		} catch (SQLException sqle) {
			System.out.println("DB ���ӽ��� :" + sqle.toString());
		} catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}
	}

//ȸ������
	public int join(MemberBean MBean) {

		MemberDAO();

		String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, MBean.getId());
			pstmt.setString(2, MBean.getPassword());
			pstmt.setString(3, MBean.getName());
			pstmt.setString(4, MBean.getAge());
			pstmt.setString(5, MBean.getGender());
			pstmt.setString(6, MBean.getEmail());
			pstmt.setString(7, MBean.getPhone());
			pstmt.setString(8, MBean.getExercise());
			pstmt.setString(9, MBean.getQuestion());
			pstmt.setString(10, MBean.getAnswer());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	
//����üũ
	public int login(String id, String password) {
		MemberDAO();
		String sql = "select password from member where id=?";

		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(password)) {
					return 1; 
				} else
					return 0; //���Ʋ��
			}
			return -1; //���̵����
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}

	//�������� ã��
	public MemberBean findMember(String name) {
			MemberDAO();
			MemberBean bean = new MemberBean(); 
			
			try {						
				String sql = "select name, id, password, question, answer from member where name=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					
					bean.setName(rs.getString(1));
					bean.setId(rs.getString(2));
					bean.setPassword(rs.getString(3));
					bean.setQuestion(rs.getString(4));
					bean.setAnswer(rs.getString(5));
					return bean;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException ex) {
					}
			}
			return null;
		}
	
//ȸ��������������
	public MemberBean getMember(String id) {
		MemberDAO();

		MemberBean MBean = new MemberBean();
		try {
			// 1,2�ܰ� �޼���ȣ��

			// 3�ܰ� id�� �ش��ϴ� ������� ��������
			String sql = "select * from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			// 4�ܰ� rs����
			rs = pstmt.executeQuery();
			// 5�ܰ� �����Ͱ� ������
			// �ڹٺ� ���� rs=>�ڹٺ�����
			if (rs.next()) {
				MBean.setId(rs.getString(1));
				MBean.setPassword(rs.getString(2));
				MBean.setName(rs.getString(3));
				MBean.setAge(rs.getString(4));
				MBean.setGender(rs.getString(5));
				MBean.setEmail(rs.getString(6));
				MBean.setPhone(rs.getString(7));
				MBean.setExercise(rs.getString(8));
				MBean.setQuestion(rs.getString(9));
				MBean.setAnswer(rs.getString(10));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return MBean;
	}
	
	

//ȸ����������
	public int updateMember(MemberBean MBean, String pass) {
		MemberDAO();
		
		int check=-1;
		try {
			// 3�ܰ� id�� �ش��ϴ� passwd��������
			String sql = "select password from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, MBean.getId());
			// 4�ܰ� db�� ����� �н����� �ҷ��ͼ� rs�� ����
			rs = pstmt.executeQuery();
				
			if (rs.next()) {
				String password = rs.getString(1);
				
				if (pass.equals(password)) {//�Է��� pw�� db�� ����� pw ��
					
					// 3�ܰ�
					sql = "update member set password=?, email=?, phone=? where id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, MBean.getPassword());
					pstmt.setString(2, MBean.getEmail());
					pstmt.setString(3, MBean.getPhone());
					pstmt.setString(4, MBean.getId());
					// 4�ܰ�
					pstmt.executeUpdate();
					check = 1;
				}else {
					check = 0;
				}
			}
	}catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return check;
	}

//ȸ������
	public int deleteMember(String id, String password) {
		MemberDAO();
		int check = 0;

		try {
			// 1,2�ܰ� �޼��� ȣ��

			// 3�ܰ� : id�� �ش��ϴ� passwd�� �������� sql(sql ����)
			String sql = "select password from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			// 4�ܰ� ���� => rs����
			rs = pstmt.executeQuery();
			// 5�ܰ� rs ������������ id����
			// ����й�ȣ rs��й�ȣ �� ������ => ����
			// Ʋ���� => ��й�ȣƲ��
			// ������ id����
			if (rs.next()) {
				// id����
				String passwd = rs.getString("password");
				if (passwd.equals(passwd)) {
					// ��й�ȣ ���� ����
					sql = "delete from member where id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);

					// 4�ܰ� ����
					pstmt.executeUpdate(); // insert,update,delete
					check = 1;
				} else {
					check = 0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return check;
	}
}