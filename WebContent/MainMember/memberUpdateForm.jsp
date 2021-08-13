<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="model.MemberDAO"%>
<%@ page import="model.MemberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href = "../css/updateStyle.css" rel="stylesheet" type ="text/css"/>
<title>회원수정</title>
</head>

<body>
	<%@ include file="main_top.jsp" %>

	<%

	String id = (String) session.getAttribute("id");

	if (id == null) {
		response.sendRedirect("loginForm.jsp");
	}

	MemberDAO Mdao = new MemberDAO();
	
	//자바빈 member=getMember(id)메서드 호출
	MemberBean MBean = Mdao.getMember(id);
	%>

	<div id="all-wrap">
		<!-- header -->
		<div id="header">
			<h1>회원정보수정</h1>
		</div>
		<!-- wrapper -->
		<div id="wrapper">

			<!-- content-->
			<div id="content">

				<form action="memberUpdatePro.jsp" method="post">
					<!-- ID -->
					<div>
						<h3 class="join_title">
							<label for="id">아이디</label>
						</h3>
						<span class="box int_id"> <input type="text" id="id"
							class="int" value="<%=MBean.getId()%>" name="id" readonly>
						</span> <span class="error_next_box"></span>
					</div>
					<!-- NAME -->
					<div>
						<h3 class="join_title">
							<label for="name">이름</label>
						</h3>
						<span class="box int_name"> 
						<input type="text" id="name" class="int" value="<%=MBean.getName()%>" name="name" readonly>
						</span> <span class="error_next_box"></span>
					</div>

					<!-- PW -->
					<div>
						<h3 class="join_title">
							<label for="pass">현재 비밀번호</label>
						</h3>
						<span class="box int_pass"> 
						<input type="password"	id="pass" class="int" maxlength="20" name="pass"> 
						<span id="alertTxt">사용불가</span>
						</span> <span class="error_next_box"></span>
					</div>
					
					<!-- PW -->
					<div>
						<h3 class="join_title">
							<label for="pass">변경할 비밀번호</label>
						</h3>
						<span class="box int_pass"> 
						<input type="password"	id="pass" class="int" maxlength="20" name="password"> 
						<span id="alertTxt">사용불가</span>
						</span> <span class="error_next_box"></span>
					</div>

					<!-- EMAIL -->
					<div>
						<h3 class="join_title">
							<label for="email">이메일<span class="optional" ></span></label>
						</h3>
						<span class="box int_email"> 
						<input type="text" id="email" class="int" value="<%=MBean.getEmail() %>"maxlength="100" name="email">
						</span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
					</div>

					<!-- MOBILE -->
					<div>
						<h3 class="join_title">
							<label for="phoneNo">휴대전화</label>
						</h3>
						<span class="box int_mobile"> 
						<input type="tel" id="phoneNo" class="int" maxlength="16" value="<%=MBean.getPhone() %>"  name="phone">
						</span> <span class="error_next_box"></span>
					</div>
					<br>
					<div>
					<input type="submit" value="회원정보수정">
					<input type="button" value="돌아가기" onclick="location.href='main.jsp'"/>
					</div>
				</form>
			</div>
			<!-- content-->

		</div>
		<!-- wrapper -->
	</div>
	<%@ include file="main_bottom.jsp" %>
</body>
</html>