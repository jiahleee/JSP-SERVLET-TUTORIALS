<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	StringBuffer url=request.getRequestURL();
	out.print("url :"+url.toString());
//request를 선언하지 않았음에도 사용가능하다.
//out객체도 사용 가능하다. 
//jsp가 servlet으로 바뀔 때 내장객체로 가지고 있음.
//jsp 내장객체 : request,response,pageContext,session,application,out,config,page,exception

%>
</body>
</html>