<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>applicationscope</title>
</head>
<body>
<%
try{
	int value=(int)application.getAttribute("value");
	value=value+2;
	application.setAttribute("value", value);
%>
	<h1><%=value %></h1>
<%
	}catch(NullPointerException e){
	
%>
	<h1>설정된 값이 없습니다.</h1>
<%
	}
%>

<%--ApplicationScope01부터 출력하지 않으면 값이 출력되지 않는다.
또한 다른 브라우저에서 열어도 같은 웹어플리케이션이므로 +2가 출력된다.
--%>
</body>
</html>