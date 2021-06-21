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
import dao.PrfDAO;
import model.Know;
import model.Prf;

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

		//ログインしているユーザーのIDを取得
		request.setCharacterEncoding("UTF-8");
		String s_id = (String) session.getAttribute("s_id");


		//カレンダークラスのオブジェクトを生成する
        Calendar cl = Calendar.getInstance();

        //フォーマットを指定する
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(cl.getTime());

        //フォーマットをフォーマットを変更する
        sdf.applyPattern("kk");
        String hour = sdf.format(cl.getTime());

		//更新を行う
		PrfDAO PrfDAO = new PrfDAO();
		KnowDAO KnowDAO = new KnowDAO();
		if (request.getParameter("SUBMIT").equals("unknow")) {
			PrfDAO.cantunderstand(new Prf(s_id, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0));
			if (hour == "09") {
			KnowDAO.know9(new Know(date, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));
			}
		} else if (request.getParameter("SUBMIT").equals("know")) {
			PrfDAO.understand(new Prf(s_id, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0));
		}
	}
}