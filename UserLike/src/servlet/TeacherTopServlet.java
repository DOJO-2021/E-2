package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TeacherTopServlet
 */
@WebServlet("/TeacherTopServlet")
public class TeacherTopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		/* テスト中はコメントアウト
		HttpSession session = request.getSession();
		if (session.getAttribute("t_id") == null) {
			response.sendRedirect("/UserLike/TeacherLoginServlet");
			return;
		}
		*/


		//ボタン情報取得


		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/t_top.jsp");
		dispatcher.forward(request, response);
	}



}
