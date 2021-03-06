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
	<link rel="stylesheet" href="css/teacher.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->

	<link rel="stylesheet" href="css/animsition.min.css"><!--CSS読み込み / ページフェード切り替えCSS-->
	<script src="js/animsition.min.js"></script><!-- jQuery読み込み / ページフェード切り替え -->
	<script type="text/javascript"><!-- jquery / ページフェード -->
	$(document).ready(function() {
		jQuery(".animsition").animsition();
	});
	</script>

	<link rel="stylesheet" href="css/validationEngine.css"><!--CSS読み込み / 入力チェック用CSS-->
	<script src="js/jquery.validationEngine.js"></script><!-- jQuery読み込み / 入力チェック -->
	<script src="js/jquery.validationEngine-ja.js"></script><!-- jQuery読み込み / 入力チェック -->
	<script type="text/javascript"><!-- jquery / 入力チェック -->
	jQuery(function(){
		//<form>タグのidを指定
		jQuery("#formCheck").validationEngine(
			'attach', {
			promptPosition: "topRight"//エラーメッセージ位置の指定
		});
	});
	</script>
</head>

<body>
<div class="wrapper animsition">
<div class="container">
	<!--ヘッダー-->
	<header class="header">
		<h1 class="logo"><a href="/UserLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
	</header>

		<main>
		<div class="area" >
		<!--メイン-->
		<div class="t-log-form">
			<form id="formCheck" method="POST" action="/UserLike/TeacherLoginServlet">
				<h4>ログイン</h4>

				<div class="cp_iptxt">
					<p>ユーザーID</p>
					<input type="text" name="ID" class="t-log-input validate[required]">
				</div>

				<div class="cp_iptxt">
					<p>パスワード</p>
	      			<input type="password" id="textPassword"  name="PW" class="t-log-input validate[required]">
				    <span id="buttonEye" class="fa fa-eye" onclick="pushHideButton()"></span>
				</div>

				<button class="t-log-btn">ログイン</button>

	            <div class="t-log-first">
					<a href ="/UserLike/TeacherNewServlet">パスワードを忘れた方</a>
					<a>　</a>
					<a href ="/UserLike/TeacherNewServlet">初めての方</a>
				</div>

			 	<div class="t-log-back">
			  		<a href = "/UserLike/MainServlet"><img style="vertical-align:middle;height:18px;padding-bottom:2px" src="img/back.png" >戻る</a>
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
	<script>
      function pushHideButton() {
        var txtPass = document.getElementById("textPassword");
        var btnEye = document.getElementById("buttonEye");
        if (txtPass.type === "text") {
          txtPass.type = "password";
          btnEye.className = "fa fa-eye";
        } else {
          txtPass.type = "text";
          btnEye.className = "fa fa-eye-slash";
        }
      }
    </script>

	<script src="js/scroll.js"></script><!--トップに戻るボタン-->
	<div id="page_top"><a href="#"></a></div>
</div>
</div>
</body>
</html>

