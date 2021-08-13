<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 정보 찾기</title>
<link rel="stylesheet" href="../css/frame2.css?after" type="text/css">
</head>
<body>
<%@ include file="main_top.jsp" %>
<script type="text/javascript">
	function check(){
		if(document.form.name.value==""){
			alert("이름을 입력해주세요.")
			document.form.name.focus();
			return false;
		}
		else if(document.form.question.value==""){
			alert("질문을 선택해주세요.")
			return false;
		}
		else if(document.form.answer.value==""){
			alert("질문의 대답을 입력해주세요.")
			document.form.answer.focus();
			return false;
		}
		else{
			form.submit();
			return true;
		}
	}

</script>
	<form name="form" action="memberFindPro.jsp" method="post">
	<div class="wrapper">
		<div class="inner-container">
			<div class="box">
				<h1>가입정보 찾기</h1>
				<input type="text" id="name" maxlength="16"	placeholder="이름을 입력하세요" name="name">
				<select id="question" class="sel" name="question">
					<option value="">질문을 선택하세요.</option>
					<option value="1">나의 보물1호는?</option>
					<option value="2">나의 초등학교 이름은?</option>
					<option value="3">내가 가장 좋아하는 숫자는?</option>
					<option value="4">나의 어렸을때 꿈은?</option>
				</select> 
				<input type="text" id="answer" maxlength="16"	placeholder="답변" name="answer"> 
				<input class="button" type="button" value="가입정보찾기" onclick="check()"/>
			</div>
		</div>
	</div>
	</form>
<%@ include file="main_bottom.jsp" %>
</body>

</html>