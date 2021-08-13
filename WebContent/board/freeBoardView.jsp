<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import  = "model.freeBoardDAO" %>
<%@ page import = "model.boardBean" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/boardViewStyle.css" rel="stylesheet" type="text/css" />
<title>자유게시판 글 조회</title>
</head>
<body>
<%@ include file="/MainMember/main_top.jsp" %>	
<%
	int num = Integer.parseInt(request.getParameter("num"));

	freeBoardDAO bdao = new freeBoardDAO();
	boardBean bean = bdao.getOneBoard(num);
%>

	<h2>자유게시판</h2>
		<table 	width="600"	>
			<tr>
				<th>제목</th>
					<td width="450"> <%=bean.getTitle() %> </td>
				<th>조회수</th>
					<td width="100"><%=bean.getReadcount() %></td>
			</tr>
			<tr>
				<th>작성자</th>
					<td width="450"><%=bean.getName() %></td>				
				<th>작성일</th>
					<td width="100"><%=bean.getReg_date() %></td>				
			</tr>
			<tr>
				<td colspan="4"> <%=bean.getContent() %> </td>
			</tr>
			
			<caption>
				<input type="hidden" value="<%=bean.getId() %>">
				<input class="button" type="button" value="수정" onclick="location.href='freeBoardUpdate.jsp?num=<%=bean.getNum()%>'">
				<input class="button" type="submit" value="삭제" onclick="location.href='freeBoardDelete.jsp?num=<%=bean.getNum()%>'">
				<input class="button" type="button" value="답글" onclick="location.href='freeBoardReply.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>'">
				<input class="button" type="button" value="목록" onclick="location.href='freeBoardList.jsp'">

			</caption>
		</table>
<%@ include file="/MainMember/main_bottom.jsp" %>
</body>
</html>