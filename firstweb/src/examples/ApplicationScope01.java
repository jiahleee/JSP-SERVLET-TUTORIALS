package examples;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ApplicationScope01")
public class ApplicationScope01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ApplicationScope01() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//url로 값을 요청할 것이라 doGet 메소드 사용
		//값을 얻어내서 출력도 하고 싶으므로 
		//응답을 만들어내고 싶으므로 setcontenttype지정
		//응답을 내보낼 통로를 getwriter()로 얻어내서 out에 저장
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		//applicationscope을 얻어오자.
		ServletContext application=getServletContext();
		//값을 저장하자
		int value=1;
		application.setAttribute("value", value);
		
		out.println("<h1>value:"+value+"</h1>");
		
		
	}

}
