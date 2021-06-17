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
<div class="wrapper animsition">
<div class="container">
	<!--ヘッダー-->
	<header class="header">
		<jsp:include page="s_header.jsp" />
	</header>

		<main>
		<!--メイン-->
		<!-- 受講者自身のプロフィールを確認できる画面 -->
        <div class="s-prf-edit_area">

        <label class="prf_edit">プロフィール</label>
	    <div class="prf_edit_class">
	 	<c:forEach var="e" items="${prfList}">

			<p class="edit">プロフィール編集</p>
			<form method="POST" action="/UserLike/StudentEditServlet">
			<table class="edit_table">
		          <tr>
						<th><label class="prf_edit_title">名前</label></th>
						<td><p><input type="text" name="S_NAME" value="${e.s_name}" class="s-form-text" /></p></td>
		          </tr>
		          <tr>
						<th><label class="prf_edit_title">性別</label></th>
						<td><p><input type="text" name="GENDER" value="${e.gender}" class="s-form-text" /></p></td>

		          </tr>
		          <tr>
						<th><label class="prf_edit_title">クラス</label></th>
						<td><p><input type="text" name="C_NAME" value="${e.c_name}" class="s-form-text" /></p></td>
		          </tr>
		          <tr>
						<th><label class="prf_edit_title">Email</label></th>
						<td><p><input type="text" name="S_MAIL" value="${e.s_mail}" class="s-form-text" /></p></td>
		          </tr>
		          <tr>
						<th><label class="prf_edit_title">プログラミング経験</label></th>
						<td><p><input type="text" name="EXP" value="${e.exp}" class="s-form-text" /></p></td>
		          </tr>
		          <tr>
						<th><label class="prf_edit_title">出身学部</label></th>
						<td><p><input type="text" name="COLLEGE" value="${e.college}" class="s-form-text" /></p></td>
		          </tr>
		          <tr>
						<th><label class="prf_edit_title">出身地</label></th>
						<td><p><input type="text" name="B_PLACE" value="${e.b_place}" class="s-form-text" /></p></td>
				  </tr>
		        </table>
		        <br>
		​
					<div id="HOBBY">
						<label class="prf_edit_titles">趣味</label>
						<p><input type="text" name="HOBBY" value="${e.hobby}" class="s-form-text" /></p>
					</div>
					<br>
		​
					<div id="SKILL">
						<label class="prf_edit_titles">特技</label>
						<p><input type="text" name="SKILL" value="${e.skill}" class="s-form-text" /></p>
					</div>
					<br>
		​
					<div id="MUSIC">
						<label class="prf_edit_titles">好きな音楽</label>
						<p><input type="text" name="MUSIC" value="${e.music}" class="s-form-text" /></p>
					</div>
					<br>
		​​
					<div id="JOB">
						<label class="prf_edit_titles">バイト経験</label>
						<p><input type="text" name="B_PLACE" value="${e.b_place}" class="s-form-text" /></p>
					</div>
					<br>
		​
					<div id="ACTIVITY">
						<label class="prf_edit_titles">課外活動経験</label>
						<p><input type="text" name="ACTIVITY" value="${e.activity}" class="s-form-text" /></p>
					</div>
		            <br>
					<div id="PR">
						<label class="prf_edit_titles">自己PR</label>
						<p><input type="text" name="PR" value="${e.pr}" class="s-form-text" /></p>
					</div>
		            <br>
		            ​
				<!-- 保存ボタン -->
				<div class="button">
					<input type="submit" name="SUBMIT" value="保存">
				</div>
			</form>
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
