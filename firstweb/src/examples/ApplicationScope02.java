package examples;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ApplicationScope02")
public class ApplicationScope02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ApplicationScope02() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//응답 결과를 주어야 하므로 
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		ServletContext application=getServletContext();
		
		try {
			//ApplicationScope01에 저장된 value 값에 값을 더하자.
			int value=(int)application.getAttribute("value");
			value++;
			application.setAttribute("value", value);
			
			out.println("<h1>value: "+value+"</h1>");
		} catch(NullPointerException e) {
			out.println("value값이 설정되지 않았습니다.");
		}
		//만약 applicationScope02가 먼저실행되면 어떡할까? value 값이 null로 출력될 수 있다. exception 처리해주기
		
		
	}

}
