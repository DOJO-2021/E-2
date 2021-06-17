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
        <p class="edit">プロフィール編集</p>

	    <div class="prf_edit_class">
	 	<c:forEach var="e" items="${prfList}">

	 	<form method="POST" action="/UserLike/StudentEditServlet">
	 	<!-- 保存ボタン -->
				<div class="save-button">
					<button type="submit" class="save" title="編集内容を保存する">保存</button>
				</div>


			<p class="edit-basic">基本プロフィール</p>
			<table class="edit_table">
		          <tr>
						<th><label class="prf_edit_title">名前</label></th>
						<td><p><input type="text" name="S_NAME" value="${e.s_name}" class="s-form-texte" /></p></td>
		          </tr>

				  <tr>
					<th><label class="prf_edit_title">性別</label></th>
					<c:if test="${e.gender == 'M'}">
						<td><input type="radio" id="man" name="GENDER" checked="checked" value="男性" class="s-form-text" /><label class="radio02" for="man">男</label>
						<input type="radio" name="GENDER" id="woman" value="女性" class="s-form-text" /><label class="radio02" for="woman">女</label></td>
					</c:if>
					<c:if test="${e.gender != 'M'}">
						<td><input type="radio" id="man" name="GENDER" checked="checked" value="男性" class="s-form-text" /><label class="radio02" for="man">男</label>
						<input type="radio" name="GENDER" id="woman" checked="checked" value="女性" class="s-form-text" /><label class="radio02" for="woman">女</label></td>
					</c:if>
		          </tr>

				  <tr>
					<th><label class="prf_edit_title">クラス</label></th>
					<c:if test="${e.c_name == 'A'}">
						<td><input type="radio" id="c1" name="C_NAME" checked="checked" value="A" class="radio02" /><label class="radio02" for="c1">A</label>
						<input type="radio" id="c2" name="C_NAME" value="B" class="radio02" /><label class="radio02" for="c2">B</label>
						<input type="radio" id="c3" name="C_NAME" value="C" class="radio02" /><label class="radio02" for="c3">C</label>
						<input type="radio" id="c4" name="C_NAME" value="D" class="radio02" /><label class="radio02" for="c4">D</label>
						<input type="radio" id="c1" name="C_NAME" value="E" class="radio02" /><label class="radio02" for="c5">E</label></td>
					</c:if>

					<c:if test="${e.c_name == 'B'}">
						<td><input type="radio" id="c1" name="C_NAME" value="A" class="radio02" /><label class="radio02" for="c1">A</label>
						<input type="radio" id="c2" name="C_NAME" checked="checked" value="B" class="radio02" /><label class="radio02" for="c2">B</label>
						<input type="radio" id="c3" name="C_NAME" value="C" class="radio02" /><label class="radio02" for="c3">C</label>
						<input type="radio" id="c4" name="C_NAME" value="D" class="radio02" /><label class="radio02" for="c4">D</label>
						<input type="radio" id="c1" name="C_NAME" value="E" class="radio02" /><label class="radio02" for="c5">E</label></td>
					</c:if>

					<c:if test="${e.c_name == 'C'}">
						<td><input type="radio" id="c1" name="C_NAME" value="A" class="radio02" /><label class="radio02" for="c1">A</label>
						<input type="radio" id="c2" name="C_NAME" value="B" class="radio02" /><label class="radio02" for="c2">B</label>
						<input type="radio" id="c3" name="C_NAME" checked="checked" value="C" class="radio02" /><label class="radio02" for="c3">C</label>
						<input type="radio" id="c4" name="C_NAME" value="D" class="radio02" /><label class="radio02" for="c4">D</label>
						<input type="radio" id="c1" name="C_NAME" value="E" class="radio02" /><label class="radio02" for="c5">E</label></td>
					</c:if>

					<c:if test="${e.c_name == 'D'}">
						<td><input type="radio" id="c1" name="C_NAME" value="A" class="radio02" /><label class="radio02" for="c1">A</label>
						<input type="radio" id="c2" name="C_NAME" class="radio02" /><label class="radio02" for="c2">B</label>
						<input type="radio" id="c3" name="C_NAME" value="C" class="radio02" /><label class="radio02" for="c3">C</label>
						<input type="radio" id="c4" name="C_NAME" checked="checked" value="D" class="radio02" /><label class="radio02" for="c4">D</label>
						<input type="radio" id="c1" name="C_NAME" value="E" class="radio02" /><label class="radio02" for="c5">E</label></td>
					</c:if>

					<c:if test="${e.c_name == 'E'}">
						<td><input type="radio" id="c1" name="C_NAME" value="A" class="radio02" /><label class="radio02" for="c1">A</label>
						<input type="radio" id="c2" name="C_NAME" value="B" class="radio02" /><label class="radio02" for="c2">B</label>
						<input type="radio" id="c3" name="C_NAME" value="C" class="radio02" /><label class="radio02" for="c3">C</label>
						<input type="radio" id="c4" name="C_NAME" value="D" class="radio02" /><label class="radio02" for="c4">D</label>
						<input type="radio" id="c1" name="C_NAME" checked="checked" value="E" class="radio02" /><label class="radio02" for="c5">E</label></td>
					</c:if>

		          <tr>
						<th><label class="prf_edit_title">Email</label></th>
						<td><p><input type="text" name="S_MAIL" value="${e.s_mail}" class="s-form-texte" /></p></td>
				  </tr>

		          <tr>
					<th><label class="prf_edit_title">プログラミング経験</label></th>
					<c:if test="${e.exp == 'Y'}">
						<td><input type="radio" id="yes" name="EXP" checked="checked" value="Y" class="radio2" /><label class="radio02" for="yes">あり</label>
						<input type="radio" name="EXP" id="no" value="N" class="radio02" /><label class="radio02" for="no">なし</label></td>
					</c:if>
					<c:if test="${e.exp != 'Y'}">
						<td><input type="radio" id="yes" name="EXP" value="Y" class="radio02" /><label class="radio02" for="no">あり</label>
						<input type="radio" name="EXP" id="no" value="N" checked="checked" class="radio2" /><label class="radio02" for="no">なし</label></td>
					</c:if>
		          </tr>

		          <tr>
						<th><label class="prf_edit_title">出身学部</label></th>
						<td><p><input type="text" name="COLLEGE" value="${e.college}" class="s-form-texte" /></p></td>
		          </tr>
		          <tr>
						<th><label class="prf_edit_title">出身地</label></th>
						<td><p><input type="text" name="B_PLACE" value="${e.b_place}" class="s-form-texte" /></p></td>
				  </tr>
		        </table>
		        <br>

				<div id="HOBBY">
					<label class="prf_edit_titles">趣味</label>
					<p><input type="text" name="HOBBY" value="${e.hobby}" class="s-form-text" /></p>
				</div>
				<br>

				<div id="SKILL">
					<label class="prf_edit_titles">特技</label>
					<p><input type="text" name="SKILL" value="${e.skill}" class="s-form-text" /></p>
				</div>
				<br>

				<div id="MUSIC">
					<label class="prf_edit_titles">好きな音楽</label>
					<p><input type="text" name="MUSIC" value="${e.music}" class="s-form-text" /></p>
				</div>
				<br>

				<div id="JOB">
					<label class="prf_edit_titles">バイト経験</label>
					<p><input type="text" name="B_PLACE" value="${e.b_place}" class="s-form-text" /></p>
				</div>
				<br>

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

			</form>
			</c:forEach>
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
