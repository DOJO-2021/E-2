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
	<script src="js/jquery.validationEngine.js"></script><!-- jQuery読み込み / 入力チェック -->
	<script src="js/jquery.validationEngine-ja.js"></script><!-- jQuery読み込み / 入力チェック -->
	<link rel="stylesheet" href="css/validationEngine.css"><!--CSS読み込み / 入力チェック用CSS-->

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
		<div class="container">
		<!--ヘッダー-->
		<header class="header">
			<h1 class="logo"><a href="/UserLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
		</header>

		<main>
		 <div class="area" >
			<!--メイン-->
			<div class="s-new-form" style="position: relative;
										    background: #fff;
										    border-radius:8px;   /*枠の丸み*/
										    padding:35px;
										    padding-top:30px;
										    width:500px;
										    margin:50px auto;
										    border:1px solid #b3d4fc;   /* 枠の線の細さと色*/
										    z-index: 2">
			<form id="formCheck" method="POST" action="/UserLike/StudentLoginServlet">
			<h4>新規登録</h4>

				<div class="cp_iptxt">
					<label>ユーザーID</label><br>
					<input type="text" name="s_id" class="s-new-input validate[required,maxSize[20]]" placeholder="ID">
					<span class="focus_line"></span>
				</div>
​
				<div class="cp_iptxt">
					<label>パスワード(6文字以上)</label><br>
					<input type="password" name="s_pw" class="s-new-input validate[required,minSize[6]]" name="password" placeholder="password">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_iptxt">
					<label>パスワード(再入力)</label><br>
					<input  type="password" name="s_pw2" class="s-new-input validate[required,equals[password]]" placeholder="password">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_iptxt">
					<label>名前</label><br>
					<input  type="text" name="s_name" class="s-new-input validate[required,maxSize[100]]"  placeholder="矢沢 太郎">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_iptxt">
					<label>メールアドレス</label><br>
					<input type="text" name="s_mail" class="s-new-input validate[maxSize[30]]"  placeholder="sample@example.com">
					<span class="focus_line"></span>
				</div><br>

				<div>
					<p>性別</p>
					<input id=man checked="checked" name="gender" type="radio" value="M" /><label class="radio02" for="man">男</label>
					<input id=woman name="gender" type="radio" value="F" /><label class="radio02" for="woman">女</label><br>
				</div><br>

				<div>
					<p>クラス名</p>
					<input id=c1 checked="checked" name="c_name" type="radio" value="A" /><label class="radio02" for="c1">A</label>
					<input id=c2 name="c_name" type="radio" value="B" /><label class="radio02" for="c2">B</label>
					<input id=c3 name="c_name" type="radio" value="C" /><label class="radio02" for="c3">C</label>
					<input id=c4 name="c_name" type="radio" value="D" /><label class="radio02" for="c4">D</label>
					<input id=c5 name="c_name" type="radio" value="E" /><label class="radio02" for="c5">E</label>
				</div><br>

				<div>
					<p>プログラミング経験</p>
					<input id=yes name="exp" type="radio" value="Y" /><label class="radio02" for="yes">あり</label>
					<input id=no name="exp" type="radio" value="N" checked="checked" /><label class="radio02" for="no">なし</label>
				</div><br>

				<div class="cp_ip">
					<label>出身学部</label><br>
					<input  type="text" name="college" class="s-new-input validate[maxSize[10]]" placeholder="出身学部">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_ip">
					<label>出身地</label><br>
					<input  type="text" name="b_place" class="s-new-input validate[maxSize[10]]" placeholder="出身地">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_ip">
					<label>趣味</label><br>
					<input  type="text" name="hobby" class="s-new-input alidate[maxSize[100]]" placeholder="休日にするのが好きなことなど">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_ip">
					<label>特技</label><br>
					<input type="text" name="skill" class="s-new-input validate[maxSize[100]]" placeholder="仕事に関係ないことでもOK">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_ip">
					<label>好きな音楽</label><br>
					<input  type="text" name="music" class="s-new-input validate[maxSize[100]]" placeholder="ジャンル、歌手名など">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_ip">
					<label>バイト経験</label><br>
					<input  type="text" name="job" class="s-new-input validate[maxSize[100]]"  placeholder="業界や職種など">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_ip">
					<label>課外活動経験</label><br>
					<input  type="text" name="activity" class="s-new-input validate[maxSize[100]]" placeholder="サークル、部活動など">
					<span class="focus_line"></span>
				</div><br>

				<div class="cp_ip">
					<label>自己PR</label><br>
					<input type="text" name="pr" class="s-new-input validate[maxSize[100]]" placeholder="得意なことや苦手なことなど">
					<span class="focus_line"></span>
				</div>
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
		</div >
		<script src="js/scroll.js"></script><!--トップに戻るボタン-->
		<div id="page_top"><a href="#"></a></div>
	</div>
</body>
</html>
