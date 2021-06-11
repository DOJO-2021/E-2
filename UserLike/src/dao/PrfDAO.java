package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Prf;

public class PrfDAO {
	//【検索】t-list.jsp用、全データの5項目だけ表示
	public List<Prf> select(Prf param) {
		Connection conn = null;
		List<Prf> prfList = new ArrayList<Prf>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "select c_name, s_name, gender, exp, know from profile" ;
			PreparedStatement pStmt = conn.prepareStatement(sql);


			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Prf prf = new Prf(
					rs.getString("c_name"),
					rs.getString("s_name"),
					rs.getString("gender"),
					rs.getString("exp"),
					rs.getString("know")
					);

				prfList.add(prf);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			prfList = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			prfList = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					prfList = null;
				}
			}
		}

		// 結果を返す
		return prfList;
	}


	//【検索】全件検索
	public List<Prf> showall () {
		Connection conn = null;
		List<Prf> cardList = new ArrayList<Prf>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/UserLike", "sa", "");


			// SQL文を準備する
			String sql = "select * from profile";
			PreparedStatement pStmt = conn.prepareStatement(sql);


			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Prf list = new Prf(
				rs.getString("s_id"),
				rs.getString("s_name"),
				rs.getString("s_mail"),
				rs.getString("gender"),
				rs.getString("c_name"),
				rs.getString("exp"),
				rs.getString("college"),
				rs.getString("b_place"),
				rs.getString("hobby"),
				rs.getString("skill"),
				rs.getString("music"),
				rs.getString("job"),
				rs.getString("activity"),
				rs.getString("pr")
				);
				cardList.add(list);
			}

		}
		catch (SQLException e) {
			e.printStackTrace();
			cardList = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			cardList = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					cardList = null;
				}
			}
		}

		// 結果を返す
		return cardList;
	}


	//【検索】ID検索
	public List<Prf> show (Prf prf) {
		Connection conn = null;
		List<Prf> prfList = new ArrayList<Prf>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/UserLike", "sa", "");


			// SQL文を準備する
			String sql = "select * from profile where s_id=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,prf.getS_id());

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Prf list = new Prf(
				rs.getString("s_id"),
				rs.getString("s_name"),
				rs.getString("s_mail"),
				rs.getString("gender"),
				rs.getString("c_name"),
				rs.getString("exp"),
				rs.getString("college"),
				rs.getString("b_place"),
				rs.getString("hobby"),
				rs.getString("skill"),
				rs.getString("music"),
				rs.getString("job"),
				rs.getString("activity"),
				rs.getString("pr")
				);
				prfList.add(list);
			}

		}
		catch (SQLException e) {
			e.printStackTrace();
			prfList = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			prfList = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					prfList = null;
				}
			}
		}

		// 結果を返す
		return prfList;
	}



	//【更新】 引数listで指定されたレコードを更新し、成功したらtrueを返す
	public boolean update(Prf list) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "update profile set s_name=?, s_mail=?, gender=?, c_name=?, exp=?, college=?, b_place=?, hobby=?, skill=?, music=?, job=?, activity=?, pr=?, where id=?";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (list.getS_name() != null) {
				pStmt.setString(1, list.getS_name());
			}
			else {
				pStmt.setString(1, "null");
			}

			if (list.getS_mail() != null) {
				pStmt.setString(2, list.getS_mail());
			}
			else {
				pStmt.setString(2, "null");
			}
			if (list.getGender() != null) {
				pStmt.setString(3, list.getGender());
			}
			else {
				pStmt.setString(3, "null");
			}
			if (list.getC_name() != null) {
				pStmt.setString(4, list.getC_name());
			}
			else {
				pStmt.setString(4, "null");
			}
			if (list.getExp() != null) {
				pStmt.setString(5, list.getExp());
			}
			else {
				pStmt.setString(5, "null");
			}
			if (list.getCollege() != null) {
				pStmt.setString(6, list.getCollege());
			}
			else {
				pStmt.setString(6, "null");
			}
			if (list.getB_place() != null) {
				pStmt.setString(7, list.getB_place());
			}
			else {
				pStmt.setString(7, "null");
			}
			if (list.getHobby() != null) {
				pStmt.setString(8, list.getHobby());
			}
			else {
				pStmt.setString(8, "null");
			}
			if (list.getSkill() != null) {
				pStmt.setString(9, list.getSkill());
			}
			else {
				pStmt.setString(9, "null");
			}
			if (list.getMusic() != null) {
				pStmt.setString(10, list.getMusic());
			}
			else {
				pStmt.setString(10, "null");
			}
			if (list.getJob() != null) {
				pStmt.setString(11, list.getJob());
			}
			else {
				pStmt.setString(11, "null");
			}
			if (list.getActivity() != null) {
				pStmt.setString(12, list.getActivity());
			}
			else {
				pStmt.setString(12, "null");
			}
			if (list.getPr() != null) {
				pStmt.setString(13, list.getPr());
			}
			else {
				pStmt.setString(13, "null");
			}


			// SQL文を実行する
			pStmt.setString(14,list.getS_id());
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




	//【削除】引数numberで指定されたレコードを削除し、成功したらtrueを返す
	public boolean delete(Prf prf) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/simpleBC", "sa", "");

			// SQL文を準備する
			String sql = "delete from profile where s_id=?";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, prf.getS_id());

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

