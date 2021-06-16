package servlet;

import java.io.IOException;

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
 * Servlet implementation class StudentTopServlet
 */
@WebServlet("/StudentTopServlet")
public class StudentTopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}


		//プロフ情報取得


		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/s_top.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
	//	String understood = request.getParameter("understood");
	//	String cantunderstand = request.getParameter("cantunderstand");

		//ログインしているユーザーのIDを取得
		request.setCharacterEncoding("UTF-8");
		String s_id = (String) session.getAttribute("s_id");

		// リクエストパラメータを取得する
		String know = request.getParameter("understood");

		//更新を行う
		PrfDAO PrfDAO = new PrfDAO();
		if(PrfDAO.understand(new Prf(s_id, null, null, null, null, null, null, null, null, null, null, null, null, null, null, know))) {
			//更新成功
			request.setAttribute("result", new Result("更新が完了しました","レコードを更新しました","/UseLike/StudentTopServlet"));
		}else {
			request.setAttribute("result", new Result("更新が失敗しました","レコードを更新できませんでした","/UserLike/StudentTopServlet"));
		}

		//ページにフォワードする
		RequestDispatcher dispatchar = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatchar.forward(request,response);
	}


}