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
				<input type="text"  name="" value="${sample}">

				<label class="item_title">性別</label>
				<input type="text"  name="GENDER" value="{}">

				<label class="item_title">クラス</label>
				<input type="text"  name="C_NAME" value="{}">

				<label class="item_title">Email</label>
				<input type="text"  name="S_MAIL" value="{}">

				<label class="item_title">プログラミング経験なし</label>
				<input type="text"  name="EXP" value="{}">

				<label class="item_title">出身学部</label>
				<input type="text"  name="COLLEGE" value="{}">

				<label class="item_title">出身地</label>
				<input type="text"  name="B_PLACE" value="{}">

				<label class="item_title">趣味</label>
				<input type="text"  name="HOBBY" value="{}">

				<label class="item_title">特技</label>
				<input type="text"  name="SKILL" value="{}">

				<label class="item_title">好きな音楽</label>
				<input type="text"  name="MUSIC" value="{}">

				<label class="item_title">バイト経験</label>
				<input type="text"  name="JOB" value="{}">

				<label class="item_title">課外活動経験</label>
				<input type="text"  name="ACTIVITY" value="{}">

				<label class="item_title">自己PR</label>
				<input type="text"  name="PR" value="{}">

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
