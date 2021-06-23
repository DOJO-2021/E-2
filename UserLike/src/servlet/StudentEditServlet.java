package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.PrfDAO;
import model.Prf;
import model.Result;


/**
 * Servlet implementation class StudentEditServlet
 */
@WebServlet("/StudentEditServlet")
@MultipartConfig(maxFileSize=1048576,location = "C:\\pleiades\\workspace\\E-2\\UserLike\\WebContent\\img\\icon")
public class StudentEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}


		//ログインしているユーザーのIDを取得
		String s_id = (String) session.getAttribute("s_id");

		//自分のプロフィールを検索する
		PrfDAO PrfDAO = new PrfDAO();
		List<Prf> prfList =PrfDAO.show(new Prf(s_id, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0));

		//検索結果をリクエストスコープから取得する
		request.setAttribute("prfList",prfList);

		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/s_prf_edit.jsp");
		dispatcher.forward(request, response);
	}


	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("s_id") == null) {
			response.sendRedirect("/UserLike/StudentLoginServlet");
			return;
		}

		//ログインしているユーザーのIDを取得
		String s_id = (String) session.getAttribute("s_id");

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String s_name = request.getParameter("S_NAME");
		String icon= request.getParameter("ICON");
		String s_mail = request.getParameter("S_MAIL");
		String gender = request.getParameter("GENDER");
		String c_name = request.getParameter("C_NAME");
		String exp = request.getParameter("EXP");
		String college = request.getParameter("COLLEGE");
		String b_place = request.getParameter("B_PLACE");
		String hobby = request.getParameter("HOBBY");
		String skill = request.getParameter("SKILL");
		String music = request.getParameter("MUSIC");
		String job = request.getParameter("JOB");
		String activity= request.getParameter("ACTIVITY");
		String pr = request.getParameter("PR");

        try {
        	Part part = request.getPart("file"); // getPartで取得
    		String image = this.getFileName(part);

    			request.setAttribute("image", image);
    			//System.out.println(image);
    			// サーバの指定のファイルパスへファイルを保存
    	        //場所はクラス名↑の上に指定してある
    			part.write(image);
    			icon = image;

        }  catch (IOException e) {
        	request.setAttribute("icon", icon);
        }


		//更新を行う
		PrfDAO PrfDAO = new PrfDAO();
		if (request.getParameter("SUBMIT").equals("保存")) {
			if(PrfDAO.update(new Prf(s_id, s_name, icon, s_mail, gender, c_name, exp, college, b_place, hobby, skill, music, job,activity, pr, 0, 0))) {
				//更新成功
				request.setAttribute("result", new Result("更新が完了しました","レコードを更新しました","/UserLike/StudentPrfServlet", "暗記じゃないよ、テクノロジーは。by.Yazawa"));
			}else {
				request.setAttribute("result", new Result("更新が失敗しました","レコードを更新できませんでした","/UserLike/StudentEditServlet", "いったんお茶を飲んでみよう！by.Yazawa"));
			}

			//ページにフォワードする
			RequestDispatcher dispatchar = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
			dispatchar.forward(request,response);
		}
	}
	private String getFileName(Part part) {
        String name = null;
        for (String dispotion : part.getHeader("Content-Disposition").split(";")) {
            if (dispotion.trim().startsWith("filename")) {
                name = dispotion.substring(dispotion.indexOf("=") + 1).replace("\"", "").trim();
                name = name.substring(name.lastIndexOf("\\") + 1);
                break;
            }
        }
		return name;
	}

}