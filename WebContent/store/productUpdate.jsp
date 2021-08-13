<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.productBean"%>
<%@ page import="model.productDAO"%> 
<%@ page import ="com.oreilly.servlet.MultipartRequest" %>
<%@ page import= "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정 페이지</title>
<!--   <link rel="stylesheet" href="joinForm2.css">  -->
 <style>
html {
    height: 100%;
}

body{
	padding:0;
	margin:0;
	background-repeat: no-repeat;
	background-attachment: scroll;
}

#logo {
    width: 240px;
    height: 44px;
    cursor: pointer;
}

#header {
    padding-top: 62px;  
    padding-bottom: 20px;
    text-align: center;
}


#content {
    margin:0 auto;
    width: 460px;
}

/* 입력폼 */

h3 {
    margin: 19px 0 8px;
    font-size: 14px;
    font-weight: 700;
}


 .box {
    display: block;
    width: 100%;
    height: 47px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    box-sizing: border-box;
    background: #fff;
    position: relative;
}

 .button{
   background: #888888;
   border:0;
   color:#fff;
   padding:10px;
   font-size:20px;
   width:100%;
   hdight:29px;
   margin:20px auto;
   display:block;
   cursor:pointer;
} 

.int {
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
}

input {
    font-family: Dotum,'돋움',Helvetica,sans-serif;    
}

.box.int_name {
    padding-right: 40px;
}

.box.int_price {
    padding-right: 40px;
}

 select {
    width: 100%;
    height: 29px;
    font-size: 15px;
    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
    background-size: 20px 8px;
    -webkit-appearance: none;
    display: inline-block;
    text-align: start;
    border: none;
    cursor: default;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
} 
/* 에러메세지 */

.error_next_box {
    margin-top: 9px;
    font-size: 12px;
    color: red;    
    display: none;
}

#alertTxt {
    position: absolute;
    top: 19px;
    right: 38px;
    font-size: 12px;
    color: red;
    display: none;
}

</style>
</head>
<body>
<%
int prodnum = Integer.parseInt(request.getParameter("prodnum"));
productDAO pdao = new productDAO();
productBean bean = pdao.getProduct(prodnum); 
%>

<form name="productForm" action="productUpdatePro.jsp" method="post" enctype="multipart/form-data">
	<div id="all-wrap">

        <div id="header">
           <h1>상품 수정 화면</h1>
        </div>

            <!-- content-->
            <div id="content">
            <div>
                    <h3><label for="category">상품 분류</label></h3>
                    <span class="box category">
                        <select id="category"  name="category" class="sel">
                            <option>분류</option>
                            <option value="1">식품</option>
                            <option value="2">보충제</option>
                            <option value="3">운동용품</option>
                            <option value="4">운동복</option>
                        </select>                            
                    </span>
                </div>
                
                <div>
                	<input type="hidden" name="prodnum" value="<%=bean.getProdnum()%>"/>
                    <h3><label for="name">상품 이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name"  value="<%=bean.getName() %>" name="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <div>
                    <h3 ><label for="price">상품 가격</label></h3>
                    <span class="box int_price">
                        <input type="text" id="price" value="<%=bean.getPrice() %>" name="price" class="int" maxlength="20">
                    </span>
                </div>

                <div>
                    <h3><label for="content">상세 내용</label></h3>
                    <span class="">
                       <textarea name="contents" placeholder="<%=bean.getContents() %>" cols="60" rows="10" ></textarea>
                    </span>
                    <span class="error_next_box"></span>    
                </div>

                <div>
                    <h3><label for="image">상품 이미지</label></h3>
                    <span class="box int_mobile">
                        <input type="file" id="image" value="<%=bean.getImage() %>"name="image" class="int" accept="image/*">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
				<br>
				<div>
					<input type="submit" value="상품수정하기" class="button"/>
					<input type="button" value="취소" class="button"/>
				</div>

            </div> 
        </div> 
    </form>
</body>
</html>