<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="model.MemberDAO"%>
<%@ page import="model.MemberBean"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="MBean" class="model.MemberBean">
		<jsp:setProperty name="MBean" property="*" />
	</jsp:useBean>
	<%
	MemberDAO Mdao = new MemberDAO();
	String age = request.getParameter("yy")+request.getParameter("mm")+request.getParameter("dd");
	MBean.setAge(age);
	
	
	PrintWriter script = response.getWriter();
	
	String id = null;
	if (session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
		
	}

	if (MBean.getId() == null || MBean.getPassword() == null || MBean.getName() == null || MBean.getAge() == null 
			|| MBean.getGender() == null || MBean.getEmail() == null || MBean.getPhone() == null || MBean.getExercise() == null 
			|| MBean.getQuestion() == null || MBean.getAnswer() == null) {

		script.println("<script>");
		script.println("alert('입력하지 않은 사항이 있습니다.')");
		script.println("</script>");

	}else{
		script.println("<script>");
		script.println("alert('입력 완료')");
		script.println("</script>");
		Mdao.join(MBean);
	}
	
	%>
</body>
</html>