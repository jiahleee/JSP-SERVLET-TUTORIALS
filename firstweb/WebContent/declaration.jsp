<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문</title>
</head>
<body>

id : <%=getId() %>

<%!
	String id="u001";//멤버변수선언
	public String getId(){//메소드 선언
		return id;
	}
%>

<%--선언문 
선언문은 jsp페이지 내에서 필요한 멤버변수나 메소드를 선언하여 사용하는 요소이다.
servlet 파일에서 확인시, service 함수 밖에 따로 메서드로 생성되며, 
<%=%>안에서 호출한 메서드 getId()의 경우, service 함수 내에 out.print();로 출력된다.
--%>

</body>
</html>