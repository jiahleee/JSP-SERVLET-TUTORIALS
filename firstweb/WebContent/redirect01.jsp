<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.sendRedirect("redirect02.jsp");
%>

<!-- 

url: http://localhost:9090/firstweb/redirect02.jsp 
브라우저가 redirect 01. jsp 요청-> 
응답결과로 302 응답코드를 가지고 location header값:redirect02.jsp 리다이렉트 요청 ->
브라우저는 was의 리다이렉트 요청을 받고 redirect02.jsp를 요청 -> //브라우저는 서로 다른 요청 2번 한 것
was가 redirect02 결과 출력->
브라우저 주소창의 url이 redirect02.jsp로 바뀜 

-->