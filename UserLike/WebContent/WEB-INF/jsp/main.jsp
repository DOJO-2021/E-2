<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ</title>
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
</head>


<body>
	<div class="wrapper">
		<div class="container">
			<!--ヘッダー-->
			<header class="header">
			<div class="mainitem">
				<h1 class="logo"><a href="/USerLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
			<!-- ヘッダー部分ナビゲーション -->

		    <nav class="navitem">
		      <ul>
		         <li><a href="#"></a>Home</li>
		         <li><a href="#"></a>service</li>
		         <li><a href="#"></a>about</li>
		         <li><a href="#"></a>contact</li>
		      </ul>
		    </nav>
            </div>
			</header>


		<main>
			<!--メイン-->
            <!--メイン部分ナビゲーション 各ログイン画面へ遷移 -->
           <nav class="navnew">
             <ul>
                 <li><a href="/UserLike/TeacherLoginServlet">講師の方はこちら</a></li>
                 <li><a href="/UserLike/StudentLoginServlet">受講生の方はこちら</a></li>
             </ul>
           </nav>
	       <!-- メインロゴ挿入 -->
	       <h3 class="mainlogo"><a href="/USerLike/MainServlet"><img src="img/5.png" class="mainlogo_image"></a></h3>

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