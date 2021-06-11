package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PrfDAO;
import model.Prf;

/**
 * Servlet implementation class TeacherListServlet
 */
@WebServlet("/TeacherListServlet")
public class TeacherListServlet extends HttpServlet {
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


		//プロフ情報取得
		PrfDAO prf = new PrfDAO();
		List<Prf> prfList = prf.showall();
		System.out.println(3);


		// 検索結果をリクエストスコープに格納する
		request.setAttribute("prfList", prfList);


		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/t_list.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		/* テスト中はコメントアウト
		HttpSession session = request.getSession();
		if (session.getAttribute("t_id") == null) {
			response.sendRedirect("/UserLike/TeacherLoginServlet");
			return;
		}
		*/

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
/*		String s_name = request.getParameter("S_NAME");
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


		//自分のプロフィールを検索する
		PrfDAO PrfDAO = new PrfDAO();
		List<Prf> profList =PrfDAO.select(new Prf("icon","s_name",null,"gender","c_name","s_mail","exp", "college","b_place","hobby","skill","music","job","activity","pr"));

		//検索結果をリクエストスコープから取得する
		request.setAttribute("profList",profList);
*/

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
	}

}
