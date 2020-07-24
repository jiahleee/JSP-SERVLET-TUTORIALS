package examples;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logic")
public class LogicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LogicServlet() {
        super();
        
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1부터 100까지 random한 숫자 2개를 뽑아서 더하고 그 합을 출력하는 servlet-jsp 연동 
		
		int v1=(int)(Math.random()*100)+1; //0.0~0.99999...사이의 랜덤수 *100 integer casting +1
		int v2=(int)(Math.random()*100)+1;
		int result=v1+v2;
		
		//jsp로 포워딩
		
		request.setAttribute("v1", v1);
		request.setAttribute("v2", v2);
		request.setAttribute("result", result);
		
		RequestDispatcher rd=request.getRequestDispatcher("/result.jsp"); 
		//다른 폴더 아래 있다면 "/jsp/result.jsp"
		rd.forward(request, response);
		
		//url:http://localhost:9090/firstweb/logic
		//요청은 servlet이 만들어내고 출력은 jsp가 담당한다.
		
		
		
		
	}

}
