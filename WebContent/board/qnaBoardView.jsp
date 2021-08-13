<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import  = "model.qnaBoardDAO" %>
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

	qnaBoardDAO bdao = new qnaBoardDAO();
	boardBean bean = bdao.getOneBoard(num);
%>
<div class="content" align="center">
	<h2>문의게시판</h2>
		<table 	width="600"	>
			<tr>
				<th>제목</th>
					<td width="450"> 
<%					String radio="";
	 			if(bean.getCategory()==1){
	 				radio="[상품문의]";
	 				}
	 			else if(bean.getCategory()==2){
	 				radio="[배송문의]";
	 				}
	 			else if(bean.getCategory()==3){
	 				radio="[결제문의]";
	 				}
	 			else if(bean.getCategory()==4){
	 				radio="[기타문의]";
	 				} 
%>
	 				<%=radio%> <%=bean.getTitle() %> </td>
				<th>조회수</th>
					<td width="150"><%=bean.getReadcount() %></td>
			</tr>
			<tr>
				<th>작성자</th>
					<td width="450"><%=bean.getName() %></td>				
				<th>작성일</th>
					<td width="150"><%=bean.getReg_date() %></td>				
			</tr>
			<tr>
				<td colspan="4"> <%=bean.getContent() %> </td>
			</tr>
			
			<caption>
				<input type="hidden" value="<%=bean.getId() %>">
				<input class="button" type="button" value="수정" onclick="location.href='qnaBoardUpdate.jsp?num=<%=bean.getNum()%>'">
				<input class="button" type="submit" value="삭제" onclick="location.href='qnaBoardDelete.jsp?num=<%=bean.getNum()%>'">
				<input class="button" type="button" value="답글" onclick="location.href='qnaBoardReply.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>'">
				<input class="button" type="button" value="목록" onclick="location.href='qnaBoardList.jsp'">

			</caption>
		</table>
		</div>
<%@ include file="/MainMember/main_bottom.jsp" %>
</body>
</html>