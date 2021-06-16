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

	<link rel="stylesheet" href="css/animsition.min.css"><!--CSS読み込み / ページフェード切り替えCSS-->
	<script src="js/animsition.min.js"></script><!-- jQuery読み込み / ページフェード切り替え -->
	<script type="text/javascript"><!-- jquery / ページフェード -->
	$(document).ready(function() {
		jQuery(".animsition").animsition();
	});
	</script>

	<script src="js/jquery.validationEngine.js"></script><!-- jQuery読み込み / 入力チェック -->
	<script src="js/jquery.validationEngine-ja.js"></script><!-- jQuery読み込み / 入力チェック -->
	<link rel="stylesheet" href="css/validationEngine.css"><!--CSS読み込み / 入力チェック用CSS-->
	<!-- jquery / 入力チェック -->
	<script type="text/javascript">
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
<div class="wrapper">
<div class="container">
	<!--ヘッダー-->
	<header class="header">
		<h1 class="logo"><a href="/UserLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
	</header>

		<main>
		<div class="area" >
		<!--メイン-->
		<div class="t-new-form"  style="position: relative;
									    background: #fff;
									    border-radius:8px;   /*枠の丸み*/
									    padding:35px;
									    padding-top:30px;
									    width:500px;
									    margin:50px auto;
									    border:1px solid #ffa500;   /* 枠の線の細さと色*/
									    z-index: 2">
			<form id="formCheck" method="POST" action="/UserLike/StudentNewServlet">
			<h4>新規登録</h4>

​				<div class="cp_iptxt">
					<label>ユーザーID</label><br>
					<input type="text" name="T_ID" class="t-new-input validate[required,maxSize[20]]" placeholder="ID">
					<span class="focus_line"></span>
				</div>
​
				<div class="cp_iptxt">
					<label>パスワード(6文字以上)</label><br>
					<input type="password" name="T_PW" class="t-new-input validate[required,minSize[6]]" id="password"  name="password" placeholder="password">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_iptxt">
					<label>パスワード(再入力)</label><br>
					<input  type="password" name="T_PW2" class="t-new-input validate[required,equals[password]]" placeholder="password">
					<span class="focus_line"></span>
				</div><br>

				<div>
					<p>クラス名</p>
					<input id=c1 checked="checked" name="C_NAME" type="radio" value="A" /><label class="radio01" for="c1">A</label>
					<input id=c2 name="C_NAME" type="radio" value="B" /><label class="radio01" for="c2">B</label>
					<input id=c3 name="C_NAME" type="radio" value="C" /><label class="radio01" for="c3">C</label>
					<input id=c4 name="C_NAME" type="radio" value="D" /><label class="radio01" for="c4">D</label>
					<input id=c5 name="C_NAME" type="radio" value="E" /><label class="radio01" for="c5">E</label>				​
				</div><br>
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

	<script src="js/scroll.js"></script><!--トップに戻るボタン-->
	<div id="page_top"><a href="#"></a></div>
</div>
</div>
</body>
</html>
