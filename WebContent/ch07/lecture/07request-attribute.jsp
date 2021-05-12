<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch07.Page" %>
<%@ page import="java.util.*" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
</head>
<body>

<%
Page p = new Page(3,10);
request.setAttribute("page", p);  



Object o =request.getAttribute("page");
System.out.println( o == p);

Page p2 =(Page) o;

int s = p2.getStart();
int e = p2.getEnd();

System.out.println( s );
System.out.println( e );
%>

<div class="container">
    <jsp:include page="07request-attribute-sub.jsp"> 
    
    </jsp:include>
</div>
</body>
</html>