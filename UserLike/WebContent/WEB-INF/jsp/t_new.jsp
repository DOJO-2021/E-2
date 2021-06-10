<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | 新規登録</title>
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/teacher.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
</head>


<body>
	<div class="wrapper">
		<!--ヘッダー-->
		<header class="header">
			<h1 class="logo"><a href="/UserLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
		</header>

		<main>
			<!--メイン-->
			<h1>講師新規登録画面</h1>
			<form>
				<div class="t_id">
					<label>ユーザーID</label><br>
					<input type ="text" name="id" placeholder="ID入力">
				</div>

				<div class="t_pw">
					<label>パスワード</label><br>
					<input type="text" name="pw" placeholder="パスワード入力">
				</div>

				<div class="t_pw_2">
					<label>パスワード(再入力)</label><br>
					<input type="text" name="pw" placeholder="パスワード入力">
				</div>

				<div class="class_name">
					<label>クラス名</label><br>
					<input type="radio" name="class" value="A" checked>A
					<input type="radio" name="class" value="B">B
					<input type="radio" name="class" value="C">C
					<input type="radio" name="class" value="D">D
					<input type="radio" name="class" value="E">E
				</div>

				<!-- 登録ボタン -->
				<div class="button">
					<input type="submit" name="submit" value="登録">
				</div>
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
