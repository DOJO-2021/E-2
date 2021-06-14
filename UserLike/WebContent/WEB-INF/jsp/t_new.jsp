<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | 新規登録</title>
	<link rel="icon"  href="/UserLike/img/favicon.ico" ><!--ファビコン-->
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/teacher.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
</head>


<body>
	<div class="wrapper">
		<div class="container">
		<!--ヘッダー-->
		<header class="header">
			<h1 class="logo"><a href="/UserLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
		</header>

		<main>
		<div class="area" >
			<!--メイン-->
			<div class="t-new-form">
			<form method="POST" action="/UserLike/StudentLoginServlet">
			<h4>新規登録</h4>
				<p>ユーザーID</p>
				<input type="text" name="t_id" class="t-new-input">
​
				<p>パスワード</p>
				<input type="password" name="t_pw" class="t-new-input">
​
				<p>パスワード(再入力)</p>
				<input type="password" name="t_pw2" class="t-new-input">
​
				<p>クラス名</p>
				<input id="g1" checked="checked" name="radio01" type="radio" /><label class="radio01" for="g1">a</label><br>
				<input id="g2" name="radio01" type="radio" /><label class="radio01" for="g2">b</label><br>
				<input id="g3" name="radio01" type="radio" /><label class="radio01" for="g3">c</label><br>
				<input id="g4" name="radio01" type="radio" /><label class="radio01" for="g4">d</label><br>
				<input id="g5" name="radio01" type="radio" /><label class="radio01" for="g5">e</label><br>
				​
				​
				<button class="t-new-btn">登録</button>
​
			</form>
			</div>
		</div >
		</main>

		<footer class="footer"><!--フッター-->
			<jsp:include page="footer.jsp" />
		</footer>
		</div>
		<script src="js/scroll.js"></script><!--トップに戻るボタン-->
		<div id="page_top"><a href="#"></a></div>
	</div>
</body>
</html>
