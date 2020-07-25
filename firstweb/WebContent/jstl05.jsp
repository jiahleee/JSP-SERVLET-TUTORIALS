<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--import 태그를 사용해서 값을 읽어온다. --%>
<c:import url="http://localhost:9090/firstweb/jspValue.jsp" var="urlValue"
scope="request"/>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
읽어들인 값:${urlValue}
</body>
</html>