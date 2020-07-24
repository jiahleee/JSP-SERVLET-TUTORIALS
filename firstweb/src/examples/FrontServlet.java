package examples;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/front")
public class FrontServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FrontServlet() {
        super();
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int diceValue=(int)(Math.random()*6)+1;
		//diceValue를 nextservlet에게 넘겨서 남은 작업 처리(forward)
		
		request.setAttribute("dice",diceValue);//""안에 적은 값으로 나중에 꺼낼 것임.
		//이제 request객체에서 getRequestDispatcher을 하나 만들고 이동할 곳를 적어준다.
	    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/next.jsp");
	    		//어디로 이동할것인지를 ""에 넣어준다. /로 시작하고, 같은 웹 어플리케이션 안에서만 가능하다.
		//requestDispatcher의 forward 메소드를 사용하여 넘긴다. request와 response 객체도 함께 넘겨준다.
	    requestDispatcher.forward(request, response);
	}

}
