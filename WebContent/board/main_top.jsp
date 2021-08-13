<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <link rel="stylesheet" href="../css/frame.css?after" type="text/css"> 
<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Faster+One&display=swap');
.main{
		margin-top: 0px;
		height:100%;
		width:100%;
	}
font{
	font-family: 'Faster One', cursive;
	font-size : 50px;
}

</style>
<body>
   <div class="header">
<%
	if(session.getAttribute("id") == null){
%>   
       <a href="/MainMember/joinForm.jsp">회원가입</a> 
       <a href="/MainMember/loginForm.jsp">Login</a>
<%
	} else{
%>        
	   <a href="../MainMember/memberUpdateForm.jsp">회원정보 수정</a> 
       <a href="logoutPro.jsp">Logout</a>
<%
	} 
%> 
		<!-- logo -->
        <a style="float:left" href="../MainMember/main.jsp"> 
        <font>pro fit</font> 
        </a>
   </div>
   
   <div class="menu" align="center">
      <ul>
         <li class="dropdown">
            <a href="#">Program</a>
            <div class="dropdown-content">
               <a href="../program/Program1.jsp">체중감량</a>
               <a href="../program/Program2.jsp">체형교정</a>
               <a href="../program/Program3.jsp">근력강화</a>
               <a href="../program/Program4.jsp">스트레칭</a>
            </div>
         </li>
         <li class="dropdown">
            <a href="#">Management</a>
            <div class="dropdown-content">
               <a href='../management/exercise.jsp'>운동 칼로리</a>
               <a href='#'>식단 칼로리</a>
               <a href='../management/Bmi.jsp'>BMI 계산기</a>
               <a href='../management/dietRecipe.jsp'>다이어트 레시피</a>
            </div>
         </li>         
         <li class="dropdown">
            <a href="#">Store</a>
            <div class="dropdown-content">
               <a href='#'>보충제</a>
               <a href='#'>운동용품</a>
               <a href='#'>패션</a>
               <a href='#'>식품</a>
            </div>
         </li>            
         <li class="dropdown">
            <a href="#">Community</a>
            <div class="dropdown-content" style="margin-left:50px">
               <a href='../board/freeBoardList.jsp'>자유 게시판</a>
               <a href='../board/qnaBoardList.jsp'>문의 게시판</a>
               <a href='../board/healthCoupon.jsp'>제휴업체</a>
            </div>
         </li>            
         
      </ul>
   </div>
</body>
</html>