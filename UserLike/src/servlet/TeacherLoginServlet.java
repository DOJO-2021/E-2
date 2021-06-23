package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.KnowDAO;
import dao.TeacherIdpwDAO;
import model.Result;
import model.TeachLoginUser;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/TeacherLoginServlet")
public class TeacherLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ログインページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/t_login.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String t_id = request.getParameter("ID");
		String t_pw = request.getParameter("PW");

		// ログイン処理を行う
		TeacherIdpwDAO iDao = new TeacherIdpwDAO();
		if (iDao.isLoginOK(t_id, t_pw)) {	// ログイン成功
			// セッションスコープにIDを格納する
			HttpSession session = request.getSession();
			session.setAttribute("t_id", new TeachLoginUser(t_id));

			try {
				//カレンダークラスのオブジェクトを生成する
		        Calendar cl = Calendar.getInstance();

		        //フォーマットを指定する
		        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		        String date = sdf.format(cl.getTime());

				KnowDAO know = new KnowDAO();
				know.insert(date);
			} catch(Exception e) {
				System.out.print("Date already added");
			}
			finally {
			// メニューサーブレットにリダイレクトする
			response.sendRedirect("/UserLike/TeacherTopServlet");
			}
		}
		else {									// ログイン失敗
			// リクエストスコープに、タイトル、メッセージ、戻り先を格納する
			request.setAttribute("result",
			new Result("ログイン失敗！", "IDまたはPWに間違いがあります。", "/UserLike/TeacherLoginServlet", "いったんお茶を飲んでみよう！by.Yazawa"));

			// 結果ページにフォワードする
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
			dispatcher.forward(request, response);
		}
	}
}
