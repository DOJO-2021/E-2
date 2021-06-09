<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | プロフィール編集</title>
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/student.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
</head>


<body>
	<div class="wrapper">
		<!--ヘッダー-->
		<header class="header">
			<jsp:include page="s_header.jsp" />
		</header>


		<main>
			<!--メイン-->
			<h1>プロフィール編集</h1>
			<form>
				<table>
					<tr>
					<td><input type="text"  name="" value="{}"></td>
					</tr>

					<tr>
					<th>受講者ID</th>
					<td><input type="text"  name="S_ID" value="{}"></td>
					</tr>

					<tr>
					<th>性別</th>
					<td><input type="text"  name="GENDER" value="{}"></td>
					</tr>

					<tr>
					<th>クラス</th>
					<td><input type="text"  name="C_NAME" value="{}"></td>
					</tr>

					<tr>
					<th>Email</th>
					<td><input type="text"  name="S_MAIL" value="{}"></td>
					</tr>

					<tr>
					<th>プログラミング経験なし</th>
					<td><input type="text"  name="EXP" value="{}"></td>
					</tr>

					<tr>
					<th>出身学部</th>
					<td><input type="text"  name="COLLEGE" value="{}"></td>
					</tr>

					<tr>
					<th>出身地</th>
					<td><input type="text"  name="B_PLACE" value="{}"></td>
					</tr>

					<tr>
					<th>趣味</th>
					<td><input type="text"  name="HOBBY" value="{}"></td>
					</tr>

					<tr>
					<th>特技</th>
					<td><input type="text"  name="SKILL" value="{}"></td>
					</tr>

					<tr>
					<th>好きな音楽</th>
					<td><input type="text"  name="MUSIC" value="{}"></td>
					</tr>

					<tr>
					<th>バイト経験</th>
					<td><input type="text"  name="JOB" value="{}"></td>
					</tr>

					<tr>
					<th>課外活動経験</th>
					<td><input type="text"  name="ACTIVITY" value="{}"></td>
					</tr>

					<tr>
					<th>自己PR</th>
					<td><input type="text"  name="PR" value="{}"></td>
					</tr>
				</table>
			</form>
		</main>

		<footer class="footer"><!--フッター-->
			<jsp:include page="footer.jsp" />
		</footer>

		<script src="js/scroll.js"></script><!--トップに戻るボタン-->
		<div id="page_top"><a href="#"></a></div>
	</div>
</body>
</html>
