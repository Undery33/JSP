package sec01.ex01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/Login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init 메소드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy 메소드 호출");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at : ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");	// 인코딩 설정
		String user_ID = request.getParameter("user_ID");	// user_ID 가져오기, 변수 생성&저장
		String user_PW = request.getParameter("user_PW");	// user_PW 가져오기, 변수 생성&저장
		
		System.out.println("아이디 : " + user_ID);		// 콘솔창에 ID 출력
		System.out.println("비밀번호 : " + user_PW);	// 콘솔창에 PW 출력
	}

}
