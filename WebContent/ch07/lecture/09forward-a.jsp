<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<%@ includ file="/Web-INF/submodules/bootstrapHeader.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class ="container">
   <h1>a.jsp</h1>
   
   <jsp:forward page="09forward-b.jsp"></jsp:forward>
   
</div>
</body>
</html>