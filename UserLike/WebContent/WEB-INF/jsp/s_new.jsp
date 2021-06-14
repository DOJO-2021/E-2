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
	<link rel="stylesheet" href="css/student.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
	<link rel="stylesheet" href="css/validationEngine.jquery.css"><!-- jQuery読み込み / 入力チェック用CSS -->
	<script src="js/jquery.validationEngine.js"></script><!-- jQuery読み込み / 入力チェック -->
	<script src="js/jquery.validationEngine-ja.js"></script><!-- jQuery読み込み / 入力チェック -->
	<link rel="stylesheet" href="css/validationEngine.css"><!--CSS読み込み-->

<!-- jquery / 入力チェック -->
	<script type="text/javascript">
    	jQuery(function(){
       	 //<form>タグのidを指定
       	 jQuery("#formCheck").validationEngine(
           	 'attach', {
              	  promptPosition: "topLeft"//エラーメッセージ位置の指定
           	 });
   	 });
	</script>
</head>


<body>
	<div class="wrapper">
		<!--ヘッダー-->
		<header class="header">
			<h1 class="logo"><a href="/UserLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
		</header>

		<main>
		 <div class="area" >
			<!--メイン-->
			<div class="s-new-form">
			<form method="POST" action="/UserLike/StudentLoginServlet">
			<h4>新規登録</h4>
				<p>ユーザーID</p>
				<input type="text" name="s_id" class="s-new-input">
​
				<p>パスワード</p>
				<input type="password" name="s_pw" class="s-new-input">
​
				<p>パスワード(再入力)</p>
				<input type="password" name="s_pw2" class="s-new-input">
​
				<p>名前</p>
				<input type="text" name="s_name" class="s-new-input">
​
				<p>メール</p>
				<input type="text" name="s_mail" class="s-new-input">
​
				<p>性別</p>
				<div>
				  <input type="radio" id="man" name="gender" checked>
				  <label for="man">男</label>
				</div>
				<div>
				  <input type="radio" id="woman" name="gender">
				  <label for="woman">女</label>
				</div><br>


				<p>クラス名</p>
				<div>
				  <input type="radio" id="a" name="c_name" checked>
				  <label for="a">a</label>
				</div>
				<div>
				  <input type="radio" id="b" name="c_name">
				  <label for="b">b</label>
				</div>
				<div>
				  <input type="radio" id="c" name="c_name">
				  <label for="c">c</label>
				</div>
				<div>
				  <input type="radio" id="d" name="c_name">
				  <label for="d">d</label>
				</div>
				<div>
				  <input type="radio" id="e" name="c_name">
				  <label for="e">e</label>
				</div><br>
​
​
				<p>プログラミング経験</p>
				<div>
				  <input type="radio" id="yes" name="exp">
				  <label for="yes">あり</label>
				</div>
				<div>
				  <input type="radio" id="no" name="exp" checked>
				  <label for="no">なし</label>
				</div><br>
​
​
				<p>出身学部</p>
				<input type="text" name="college" class="s-new-input">
​
				<p>出身地</p>
				<input type="text" name="b_place" class="s-new-input">
​
				<p>趣味</p>
				<input type="text" name="hobby" class="s-new-input">
​
				<p>特技</p>
				<input type="text" name="skill" class="s-new-input">
​
				<p>好きな音楽</p>
				<input type="text" name="music" class="s-new-input">
​
				<p>バイト経験</p>
				<input type="text" name="job" class="s-new-input">
​
				<p>課外活動経験</p>
				<input type="text" name="activity" class="s-new-input">
​
				<p>自己PR</p>
				<input type="text" name="pr" class="s-new-input">
​
				<button class="s-new-btn">登録</button>
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
</body>
</html>
