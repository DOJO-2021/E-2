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
 * Servlet implementation class StudentNewServlet
 */
@WebServlet("/StudentNewServlet")
public class StudentNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 登録ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/s_new.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
/*		String s_id = request.getParameter("s_id");
		String s_pw = request.getParameter("s_pw");
		String s_name = request.getParameter("s_name");
		String s_mail = request.getParameter("s_mail");
		String gender = request.getParameter("gender");
		String c_name = request.getParameter("c_name");
		String exp = request.getParameter("exp");
		String college = request.getParameter("college");
		String b_place = request.getParameter("b_plece");
		String hobby = request.getParameter("hobby");
		String skill = request.getParameter("skill");
		String music = request.getParameter("music");
		String job = request.getParameter("job");
		String activity= request.getParameter("activity");
		String pr = request.getParameter("pr");

		// IDとパスワードの登録処理を行う
		StudentIdpwDAO sDao = new StudentIdpwDAO();
		if (sDao.insert(new StuIdpw(s_id, s_pw))) {

			// アカウント登録成功したらプロフィールの登録処理を行う
			PrfDAO pDao = new PrfDAO();
			if (pDao.insert(new Prf(s_id, s_name, s_mail, gender, c_name, exp, college, b_place, hobby, skill, music, job, activity, pr))) {	// プロフ登録成功
				request.setAttribute("result",
				new Result("登録成功！", "レコードを登録しました。", "/UserLike/StudentPrfServlet"));
			}
			else {												// プロフ登録失敗
				request.setAttribute("result",
				new Result("登録失敗！", "レコードを登録できませんでした。", "/UserLike/StudentNewServlet"));
			}
		}
		else {												// アカウント登録失敗
			request.setAttribute("result",
			new Result("登録失敗！", "レコードを登録できませんでした。", "/UserLike/StudentNewServlet"));
		}
*/
		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatcher.forward(request, response);
	}
}


