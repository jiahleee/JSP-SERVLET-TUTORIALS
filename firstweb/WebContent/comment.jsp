<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptlet</title>
</head>
<body>
<%--jsp주석입니다!!!
여러줄로 사용가능합니다 --%>
<!--html주석입니다~~ -->
<%
//자바 주석입니다
/*
여러줄도 가능합니다
*/
	for(int i=1;i<=5; i++){
%>

<h<%=i%>>지아쿠 화이팅</h<%=i%>>

<%
	}
%>
</body>
</html>