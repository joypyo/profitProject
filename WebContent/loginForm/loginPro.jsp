<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.MemberDAO"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.PrintWriter"%>
<html>
<head>
<title>로그인 처리 JSP</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="MBean" class="model.MemberBean">
		<jsp:setProperty name="MBean" property="*" />
	</jsp:useBean>
	<%
		MemberDAO mdao = new MemberDAO();
		String id = MBean.getId();
		String password = MBean.getPassword();
		

	int result = mdao.login(id, password);

	if (result == 1) {
		session.setAttribute("id", MBean.getId());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");

	} else if (result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("<script>");

	} else if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디 입니다.');");
		script.println("history.back()");
		script.println("</script>");

	} else if (result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.');");
		script.println("history.back()");
		script.println("</script>");
	}
	%>
</body>
</html>
