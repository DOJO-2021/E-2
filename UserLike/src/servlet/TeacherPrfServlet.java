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
import dao.StudentIdpwDAO;
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
		List<Prf> prfList =PrfDAO.show(new Prf(s_id, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0));

		//検索結果をリクエストスコープに格納する
		request.setAttribute("prfList",prfList);

		//セッションにデータを格納
		HttpSession hs = request.getSession();
		hs.setAttribute("S_ID", s_id);

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

			//プロフィールの削除成功時だけIDPWの削除を行う
			StudentIdpwDAO StuDAO = new StudentIdpwDAO();
			if(StuDAO.deleteId(s_id)) {
				request.setAttribute("result",new Result("削除が成功しました","レコードを削除しました","/UserLike/TeacherListServlet"));
			}else {
				request.setAttribute("result",new Result("削除が失敗しました","レコードを削除できませんでした","/UserLike/MainServlet"));
			}

		}else {
			request.setAttribute("result",new Result("削除が失敗しました","レコードを削除できませんでした","/UserLike/MainServlet"));
		}




		//結果ページにフォワードする
		RequestDispatcher dispatchar = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatchar.forward(request,response);
	}

}