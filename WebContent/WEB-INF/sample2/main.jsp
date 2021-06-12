<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
	<s2:navbar />
<div class="container">
	<div class="jumbotron">
  <h1 class="display-4 text-primary"><i class="fab fa-java"></i>환영합니다</h1>
  <p class="lead">기본 Servlet / JSP로 만든 회원, 게시판 어플리케이션 입니다</p>
  <hr class="my-4">
  <p>프로그래밍을 처음 배워서 만들어 본 게시판 입니다.
  <br>
   회원가입부터 시작해보세요.</p>
  <br>
  
  <a class="btn btn-primary btn-lg" href="<%= request.getContextPath() %>/sample2/member/signup" role="button"><i class="fab fa-bitcoin"></i>회원 가입</a>
  <a class="btn btn-primary btn-lg" href="https://blog.naver.com/dmltcl1?Redirect=Write&categoryNo=11" role="button">블로그</a>
  <br>
  <br>
  <p>
  <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    누르지마시오
  </a>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    커뮤니티
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
    메롱
   </div>
  </div>
  
</div>
</div>
</body>
</html>






