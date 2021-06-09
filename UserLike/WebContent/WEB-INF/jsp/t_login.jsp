<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | ログイン</title>
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/teacher.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
</head>


<body>
	<!--ふわふわ背景-->
	<div class="area" >
            <ul class="circles">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
            </ul>
    </div >

	<div class="wrapper">
			<!--ヘッダー-->
			<header class="header">
				<jsp:include page="t_header.jsp" />
			</header>


		<main>
			<!--メイン-->
			<h1>ログイン</h1>
			<form method="POST" action="/UserLike/TeacherLoginServlet">
				<p>ユーザーID</p>
				<input type="text" name="ID" placeholder = "ID入力">

				<p>パスワード</p>
				<input type="password" name="PW" placeholder = "パスワード入力">
				<input type="submit" name="LOGIN" value="ログイン">

				<a href = "/UserLike/TeacherNewServlet">パスワードを忘れた方</a>
				<a href = "/UserLike/TeacherNewServlet">初めての方</a>
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
