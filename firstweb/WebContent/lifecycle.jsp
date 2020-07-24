<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

hello~~~

<%
System.out.print("jspService()");
%>

<%! 
	public void jspInit(){
    System.out.print("jspInit()!!!");
	}
%>

<%!
	public void jspDestroy(){
    System.out.print("jspDestroy()");
	}
%>

<%-- console창에는 jspInit()jspService()jspDestroy()jspInit()!!!jspService()로 출력된다. 수정후 저장하고 다시 run하면 destroy가 실행된다.
<%! %> 안에 작성시 선언식으로 되고 servlet 파일에서 따로 메소드가 service 함수 밖에 생성된다.
 jsp lifecycle도 servlet lifecycle과 동일하게 작동한다.
 --%>
 
 <%--
 워크스페이스 >> .metadata안에서 파일이 이름_jsp.java파일이 생성되고, 그 파일안에 _jspService라는 매서드 안에 우리가 만들었던 코드들이 그대로 변환되서 들어가고 있는걸 볼 수 있다.

JSP 실행 순서
1.브라우저가 웹서버에 JSP대한 요청정보를 전달.
2. 브라우저가 요청한 JSP가 최초로 요청한 경우만,
JSP코드를 서블릿으로 변환 >> 서블릿코드를 컴파일 해서 실행가능한 코드로 바꿈(컴파일도 여기서함.) >> 서블릿 클래스를 로딩해서 인스턴스를 생성하는 이런일해줌.  - JSP엔진이 >> 그리고 다시 서블릿이 실행되서 요청을 처리하고, 응답정보를 생성하는 일을함.
3. 서블릿이 실행되어 요청을 처리하고, 응답정보를 생성함.
<%!는 선언식.
클래스에서 메서드를 선언한다거나 필드를 선언할때 넣어준다.
매서드 뿐만아니라 특정 매서드를 서비스 매서드가 아니라, 필드나 매서드로 내가 지정하고 싶다면 선언식을 사용하면 된다.
 --%>


</body>
</html>