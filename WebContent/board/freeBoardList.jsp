<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.freeBoardDAO"%>
<%@ page import="model.boardBean"%>
<%@ page import="java.util.Vector"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/bordListStyle.css?after" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/frame.css" type="text/css">
<title>자유게시판 글목록</title>
</head>
<style type="text/css">

	.wrapper{
		display:flex;
		flex-direction:column;
	}
	
</style>
<body>


	<%@ include file="/MainMember/main_top.jsp" %>	

	<%
		
		int pageSize = 10; //한 페이지에 출력할 레코드 수

		//페이지 링크를 클릭한 번호/ 현재페이지
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) { //클릭한게 없으면 1번 페이지
			pageNum = "1";
		}

		//연산을 하기 위한 pageNum 형변환/ 현재페이지
		int currentPage = Integer.parseInt(pageNum);

		//해당 페이지에서 시작할 레코드/ 마지막 레코드
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;

		int count = 0;
		freeBoardDAO bdao = new freeBoardDAO();
		count = bdao.getAllcount(); //데이터베이스에 저장된 총 갯수

		Vector<boardBean> vec = null;
		if (count > 0) {
			//getAllboard()메소드 호출/ 해당 게시글 반환
			vec = bdao.getAllboard(startRow, endRow);
		}
	%>
	<div class="wrapper">
		<div class="main">
			<div class="inner">
				<div class="list">
					<h2 align="center">자유게시판</h2>
					<table width="800">
						<tr>
							<th width="50">NO</th>
							<th width="350">제목</th>
							<th width="100">작성자</th>
							<th width="250">작성일</th>
							<th width="50">조회수</th>
						</tr>
						<%
							if (count > 0) {
							int number = count - (currentPage - 1) * pageSize; //글 번호 순번
							for (int i = 0; i < vec.size(); i++) {
								boardBean bean = vec.get(i); //반환된 vec에 담긴 참조값 할당
						%>
						<tr>

							<td width="50" align="center"><%=number--%></td>
							<td width="450" align="left"><a
								href="freeBoardView.jsp?num=<%=bean.getNum()%>"
								style="text-decoration: none"> <%
							 	if (bean.getRe_step() > 1) {
							 	for (int j = 0; j < (bean.getRe_step() - 1) * 3; j++) {
							 %>&nbsp; <%
							 	}
							 }
							 %> <%=bean.getTitle()%></a></td>
							<td width="200" align="center"><%=bean.getName()%></td>
							<td width="250" align="center"><%=bean.getReg_date()%></td>
							<td width="50" align="center"><%=bean.getReadcount()%></td>
						</tr>
						<%
							}
						}
						%>
						<caption>
							<input class="button" type="button" value="글쓰기"
								onclick="location.href='freeBoardInsert.jsp'">
						</caption>

					</table>
					<div class="pageNum">
						<%
				//페이징처리
			if (count > 0) {
				int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1); //총 페이지의 수
				int pageBlock = 10; //한 페이지에 보여줄 페이지 블럭(링크)수

				//한 페이지에 보여줄 시작 및 끝 번호(예/1,2,3~10/ 11,12,13~20)
				int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
				int endPage = startPage + pageBlock - 1;

				if (endPage > pageCount) { //마지막 페이지가 총 페이지 수보다 크면 endPage를 pageCount로 할당
					endPage = pageCount;
				}
				if (startPage > pageBlock) { //페이지 블록수보다 startPage가 클 경우 이전링크 생성
			%>
						<a href="freeBoardList.jsp?pageNum=<%=startPage - 10%>">[이전]</a>
						<%
				}
			for (int i = startPage; i <= endPage; i++) { //페이지 블록 번호
			if (i == currentPage) { //현재 페이지에는 링크를 설정하지 않음
			%>
						[<%=i%>]
						<%
				} else { //현재 페이지가 아닌 경우 링크 설정
			%>
						<a href="freeBoardList.jsp?pageNum=<%=i%>">[<%=i%>]
						</a>
						<%
				}
			}
			if (endPage < pageCount) { //현재 블록의 마지막 페이지보다 페이지 전체 블록수가 클 경우 다음 링크 생성
			%>
						<a href="freeBoardList.jsp?pageNum=<%=startPage + 10%>">[다음]</a>
						<%
				}
			}
			%>
					</div>
				</div>

			</div>

		</div>

	</div>




	<%@ include file="/MainMember/main_bottom.jsp" %>
</body>
</html>