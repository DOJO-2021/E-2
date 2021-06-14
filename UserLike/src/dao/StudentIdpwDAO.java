package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.StuIdpw;

	public class StudentIdpwDAO {
		// ログインできるならtrueを返す
	public boolean isLoginOK(String s_id, String s_pw) {
		Connection conn = null;
		boolean loginResult = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");

			// SELECT文を準備する
			String sql = "select count(*) from S_IDPW where S_ID = ? and S_PW = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, s_id);
			pStmt.setString(2, s_pw);

			// SELECT文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// ユーザーIDとパスワードが一致するユーザーがいたかどうかをチェックする
			rs.next();
			if (rs.getInt("count(*)") == 1) {
				loginResult = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			loginResult = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			loginResult = false;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					loginResult = false;
				}
			}
		}

		// 結果を返す
		return loginResult;
	}
	public boolean insert(StuIdpw card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "insert into S_IDPW values (?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (card.getS_id() != null) {
				pStmt.setString(1, card.getS_id());
			}
			else {
				pStmt.setString(1, "null");
			}
			if (card.getS_pw() != null) {
				pStmt.setString(2, card.getS_pw());
			}
			else {
				pStmt.setString(2, "null");
			}


			// SQL文を実行する
			if (pStmt.executeUpdate() == 1) {
				result = true;
			}

		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		// 結果を返す
		return result;
	}
}