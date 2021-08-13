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

			System.out.println("DB에 연결 되었습니다.\n");

		} catch (ClassNotFoundException e) {
			System.out.println("DB 드라이버 로딩 실패 :" + e.toString());
		} catch (SQLException sqle) {
			System.out.println("DB 접속실패 :" + sqle.toString());
		} catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}
	}

//회원가입
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
	
	
	
//유저체크
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
					return 0; //비번틀림
			}
			return -1; //아이디없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}

	//가입정보 찾기
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
	
//회원정보가져오기
	public MemberBean getMember(String id) {
		MemberDAO();

		MemberBean MBean = new MemberBean();
		try {
			// 1,2단계 메서드호출

			// 3단계 id에 해당하는 모든정보 가져오기
			String sql = "select * from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			// 4단계 rs저장
			rs = pstmt.executeQuery();
			// 5단계 데이터가 있으면
			// 자바빈 생성 rs=>자바빈저장
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
	
	

//회원정보수정
	public int updateMember(MemberBean MBean, String pass) {
		MemberDAO();
		
		int check=-1;
		try {
			// 3단계 id에 해당하는 passwd가져오기
			String sql = "select password from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, MBean.getId());
			// 4단계 db에 저장된 패스워드 불러와서 rs에 저장
			rs = pstmt.executeQuery();
				
			if (rs.next()) {
				String password = rs.getString(1);
				
				if (pass.equals(password)) {//입력한 pw와 db에 저장된 pw 비교
					
					// 3단계
					sql = "update member set password=?, email=?, phone=? where id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, MBean.getPassword());
					pstmt.setString(2, MBean.getEmail());
					pstmt.setString(3, MBean.getPhone());
					pstmt.setString(4, MBean.getId());
					// 4단계
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

//회원삭제
	public int deleteMember(String id, String password) {
		MemberDAO();
		int check = 0;

		try {
			// 1,2단계 메서드 호출

			// 3단계 : id에 해당하는 passwd를 가져오는 sql(sql 생성)
			String sql = "select password from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			// 4단계 실행 => rs저장
			rs = pstmt.executeQuery();
			// 5단계 rs 데이터있으면 id있음
			// 폼비밀번호 rs비밀번호 비교 맞으면 => 수정
			// 틀리면 => 비밀번호틀림
			// 없으면 id없음
			if (rs.next()) {
				// id있음
				String passwd = rs.getString("password");
				if (passwd.equals(passwd)) {
					// 비밀번호 맞음 수정
					sql = "delete from member where id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);

					// 4단계 실행
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