<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.MemberDAO" %>    
<%@ page import = "model.MemberBean" %>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입정보찾기 처리</title>
</head>
<link rel="stylesheet" href="../css/frame2.css" type="text/css">

<body>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String question = request.getParameter("question");
	String answer = request.getParameter("answer");
	MemberDAO mdao = new MemberDAO();
	MemberBean bean = mdao.findMember(name); 
	
	if(bean==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('가입되어 있는 정보가 없습니다.')");
		script.println("history.back()");
		script.println("</script>"); 
	}
	
	else if( bean.getQuestion().equals(question)&& bean.getAnswer().equals(answer)){
%>
	<div class="inner-container">
         <div class="box">
            <h1>가입정보조회</h1>
            <p>
            <b><%=name %></b>님의 가입정보 입니다.<br><br>
            ID : <b><%=bean.getId()%></b><br><br>
            PASSWORD : <b><%=bean.getPassword() %>	</b><br><br>
             <span><a href="loginForm.jsp">로그인</a></span>
             </p>
         </div>
      </div>					
<%		
	}else  {
		 PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('가입정보를 다시 확인해주세요.')");
		script.println("history.back()");
		script.println("</script>"); 
		}
		
			
%>
</body>
</html>