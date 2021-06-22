package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Reaction;


public class ReactionDAO {

	//【検索】全件検索
	public List<Reaction> show() {
		Connection conn = null;
		List<Reaction> ReactionList = new ArrayList<Reaction>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");


			// SQL文を準備する
			String sql = "select * from reaction";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Reaction list = new Reaction(
				rs.getString("button"),
				rs.getInt("count")

				);
				ReactionList.add(list);
			}

		}
		catch (SQLException e) {
			e.printStackTrace();
			ReactionList = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			ReactionList = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					ReactionList = null;
				}
			}
		}

		// 結果を返す
		return ReactionList;
	}

	public static boolean count(String button) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "update reaction set count = count + 1 where button=?";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, button);

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


