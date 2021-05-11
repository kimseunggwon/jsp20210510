<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더 몰록 출력</title>
</head>
<%
 Enumeration<String> headerEnum = request.getHeaderNames();
 while(headerEnum.hasMoreElements()) {
	 String headerName = headerEnum.nextElement();
	 String headerValue=request.getHeader(headerName);
 %>
	   <%=headerName %> = <%=headerValue %> <br>
 <%
   }	
	%> 
<body>

</body>
</html>