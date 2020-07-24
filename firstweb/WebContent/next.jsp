<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FrontServlet을 받는 jsp</title>
</head>
<body>

<%
int dice=(Integer)request.getAttribute("dice");
%>

dice:<%=dice%>

<%
for(int i=0;i<dice;i++) {
%>	

<br>hello

<%
}	
%>

<%--url -> http://localhost:9090/firstweb/front--%>
</body>
</html>