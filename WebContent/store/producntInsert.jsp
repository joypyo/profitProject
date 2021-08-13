<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/storeStyle.css"> 

</head>
<body>
<form name="productForm" action="productInsertPro.jsp" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
	<div id="all-wrap">

        <div id="header">
           <h1>상품 등록</h1>
        </div>

            <!-- content-->
            <div id="content">
            <div>
                    <h3><label for="category">상품 분류</label></h3>
                    <span class="box category">
                        <select id="category" name="category" class="sel">
                            <option>분류</option>
                            <option value="1">식품</option>
                            <option value="2">보충제</option>
                            <option value="3">운동용품</option>
                            <option value="4">운동복</option>
                        </select>                            
                    </span>
                </div>
                
                <div>
                	<input type="hidden" name="flag" value="i"/>
                    <h3><label for="name">상품 이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name"  name="name" class="int" >
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <div>
                    <h3 ><label for="price">상품 가격</label></h3>
                    <span class="box int_price">
                        <input type="text" id="price" name="price" class="int" >
                    </span>
                </div>

                <div>
                    <h3><label for="content">상세 내용</label></h3>
                    <span class="">
                       <textarea name="contents" cols="60" rows="10" ></textarea>
                    </span>
                    <span class="error_next_box"></span>    
                </div>

                <div>
                    <h3><label for="image">상품 이미지</label></h3>
                    <span class="box int_mobile">
                        <input type="file" id="image" name="image" class="int" accept="image/*">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
				<br>
					<input type="submit" value="상품등록하기" class="button"/>
					<input type="button" value="취소" class="button"/>
				
            </div> 
        </div> 
    </form>
</body>
</html>