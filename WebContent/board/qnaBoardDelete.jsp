<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ page import  = "model.qnaBoardDAO" %>
<%@ page import = "model.boardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href = "../css/boardViewStyle.css" rel="stylesheet" type ="text/css"/>
<title>게시판 글 삭제 화면</title>
</head>
<script>
	function check(){
		var cf=confirm ("정말로 삭제하시겠습니까?");
			 if(cf==true){
				location.href='qnaBoardDeletePro.jsp';
			}if(cf==false){
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

	<h2>자유게시판</h2>
	<form  method="post" action ="qnaBoardDeletePro.jsp">
		<table>
			<tr>
				<th>작성자</th>
					<td><%=bean.getName() %></td>
			</tr>
			<tr>
				<th>제&nbsp;&nbsp;&nbsp;&nbsp;목</th>
					<td>
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
	 				<%=radio%><%=bean.getTitle() %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
					<td><input type="password" name="password" size="30"></td>
			</tr>
			<tr>
				<td colspan="2"><textarea style="border: none" rows="10" cols="80" name="content" ><%=bean.getContent() %></textarea></td>
			</tr>
			<caption>
				<input type="hidden" name="id" value="<%=bean.getId()%>">
				<input type="hidden" name="num" value="<%=bean.getNum()%>">
				<input class="button" type="submit" value="삭&nbsp;&nbsp;제" onclick="check()">
				<input class="button" type="button" value="목&nbsp;&nbsp;록" onclick="location.href='qnaBoardList.jsp'">

			</caption>
		</table>
	</form>
			<%@ include file="/MainMember/main_bottom.jsp" %>
</body>
</html>