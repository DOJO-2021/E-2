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
import model.Result;

/**
 * Servlet implementation class TeacherPrfServlet
 */
@WebServlet("/TeacherPrfServlet")
public class TeacherPrfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("t_id") == null) {
			response.sendRedirect("/UserLike/TeacherLoginServlet");
			return;
		}

		//前のページからプロフ情報取得
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String s_id = request.getParameter("S_ID");

		//受講者のプロフィールを検索する
		PrfDAO PrfDAO = new PrfDAO();
		List<Prf> profList =PrfDAO.show(s_id);

		//検索結果をリクエストスコープから取得する
		request.setAttribute("profList",profList);

		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/t_prf.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("t_id") == null) {
			response.sendRedirect("/UserLike/TeacherLoginServlet");
			return;
		}

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String s_id = request.getParameter("S_ID");

		//削除を行う
		PrfDAO PrfDAO = new PrfDAO();
		if(PrfDAO.delete(s_id)) {
			request.setAttribute("result",new Result("削除が成功しました","レコードを削除しました","/UserLike"));
		}else {
			request.setAttribute("result",new Result("削除が失敗しました","レコードを削除できませんでした","/UserLike/MainServlet"));
		}

		//結果ページにフォワードする
		RequestDispatcher dispatchar = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatchar.forward(request,response);
	}

}