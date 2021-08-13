<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
 <link rel="stylesheet" href="../css/joinForm.css"> 
 
</head>
<body>
<%@ include file="main_top.jsp" %>
<form action="joinPro.jsp" method="post">
	<div id="all-wrap"> 
	<!-- header -->
        <div id="header">
           <h1>Sign Up</h1>
        </div>

        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text"  class="int" maxlength="20" name="id">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW -->
                <div>
                    <h3 class="join_title"><label for="pswd">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd" class="int" maxlength="20" name="password">
                        <span id="alertTxt">사용불가</span>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20" name="name">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)" name="yy">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel" name="mm">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="일" name="dd">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel" name="gender">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional"></span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="이메일입력" name="email">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력" name="phone">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                
                <div>
                    <h3 class="join_title"><label for="phoneNo">가입목적</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="가입목적 입력" name="exercise">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                
                <div>
                   <h3 class="join_title"><label for="gender">비밀번호 찾기 질문</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel" name="question">
                            <option>질문</option>
                            <option value="1">나의 보물1호는?</option>
                            <option value="2">나의 초등학교 이름은?</option>
                            <option value="3">내가 가장 좋아하는 숫자는?</option>
                            <option value="4">나의 어렸을때 꿈은?</option>
                        </select>                            
                    </span>
                </div>
                
                <div>
                    <h3 class="join_title"><label for="phoneNo">비밀번호 찾기 답변</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="답변" name="answer">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
				<br>
				<div id="btn_area" >
					<input type="submit" value="가입하기"  id="btnJoin"/>
					<input type="button" value="돌아가기" onclick="location.href='main.jsp'" id="btnJoin"/>
				</div>
                
           	    
            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
    </div>
    </form>
    <%@ include file="main_bottom.jsp" %>	
</body>
</html>
