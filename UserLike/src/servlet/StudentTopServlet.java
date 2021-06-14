package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		/* テスト中はコメントアウト
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}
		*/

		//ログインしているユーザーのIDを取得
/*		HttpSession session = request.getSession();
		String s_id = session.getAttribute("s_id");

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String understood = request.getParameter("understood");
		String cantunderstand = request.getParameter("cantunderstand");

		//自分のプロフィールを検索する
		PrfDAO PrfDAO = new PrfDAO();
		List<Prf> profList =PrfDAO.show(new Prf("s_id"));

		//更新を行う
		PrfDAO PrfDAO = new PrfDAO();
		if(PrfDAO.update(new Prf(s_name,s_id,gender,c_name,s_mail,exp,college,b_place,hobby,skill,music,job,activity,pr))) {
			//更新成功
			request.setAttribute("result", new Result("更新が完了しました","レコードを更新しました","/UseLike/MainServlet"));
		}else {
			request.setAttribute("result", new Result("更新が失敗しました","レコードを更新できませんでした","/UserLike/MainServlet"));
		}
*/
	}


}