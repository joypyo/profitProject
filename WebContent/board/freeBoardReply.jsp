<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href = "../css/bordListStyle.css" rel="stylesheet" type ="text/css"/>
<title>답변글 쓰기</title>
</head>
<body>

<script>	
	function Check() {
		if (document.form.name.value == "") {
			alert("작성자를 입력하세요.");
			document.form.name.focus();
			return false;
		}

		else if (document.form.title.value == "↪ ") {
			alert("제목을 입력하세요.");
			document.form.title.focus();
			return false;
		}

		else if (document.form.password.value == "") {
			alert("비밀번호를 입력하세요.");
			document.form.password.focus();
			return false;
		}
		else if (document.form.content.value == "") {
			alert("내용을 입력하세요.");
			document.form.content.focus();
			return false;
		}
		else {
			form.submit();
			return true;
		}
	}
</script>
<%@ include file="/MainMember/main_top.jsp" %>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));
%>
	<h2 align="center">자유게시판</h2>
	<form name = "form" action="freeBoardReplyPro.jsp" method="post">
		<table>
			<tr>
				<th>작성자</th>
					<td><input type="text" name="name" size="30"></td>
			</tr>
			<tr>
				<th>제&nbsp;&nbsp;&nbsp;&nbsp;목</th>
					<td><input type="text" name="title" value="↪ " size="50"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
					<td><input type="password" name="password" size="30"></td>
			</tr>
			<tr>
				<td colspan="2"><textarea style="border: none" rows="10" cols="80" name="content"></textarea></td>
			</tr>
			<caption>
				<input type="hidden" name="id" value="<%=request.getParameter("id") %>">
				<input type="hidden" name="ref" value="<%=ref %>">
				<input type="hidden" name="re_step" value="<%=re_step %>">
				<input type="hidden" name="re_level" value="<%=re_level %>">
				<input class="button" type="reset" value="다시입력">
				<input class="button" type="button" value="글쓰기" onclick="Check()">
				<input class="button" type="button" value="목&nbsp;&nbsp;록" onclick="location.href='freeBoardList.jsp'">

			</caption>
		</table>
	</form>
<%@ include file="/MainMember/main_bottom.jsp" %>
</body>
</html>