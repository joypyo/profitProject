<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="model.MemberDAO"%>
<%@ page import="model.MemberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href = "css/~~~~~~~.css" rel="stylesheet" type ="text/css"/>
<title>회원삭제</title>
</head>
<body>
	<%
	//세션값 가져오기
	String id = (String) session.getAttribute("id");
	//세션값 없으면 loginForm.jsp 이동
	if (id == null) {
		response.sendRedirect("loginForm.jsp");
	}
	//password값 가져오기
	String password = request.getParameter("password");
	
	MemberDAO Mdao = new MemberDAO();
	// int check = deleteMember(id,password)
	int check = Mdao.deleteMember(id, password);
	// check==1 세션값 삭제, 삭제성공메시지, loginForm.jsp 이동
			
	// check==0 비밀번호틀림. 뒤로이동
	if (check == 1) {
		session.invalidate();
	%>
	<script type="text/javascript">
		alert("삭제 성공");
		location.href = "main.jsp";
	</script>
	<%
		} else if (check == 0) {
	%><script type="text/javascript">
		alert("비밀번호 틀림");
		history.back();
	</script>
	<%
		}
	%>
</body>
</html>