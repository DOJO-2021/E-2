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
import dao.ReactionDAO;

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
		try {
			if (request.getParameter("SUBMIT").equals("know")) {
				PrfDAO.understand(s_id);
				if (hour.equals("09")) {
					KnowDAO.know9(date);
				} else if (hour.equals("10")) {
					KnowDAO.know10(date);
				} else if (hour.equals("11")) {
					KnowDAO.know11(date);
				} else if (hour.equals("12")) {
					KnowDAO.know12(date);
				} else if (hour.equals("13")) {
					KnowDAO.know13(date);
				} else if (hour.equals("14")) {
					KnowDAO.know14(date);
				} else if (hour.equals("15")) {
					KnowDAO.know15(date);
				} else if (hour.equals("16")) {
					KnowDAO.know16(date);
				} else if (hour.equals("17")) {
					KnowDAO.know17(date);
				}
			} else if (request.getParameter("SUBMIT").equals("unknow")) {
				PrfDAO.cantunderstand(s_id);
				if (hour.equals("09")) {
					KnowDAO.unknow9(date);
				} else if (hour.equals("10")) {
					KnowDAO.unknow10(date);
				} else if (hour.equals("11")) {
					KnowDAO.unknow11(date);
				} else if (hour.equals("12")) {
					KnowDAO.unknow12(date);
				} else if (hour.equals("13")) {
					KnowDAO.unknow13(date);
				} else if (hour.equals("14")) {
					KnowDAO.unknow14(date);
				} else if (hour.equals("15")) {
					KnowDAO.unknow15(date);
				} else if (hour.equals("16")) {
					KnowDAO.unknow16(date);
				} else if (hour.equals("17")) {
					KnowDAO.unknow17(date);
				}
			}
		} catch(Exception e) {
			String react = request.getParameter("react");
			ReactionDAO ReactionDAO = new ReactionDAO();
			ReactionDAO.count(react);
		}

	}
}