<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="model.MemberDAO"%>
<%@ page import="model.MemberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정 처리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="MBean" class="model.MemberBean">
		<jsp:setProperty name="MBean" property="*" />
	</jsp:useBean>

	<%
	String pass=request.getParameter("pass");
	MemberDAO Mdao = new MemberDAO();
	int check = Mdao.updateMember( MBean,pass); 

	if (check == 0) {
	%>
	<script type="text/javascript">
		alert("비밀번호를 확인해 주세요");
		history.back();
	</script>
	<%
		} else {
	%><script type="text/javascript">
		alert("회원정보가 수정되었습니다");
		location.href = "main.jsp";
	</script>
	
	<%
		}
	%>
</body>
</html>