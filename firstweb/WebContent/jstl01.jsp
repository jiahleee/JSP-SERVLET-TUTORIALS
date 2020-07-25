<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용시 작성해주어야 할 부분 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="value1" scope="request" value="kang"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
성:${value1 }<br>
<c:remove var="value1" scope="request"/>
성:${value1 } <!-- remove되어서 출력되지 않음 -->
</body>
</html>