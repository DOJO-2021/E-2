package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
import dao.PrfDAO;
import model.Prf;
import model.Result;
*/

/**
 * Servlet implementation class StudentEditServlet
 */
@WebServlet("/StudentEditServlet")
public class StudentEditServlet extends HttpServlet {
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


		//前のページからプロフィール情報を持ってくる
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
/*		String s_id = request.getParameter("S_ID");

		//自分のプロフィールを検索する
		PrfDAO PrfDAO = new PrfDAO();
		List<Prf> profList =PrfDAO.show(new Prf("s_id"));

		//検索結果をリクエストスコープから取得する
		request.setAttribute("profList",profList);
*/
		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/s_prf_edit.jsp");
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
/*		String icon= request.getParameter("ICON");
		String s_name = request.getParameter("S_NAME");
		String s_id = request.getParameter("S_ID");
		String gender = request.getParameter("GENDER");
		String c_name = request.getParameter("C_NAME");
		String s_mail = request.getParameter("S_MAIL");
		String exp = request.getParameter("EXP");
		String college = request.getParameter("COLLEGE");
		String b_place = request.getParameter("B_PLACE");
		String hobby = request.getParameter("HOBBY");
		String skill = request.getParameter("SKILL");
		String music = request.getParameter("MUSIC");
		String job = request.getParameter("JOB");
		String  activity= request.getParameter("ACTIVITY");
		String pr = request.getParameter("PR");

		//更新を行う
		PrfDAO PrfDAO = new PrfDAO();
		if(PrfDAO.update(new Prf(s_name,s_id,gender,c_name,s_mail,exp,college,b_place,hobby,skill,music,job,activity,pr))) {
			//更新成功
			request.setAttribute("result", new Result("更新が完了しました","レコードを更新しました","/UseLike/MainServlet"));
		}else {
			request.setAttribute("result", new Result("更新が失敗しました","レコードを更新できませんでした","/UserLike/MainServlet"));
		}
*/
		//ページにフォワードする
		RequestDispatcher dispatchar = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatchar.forward(request,response);
	}

}