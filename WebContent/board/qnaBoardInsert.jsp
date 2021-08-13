<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href = "../css/bordListStyle.css" rel="stylesheet" type ="text/css"/>
<meta charset="UTF-8">
<title>자유게시판</title>
</head>
<script>
	function check() {

		if (form.name.value == "") {
			alert('작성자를 입력하세요.');
			form.name.focus();
			return false;
		}

		if (form.title.value == "") {
			alert('제목을 입력하세요.');
			form.title.focus();
			return false;
		}
		var cnt = 0;
		for (var i = 0; i < document.form.category.length; i++) {
			if (document.form.category[i].checked) {
				cnt++;
				break;
			}
		}
		if (cnt == 0) {
			alert('문의내용을 선택하세요.');
			return false;
		}

		if (form.password.value == "") {
			alert('비밀번호를 입력하세요.');
			form.password.focus();
			return false;
		}
		if (form.content.value == "") {
			alert('내용을 입력하세요.');
			form.content.focus();
			return false;
		}
	}
</script>
<body>
<%@ include file="/MainMember/main_top.jsp" %>

	<h2 align="center">문의게시판</h2>
	<form action="qnaBoardInsertPro.jsp" method="post" onsubmit="return check()" name="form">
		<table>
			<tr>
				<th>작성자</th>
					<td><input type="text" name="name" size="30"></td>
			</tr>
			<tr>
				<th>제&nbsp;&nbsp;&nbsp;&nbsp;목</th>
					<td><input type="text" name="title" size="50"></td>
			</tr>
			<tr>
				<th>문의내용</th>
				<td>
					<label><input type="radio" name="category" value="1" >상품문의</label>
					<label><input type="radio" name="category" value="2" >배송문의</label>
					<label><input type="radio" name="category" value="3" >결제문의</label>
					<label><input type="radio" name="category" value="4" >기타문의</label>
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
					<td><input type="password" name="password" size="30"></td>
			</tr>
			<tr>
				<td colspan="2"><textarea style="border: none" rows="10" cols="80" name="content"></textarea></td>
			</tr>
			<caption>
				<input type ="hidden" name="id" value="<%=request.getParameter("id") %>" >
				<input class="button" type="reset" value="다시입력">
				<input class="button" type="submit" value="글쓰기">
				<input class="button" type="button" value="목&nbsp;&nbsp;록" onclick="location.href='qnaBoardList.jsp'">

			</caption>
		</table>
	</form>
			<%@ include file="/MainMember/main_bottom.jsp" %>
</body>
</html>