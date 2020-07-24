<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--페이지 지시자, language는 자바, 응답결과를 포함하는 response 객체, printwriter 객체를 얻어와서 
response 에게 setcontenttype을 넣어주고(응답을 html text 로 보낼거야, utf-8로) 브라우저에게 알려주는 것.
was 가 위의 요청들을 받는다. html 코드에 java 코드를 넣을 수 있는 것이 jsp. <%%>안에 자바코드를 입력할 수 있다.
servlet에서 자바코드를 실행시킨다해도, response의 out.println에 넣어주지 않으면 실제 응답으로는 들어가지 않았던 점과 같이
jsp 같은 경우 <%= %> [표현식] 안에 들어있는 코드만 응답결과에 출력된다.  
--%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 모든 jsp는 servlet으로 바뀌어서 동작한다. 
<%@ 등은 servlet으로 바꿀 때 어떻게 바꿀지를 알려주는 [지시자].--%>

<%
	int total=0;
	for(int i=1;i<=10;i++){
		total=total+i;
	}
%>

<%--servlet에서 html코드가 out.print()안에 들어갔어야 했다.html코드가 길어질 경우 servlet 개발이 불편
microsoft 의 asp에 대항하기 위해 발표함. jsp의 핵심은 jsp는 servlet으로 바뀌고, 바뀐 서블릿이 실행되는 것. 
servlet으로 바뀐 이후에는 servlet의 lifecycle을 따른다.
 --%>

1부터 10까지의 합: <%=total %> <%--servlet의 out.print(total)로 바뀐다.--%> 

<%-- 출력결과 => 1부터 10까지의 합: 55 --%>
</body>
</html>