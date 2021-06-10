package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentTopServlet
 */
@WebServlet("/StudentTopServlet")
public class StudentTopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		/* テスト中はコメントアウト
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}
		*/


		//プロフ情報取得


		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/s_top.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		/* テスト中はコメントアウト
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}
		*/

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
/*		String understood = request.getParameter("understood");
		String cantunderstand = request.getParameter("cantunderstand");

		//自分のプロフィールを検索する
		PrfDAO PrfDAO = new PrfDAO();
		List<Prf> profList =PrfDAO.show(new Prf("s_id"));

		//検索結果をリクエストスコープから取得する
		request.setAttribute("profList",profList);
*/
	}


}