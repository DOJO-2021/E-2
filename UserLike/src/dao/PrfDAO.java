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
	//【検索】全件検索
	public List<Prf> showall () {
		Connection conn = null;
		List<Prf> prfList = new ArrayList<Prf>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");


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
				rs.getString("icon"),
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
				rs.getString("pr"),
				rs.getInt("Know"),
				rs.getInt("Unknow")
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


	//【検索】ID検索
	public List<Prf> show(Prf prf) {
		Connection conn = null;
		List<Prf> prfList = new ArrayList<Prf>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");


			// SQL文を準備する
			String sql = "select * from profile where s_id=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, prf.getS_id());

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Prf list = new Prf(
				rs.getString("s_id"),
				rs.getString("s_name"),
				rs.getString("icon"),
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
				rs.getString("pr"),
				rs.getInt("Know"),
				rs.getInt("Unknow")
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

	//【追加】新規登録
	public boolean insert(Prf card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "insert into profile values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0, 0)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (card.getS_id() != null) {
				pStmt.setString(1, card.getS_id());
			}
			else {
				pStmt.setString(1, null);
			}
			if (card.getS_name() != null) {
				pStmt.setString(2, card.getS_name());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getIcon() != null) {
				pStmt.setString(3, card.getIcon());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getS_mail() != null) {
				pStmt.setString(4, card.getS_mail());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getGender() != null) {
				pStmt.setString(5, card.getGender());
			}
			else {
				pStmt.setString(5, null);
			}
			if (card.getC_name() != null) {
				pStmt.setString(6, card.getC_name());
			}
			else {
				pStmt.setString(6, null);
			}
			if (card.getExp() != null) {
				pStmt.setString(7, card.getExp());
			}
			else {
				pStmt.setString(7, null);
			}
			if (card.getCollege() != null) {
				pStmt.setString(8, card.getCollege());
			}
			else {
				pStmt.setString(8, null);
			}
			if (card.getB_place() != null) {
				pStmt.setString(9, card.getB_place());
			}
			else {
				pStmt.setString(9, null);
			}
			if (card.getHobby() != null) {
				pStmt.setString(10, card.getHobby());
			}
			else {
				pStmt.setString(10, null);
			}
			if (card.getSkill() != null) {
				pStmt.setString(11, card.getSkill());
			}
			else {
				pStmt.setString(11, null);
			}
			if (card.getMusic() != null) {
				pStmt.setString(12, card.getMusic());
			}
			else {
				pStmt.setString(12, null);
			}
			if (card.getJob() != null) {
				pStmt.setString(13, card.getJob());
			}
			else {
				pStmt.setString(13, null);
			}
			if (card.getActivity() != null) {
				pStmt.setString(14, card.getActivity());
			}
			else {
				pStmt.setString(14, null);
			}
			if (card.getPr() != null) {
				pStmt.setString(15, card.getPr());
			}
			else {
				pStmt.setString(15, null);
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



	//【更新】 引数listで指定されたレコードを更新し、成功したらtrueを返す
	public boolean update(Prf card) {
		Connection conn = null;
		boolean result = false;




		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "update profile set s_name=?, icon=?, s_mail=?, gender=?, c_name=?, exp=?, college=?, b_place=?, hobby=?, skill=?, music=?, job=?, activity=?, pr=? where s_id=?";
		//	System.out.printf("update profile set s_name=%s, icon=%s, s_mail=%s, gender=%s, c_name=%s, exp=%s, college=%s, b_place=%s, hobby=%s, skill=%s, music=%s, job=%s, activity=%s, pr=%s where s_id=%s",s_id, s_name, icon, gender, c_name, s_mail, exp, college, b_place, hobby, skill, music, job,activity, pr);

			PreparedStatement pStmt = conn.prepareStatement(sql);

		/*	pStmt.setString(1,"zzz");
			pStmt.setString(2,"");
			pStmt.setString(3,"zzz");
			pStmt.setString(4,"zzz");
			pStmt.setString(5,"");
			pStmt.setString(6,"sss");
			pStmt.setString(7,"sss");
			pStmt.setString(8,"sss");
			pStmt.setString(9,"sss");
			pStmt.setString(10,"sss");
			pStmt.setString(11,"sss");
			pStmt.setString(12,"sss");
			pStmt.setString(13,"sss");
			pStmt.setString(14,"sss");
			pStmt.setString(15,card.getS_id()); */


			// SQL文を完成させる
			if (card.getS_name() != null) {
				pStmt.setString(1, card.getS_name());
			}
			else {
				pStmt.setString(1, "");
			}

			if (card.getIcon() != null) {
				pStmt.setString(2, card.getIcon());
			}
			else {
				pStmt.setString(2, null);
			}

			if (card.getS_mail() != null) {
				pStmt.setString(3, card.getS_mail());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getGender() != null) {
				pStmt.setString(4, card.getGender());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getC_name() != null) {
				pStmt.setString(5, card.getC_name());
			}
			else {
				pStmt.setString(5, "");
			}
			if (card.getExp() != null) {
				pStmt.setString(6, card.getExp());
			}
			else {
				pStmt.setString(6, null);
			}
			if (card.getCollege() != null) {
				pStmt.setString(7, card.getCollege());
			}
			else {
				pStmt.setString(7, null);
			}
			if (card.getB_place() != null) {
				pStmt.setString(8, card.getB_place());
			}
			else {
				pStmt.setString(8, null);
			}
			if (card.getHobby() != null) {
				pStmt.setString(9, card.getHobby());
			}
			else {
				pStmt.setString(9, null);
			}
			if (card.getSkill() != null) {
				pStmt.setString(10, card.getSkill());
			}
			else {
				pStmt.setString(10, null);
			}
			if (card.getMusic() != null) {
				pStmt.setString(11, card.getMusic());
			}
			else {
				pStmt.setString(11, null);
			}
			if (card.getJob() != null) {
				pStmt.setString(12, card.getJob());
			}
			else {
				pStmt.setString(12, null);
			}
			if (card.getActivity() != null) {
				pStmt.setString(13, card.getActivity());
			}
			else {
				pStmt.setString(13, null);
			}
			if (card.getPr() != null) {
				pStmt.setString(14, card.getPr());
			}
			else {
				pStmt.setString(14, null);
			}
			pStmt.setString(15,card.getS_id());


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
		//result=true;
		return result;


	}



	//【更新】 「わかった」に１追加
	public boolean understand(Prf list) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "update profile set know = know + 1 where s_id=?";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, list.getS_id());

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

	//【更新】 「わからない」に１追加
	public boolean cantunderstand(Prf list) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "update profile set unknow = unknow + 1 where s_id=?";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, list.getS_id());

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

	//【削除】引数s_idで指定されたレコードを削除し、成功したらtrueを返す
	public boolean delete(String s_id) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/E-2/data/UserLike", "sa", "");

			// SQL文を準備する
			String sql = "delete from profile where s_id=?";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, s_id);

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

