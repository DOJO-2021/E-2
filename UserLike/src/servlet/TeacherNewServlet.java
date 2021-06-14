package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TeacherIdpwDAO;
import model.Result;
import model.TeachIdpw;

/**
 * Servlet implementation class TeacherNewServlet
 */
@WebServlet("/TeacherNewServlet")
public class TeacherNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 登録ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/t_new.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String t_id = request.getParameter("T_ID");
		String t_pw = request.getParameter("T_PW");
		String c_name = request.getParameter("C_NAME");


		// 登録処理を行う
		TeacherIdpwDAO tDao = new TeacherIdpwDAO();
		if (tDao.insert(new TeachIdpw(t_id, t_pw, c_name))) {	// 登録成功
			request.setAttribute("result",
			new Result("登録成功！", "レコードを登録しました。", "/UserLike/TeacherLoginServlet"));
		}
		else {												// 登録失敗
			request.setAttribute("result",
			new Result("登録失敗！", "レコードを登録できませんでした。", "/UserLike/TeacherNewServlet"));
		}

		// 結果ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatcher.forward(request, response);
	}
}


