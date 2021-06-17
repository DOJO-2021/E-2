<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | プロフィール</title>
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
<div class="wrapper animsition">
<div class="container">
	<!--ヘッダー-->
	<header class="header">
		<jsp:include page="s_header.jsp" />
	</header>

	<main>
		<!--メイン-->
		<!-- 受講者自身のプロフィールを確認できる画面 -->
        <div class="s-prf-area">
		<input type="radio" name="tab_name" id="tab1" checked>
        <label class="tab_class" for="tab1">プロフィール</label>
	    <div class="content_class">
	 	<c:forEach var="e" items="${prfList}">

       	<!-- 編集ボタン -->
		<form class="edit" method="GET" action="/UserLike/StudentEditServlet">
           <div class="edit-button">
			<input type="submit" name="submit" value="プロフィール編集">
		</div>
		</form>

        <div class="prf-matome">
		<!-- 写真 -->
		<div class="prf-imag">
			<a><img style="height:100px" src="img/icon/noimage.png" ></a>
		</div>

		<div class="prf-matome-right">
        	<p class="basic">基本プロフィール</p>

	        <table class="basics">
				<tr>
					<th><label class="item_title">名前</label></th>
					<td><p>${e.s_name}</p></td>
				</tr>
				<tr>
					<th><label class="item_title">性別</label></th>
					<td><p>${e.genderString}</p></td>
				</tr>
				<tr>
					<th><label class="item_title">クラス</label></th>
					<td><p>${e.c_name}クラス</p></td>
				</tr>
				<tr>
					<th><label class="item_title">Email</label></th>
					<td><p>${e.s_mail}</p></td>
				</tr>
				<tr>
					<th><label class="item_title">プログラミング経験</label></th>
					<td><p>${e.expString}</p></td>
				</tr>
				<tr>
					<th><label class="item_title">出身学部</label></th>
					<td><p>${e.college}</p></td>
				</tr>

				<tr>
					<th><label class="item_title">出身地</label></th>
					<td><p>${e.b_place}</p></td>
				</tr>
	        </table>
        	<br>

			<div id="HOBBY">
				<label class="item_titles">趣味</label>
				<p>${e.hobby}</p>
			</div>
			<br>

			<div id="SKILL">
				<label class="item_titles">特技</label>
				<p>${e.skill}</p>
			</div>
			<br>

			<div id="MUSIC">
				<label class="item_titles">好きな音楽</label>
				<p>${e.music}</p>
			</div>
			<br>

			<div id="JOB">
				<label class="item_titles">バイト経験</label>
				<p>${e.job}</p>
			</div>
			<br>

			<div id="ACTIVITY">
				<label class="item_titles">課外活動経験</label>
				<p>${e.activity}</p>
			</div>
            <br>

			<div id="PR">
				<label class="item_titles">自己PR</label>
				<p>${e.pr}</p>
			</div>
            <br>
        </div>
   		</div>
        </c:forEach>
        </div>

		<input type="radio" name="tab_name" id="tab2" >
    	<label class="tab_class" for="tab2">理解度情報</label>

	    <div class="content_class">
    	<c:forEach var="e" items="${prfList}">
		    <p>わかった：${e.know}</p>
		    <p>わからない：${e.unknow}</p>
	    </c:forEach>
	    </div>
	    </div>
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
