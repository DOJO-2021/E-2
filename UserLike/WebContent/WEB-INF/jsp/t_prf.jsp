<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | プロフィール</title>
	<link rel="icon"  href="/UserLike/img/favicon.ico" ><!--ファビコン-->
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/teacher.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
</head>


<body>
	<div class="wrapper">
		<!--ヘッダー-->
		<header class="header">
			<jsp:include page="t_header.jsp" />
		</header>

		<main>
			<!--メイン-->
			<!-- 受講者自身のプロフィールを確認できる画面 -->
			<h2>プロフィール</h2>

			<!-- 削除ボタン -->
			<form class="delete" method="POST" action="/USerLike/TeacherPrfServlet">
			<div class="button">
				<input type="submit" name="submit" value="削除">
			</div>
			</form>

			<!-- 写真 -->


			<input type="hidden"  name="S_ID" value="{}">

			<div id="S_name">
			<p>なまえ なまえ</p>
			</div>

			<div id="S_ID" >
			<label class="item_title">受講者ID</label>
			<p>${sample}</p>
			</div>

			<div id="GENDER" >
			<label class="item_title">性別</label>
			<p></p>
			</div>

			<div id="C_NAME">
			<label class="item_title">クラス</label>
			<p></p>
			</div>

			<div id="S_MAIL">
			<label class="item_title">Emai</label>
			<p></p>
			</div>

			<div id="EXP">
			<label class="item_title">プログラミング経験</label>
			<p></p>
			</div>

			<div id="COLLEGE">
			<label class="item_title">出身学部</label>
			<p></p>
			</div>

			<div id="B_PLACE">
			<label class="item_title">出身地</label>
			<p></p>
			</div>

			<div id="HOBBY">
			<label class="item_title">趣味</label>
			<p></p>
			</div>

			<div id="SKILL">
			<label class="item_title">特技</label>
			<p></p>
			</div>

			<div id="MUSIC">
			<label class="item_title">好きな音楽</label>
			<p></p>
			</div>

			<div id="JOB">
			<label class="item_title">バイト経験</label>
			<p></p>
			</div>

			<div id="ACTIVITY">
			<label class="item_title">課外活動経験</label>
			<p></p>
			</div>

			<div id="PR">
			<label class="item_title">自己PR</label>
			<p></p>
			</div>
		</main>

		<footer class="footer"><!--フッター-->
			<jsp:include page="footer.jsp" />
		</footer>

		<script src="js/scroll.js"></script><!--トップに戻るボタン-->
		<div id="page_top"><a href="#"></a></div>
	</div>
</body>
</html>
