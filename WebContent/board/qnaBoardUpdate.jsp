<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import  = "model.qnaBoardDAO" %>
<%@ page import = "model.boardBean" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href = "../css/boardViewStyle.css" rel="stylesheet" type ="text/css"/>
<title>게시판 글 수정 화면</title>
</head>
<script>

	function check() {
		var cf = confirm("수정하시겠습니까?");
		if (cf == true) {
			location.href = 'qnaBoardUpdatePro.jsp';
		}
		if (cf == false) {
			history.go(-1);
		}
	}
</script>
	
<body>
<%@ include file="/MainMember/main_top.jsp" %>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	qnaBoardDAO bdao = new qnaBoardDAO();
	boardBean bean = bdao.getOneUpdateBoard(num);
	
%>
<div class="content" align="center">

	<h2>문의게시판</h2>
	<form method="post" action="qnaBoardUpdatePro.jsp">
		<table>
			<tr>
				<th>작성자</th>
					<td><%=bean.getName() %></td>
			</tr>
			<tr>
				<th>제&nbsp;&nbsp;&nbsp;&nbsp;목</th>
					<td><input type="text" name="title" size="50" value="<%=bean.getTitle() %>"></td>
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
				<td colspan="2"><textarea style="border: none" rows="10" cols="80" name="content"><%=bean.getContent() %></textarea></td>
			</tr>
			<caption>
				<input type="hidden" name="num" value="<%=bean.getNum()%>">
				<input type="hidden" name="id" value="<%=bean.getId()%>">
				<input class="button" type="reset" value="재작성">
				<input class="button" type="submit" value="수&nbsp;&nbsp;정" onclick="check()">
				<input class="button" type="button" value="목&nbsp;&nbsp;록" onclick="location.href='qnaBoardList.jsp'">

			</caption>
		</table>
	</form>
	</div>
	<%@ include file="/MainMember/main_bottom.jsp" %>
</body>
</html>