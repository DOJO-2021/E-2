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
	<link rel="stylesheet" href="css/student.css"><!--CSS読み込み-->
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
			<h1>受講者用新規登録</h1><hr>
			<form method="POST" action="/UserLike/StudentNewServlet">
			<div class="cp_iptxt">
				<label>ID</label><br>
				<input class="ef" type="text" name="S_ID" placeholder="ID">
				<span class="focus_line"></span>
			</div>
			<div class="cp_iptxt">
				<label>パスワード</label><br>
				<input class="ef" type="text" name="S_PW" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_iptxt">
				<label>パスワード(再入力)</label><br>
				<input class="ef" type="text" name ="" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_iptxt">
				<label>名前</label><br>
				<input class="ef" type="text" name="S_NAME" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_iptxt">
				<label> 画像</label><br>
				<input class="ef" type="text" name="ICON" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_iptxt">
				<label>メールアドレス</label><br>
				<input class="ef" type="text" name="S_MAIL" placeholder="">
				<span class="focus_line"></span>
			</div>
			<table class="info">
			  <tr>
			    <th>性別</th>
			    <td>
			      <input type="radio" name="GENDER" value="man" checked>男
			      <input type="radio" name="GENDER" value="woman">女
			    </td>
			  </tr>
			  <tr>
			    <th>クラス名</th>
			    <td>
			      <input type="radio" name="C_NAME" value="a" checked>A
			      <input type="radio" name="C_NAME" value="b">B
			      <input type="radio" name="C_NAME" value="c">C
			      <input type="radio" name="C_NAME" value="d">D
			      <input type="radio" name="C_NAME" value="e">E
			    </td>
			  </tr>
			  <tr>
			    <th>プログラミング経験</th>
			    <td>
			      <input type="radio" name="EXP" value="yes" checked>あり
			      <input type="radio" name="EXP" value="no">なし
			    </td>
			  </tr>
			</table>
			<div class="cp_ip">
				<label>出身学部</label><br>
				<input class="ef" type="text" name="COLLEGE" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_ip">
				<label>出身地</label><br>
				<input class="ef" type="text" name="B_PLACE" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_ip">
				<label>趣味</label><br>
				<input class="ef" type="text" name="HOBBY" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_ip">
				<label>特技</label><br>
				<input class="ef" type="text" name="SKILL" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_ip">
				<label>好きな音楽</label><br>
				<input class="ef" type="text" name="MUSIC" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_ip">
				<label>バイト経験</label><br>
				<input class="ef" type="text" name="JOB" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_ip">
				<label>課外活動経験</label><br>
				<input class="ef" type="text" name="ACTIVITY" placeholder="">
				<span class="focus_line"></span>
			</div>
			<div class="cp_ip">
				<label>自己PR</label><br>
				<input class="ef" type="text" name="PR" placeholder="">
				<span class="focus_line"></span>
			</div>
			<input type="submit" name="REGIST" value="登録">
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
