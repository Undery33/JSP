package sec01.ex04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginTest
 */
@WebServlet("/login2")
public class LoginTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String user_id = (String)request.getParameter("user_id");
		String user_pw = (String)request.getParameter("user_pwd");
		
		// 이벤트 핸들러를 생성한 후 세션에 저장.
		LoginImpl loginUser = new LoginImpl(user_id, user_pw);
		if(session.isNew()) {
			// 세션에 바인딩 시 미리 HttpSessionBindingListener를 구현한
			// LoginImpl의 valueBound() 메서드 호출.
			session.setAttribute("loginUser", loginUser);
		}
		
		out.println("<html><head>");
		out.println("<script type='text/javascript'>");
		// 자바스크립트의 setTimeout() 함수로 5초마다 세블릿에 재요청하여 접속자수 표시
		out.println("setTimeout('history.go(0);', 5000)");
		out.println("</script>");
		out.println("</head>");
		
		out.println("<body>");
		out.println("아이디 : " + loginUser.user_id + "<br>");
		out.println("총 접속자 수 : " + LoginImpl.total_user + "<br>");
		out.println("</body></html>");
		
		}
	
}


