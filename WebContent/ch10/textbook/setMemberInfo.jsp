<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
 session.setAttribute("MEMBERID", "madvirus");
 session.setAttribute("NAME", "김승권");
 %>
<html>
<head>
<title>
세션에 정보 저장
</title>
</head>
<body>
세션에 정보를 저장하였습니다.
</body>
</html>