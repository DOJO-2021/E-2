package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PrfDAO;
import model.Prf;

/**
 * Servlet implementation class StudentPrfServlet
 */
@WebServlet("/StudentPrfServlet")
public class StudentPrfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}

		//ログインしているユーザーのIDを取得
		String s_id = null;
		s_id = (String) session.getAttribute("s_id");

		//自分のプロフィールを検索する
		PrfDAO PrfDAO = new PrfDAO();
		List<Prf> profList =PrfDAO.show(new Prf(s_id, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0));

		//検索結果をリクエストスコープから取得する
		request.setAttribute("profList",profList);

		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/s_prf.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}

		//ページにフォワードする
		RequestDispatcher dispatchar = request.getRequestDispatcher("/WEB-INF/jsp/s_prf_edit.jsp");
		dispatchar.forward(request,response);
	}
}