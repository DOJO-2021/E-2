package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.KnowDAO;
import dao.ReactionDAO;
import model.Know;
import model.Reaction;

/**
 * Servlet implementation class TeacherTopServlet
 */
@WebServlet("/TeacherTopServlet")
public class TeacherTopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("t_id") == null) {
			response.sendRedirect("/UserLike/TeacherLoginServlet");
			return;
		}

		//カレンダークラスのオブジェクトを生成する
        Calendar cl = Calendar.getInstance();

        //フォーマットを指定する
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(cl.getTime());

		//理解度情報取得
		KnowDAO Know = new KnowDAO();
		List<Know> knowList = Know.show(new Know(date, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));

		//リアクション情報（回数）取得
		ReactionDAO Reaction = new ReactionDAO();
		List<Reaction> reactionList = Reaction.show();

		//検索結果をリクエストスコープに格納する
		request.setAttribute("knowList", knowList);
		request.setAttribute("reactionList", reactionList);

		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/t_top.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
			HttpSession session = request.getSession();
			if (session.getAttribute("t_id") == null) {
				response.sendRedirect("/UserLike/TeacherLoginServlet");
				return;
			}

			//カレンダークラスのオブジェクトを生成する
	        Calendar cl = Calendar.getInstance();

	        //フォーマットを指定する
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	        String date = sdf.format(cl.getTime());

			//理解度情報取得
			KnowDAO Know = new KnowDAO();
			List<Know> knowList = Know.show(new Know(date, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));

			//リアクション情報（回数）リセット
			try {
				ReactionDAO.reset();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}

			//リアクション情報（回数）取得
			ReactionDAO Reaction = new ReactionDAO();
			List<Reaction> reactionList = Reaction.show();

			//検索結果をリクエストスコープに格納する
			request.setAttribute("knowList", knowList);
			request.setAttribute("reactionList", reactionList);

			// ページにフォワードする
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/t_top.jsp");
			dispatcher.forward(request, response);
		}


}
