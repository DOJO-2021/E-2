package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.PrfDAO;
import dao.StudentIdpwDAO;
import model.Prf;
import model.Result;
import model.StuIdpw;


@WebServlet("/StudentNewServlet")
@MultipartConfig(maxFileSize=1048576,location = "C:\\pleiades\\workspace\\E-2\\UserLike\\WebContent\\img\\icon")
public class StudentNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 登録ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/s_new.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String s_id = request.getParameter("S_ID");
		String s_pw = request.getParameter("S_PW");
		String s_name = request.getParameter("S_NAME");
		String icon = request.getParameter("ICON");
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
        	icon = ("/noimage.png");
        	request.setAttribute("icon", icon);
        }


		// IDとパスワードの登録処理を行う
		StudentIdpwDAO sDao = new StudentIdpwDAO();
		if (sDao.insert(new StuIdpw(s_id, s_pw))) {

			// アカウント登録成功したらプロフィールの登録処理を行う
			PrfDAO pDao = new PrfDAO();
			if (pDao.insert(new Prf(s_id, s_name, icon, s_mail, gender, c_name, exp, college, b_place, hobby, skill, music, job, activity, pr, 0, 0))) {	// プロフ登録成功
				request.setAttribute("result",
				new Result("登録成功！", "レコードを登録できました。", "/UserLike/StudentLoginServlet", "暗記じゃないよ、テクノロジーは。by.Yazawa"));
			}
			else {												// プロフ登録失敗
				request.setAttribute("result",
				new Result("登録失敗！", "プロフィールを登録できませんでした。", "/UserLike/StudentLoginServlet", "いったんお茶を飲んでみよう！by.Yazawa"));
			}
		}
		else {												// アカウント登録失敗
			request.setAttribute("result",
			new Result("登録失敗！", "アカウントを登録できませんでした。", "/UserLike/StudentNewServlet", "いったんお茶を飲んでみよう！by.Yazawa"));
		}

		// ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatcher.forward(request, response);
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