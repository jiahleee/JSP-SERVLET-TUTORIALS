package examples;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/next")
public class NextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public NextServlet() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//넘어왔을 때 response할 때 어떤 형식으로 응답할 것인지 적어준다.
		response.setContentType("text/html");
		//response.getWriter()해서 객체를 만들어주기
		PrintWriter out=response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>form</title></head>");
		out.println("<body>");
		
		//frontservlet에서 저장시킨 값을 getAttribute해오기
		//setattribute 할 때 저장되는 값은 object type이므로 꺼낼 때 casting해주어야함.
		
		int dice=(Integer)request.getAttribute("dice");
		out.println("dice : "+dice);
		
		for(int i=0;i<dice;i++) {
			out.println("<br>hello");
		}
		
		out.println("</body>");
		out.println("</html>");
		
		//http://localhost:9090/firstweb/front
		//redirect는 url이 바뀌었는데, forward 방식을 사용하면 url 변화 x
		//NextServlet을 jsp로 바꾸어서 forward 방식을 사용하면 jsp와 servlet의 장점을 모두 활용가능해진다!
	}

}
