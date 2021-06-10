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
	<link rel="stylesheet" href="css/student.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
</head>


<body>
	<!--ヘッダー-->
	<header class="header">
		<h1 class="logo"><a href="/UserLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
	</header>

	<div class="context">
		<main>
			<!--メイン-->
			<h1>ログイン</h1>
			<form method="POST" action="/UserLike/StudentLoginServlet">
				<p>ユーザーID</p>
				<input type="text" name="S_ID" placeholder = "ID入力">

				<p>パスワード</p>
				<input type="password" name="S_PW" placeholder = "パスワード入力">
				<input type="submit" name="LOGIN" value="ログイン">

				<a href = "/UserLike/StudentNewServlet">パスワードを忘れた方</a>
				<a href = "/UserLike/StudentNewServlet">初めての方</a>
			</form>
		</main>
	</div>

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

	<footer class="footer"><!--フッター-->
		<jsp:include page="footer.jsp" />
	</footer>

	<script src="js/scroll.js"></script><!--トップに戻るボタン-->
	<div id="page_top"><a href="#"></a></div>
</body>
</html>
