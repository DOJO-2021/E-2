<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | プロフィール編集</title>
	<link rel="icon"  href="/UserLike/img/favicon.ico" ><!--ファビコン-->
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/student.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->

	<link rel="stylesheet" href="css/animsition.min.css"><!--CSS読み込み / ページフェード切り替えCSS-->
	<script src="js/animsition.min.js"></script><!-- jQuery読み込み / ページフェード切り替え -->
	<script type="text/javascript"><!-- jquery / ページフェード -->
	$(document).ready(function() {
		jQuery(".animsition").animsition();
	});
	</script>
</head>


<body>
<div class="wrapper">
<div class="container">
	<!--ヘッダー-->
	<header class="header">
		<jsp:include page="s_header.jsp" />
	</header>

		<main>
			<!--メイン-->
			<h2>プロフィール編集</h2>
			<form method="POST" action="/UserLike/StudentEditServlet">
				<input type="text"  name="S_NAME" value="${s_name}">

				<div class="cp_iptxt">
				<label class="item_title">性別</label>
				<input type="text"  name="GENDER" value="${gender}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">クラス</label>
				<input type="text"  name="C_NAME" value="${c_name}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">Email</label>
				<input type="email"  name="S_MAIL" value="${s_mail}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">プログラミング経験なし</label>
				<input type="text"  name="EXP" value="${exp}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">出身学部</label>
				<input type="text"  name="COLLEGE" value="${college}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">出身地</label>
				<input type="text"  name="B_PLACE" value="${b_place}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">趣味</label>
				<input type="text"  name="HOBBY" value="${hobby}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">特技</label>
				<input type="text"  name="SKILL" value="${skill}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">好きな音楽</label>
				<input type="text"  name="MUSIC" value="${music}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">バイト経験</label>
				<input type="text"  name="JOB" value="${job}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">課外活動経験</label>
				<input type="text"  name="ACTIVITY" value="${gender}">
				</div>
​
				<div class="cp_iptxt">
				<label class="item_title">自己PR</label>
				<input type="text"  name="PR" value="${pr}">
				</div>
​
				<!-- 保存ボタン -->
				<div class="button">
					<input type="submit" name="submit" value="保存">
				</div>
			</form>
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
