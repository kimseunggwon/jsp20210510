<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <% 
  User user = new User("donald",22,"us");
  //작성
  %>
  
  <h1>유저 정보</h1>
  
  <jsp:include page="08request-attribute-
  "></jsp:include>

</div>

</body>
</html>