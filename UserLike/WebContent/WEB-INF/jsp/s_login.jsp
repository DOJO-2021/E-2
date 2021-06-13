<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | ログイン</title>
	<link rel="icon"  href="/UserLike/img/favicon.ico" ><!--ファビコン-->
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/student.css"><!--CSS読み込み-->
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
			<div class="s-log-form">
			<form method="POST" action="/UserLike/StudentLoginServlet">
			<h4>ログイン</h4>
				<p>ユーザーID</p>
				<input type="text" name="ID" class="s-log-input">

				<p>パスワード</p>
				<input type="password" name="PW" class="s-log-input">

				<button class="s-log-btn">ログイン</button>

              <div class="s-log-first">
				<a href = "/UserLike/StudentNewServlet">パスワードを忘れた方</a>
				<a>　</a>
				<a href = "/UserLike/StudentNewServlet">初めての方</a>
			  </div>
			</form>
			</div>
</div >
<!--ふわふわ背景-->

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


		</main>



	<footer class="footer"><!--フッター-->
		<jsp:include page="footer.jsp" />
	</footer>

	<script src="js/scroll.js"></script><!--トップに戻るボタン-->
	<div id="page_top"><a href="#"></a></div>
 </div>
</div>
</body>
</html>
