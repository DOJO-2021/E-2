<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | 受講者一覧</title>
	<link rel="icon"  href="/UserLike/img/favicon.ico" ><!--ファビコン-->
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/teacher.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
</head>


<body>
	<div class="wrapper">
			<!--ヘッダー-->
			<header class="header">
				<jsp:include page="t_header.jsp" />
			</header>


		<main>
			<!--メイン-->


			<h2>受講者一覧</h2>

			<table>

				<thead>
					<!--テーブル名-->
				    <tr id="heading">
				      <th>クラス名</th><th>受講者名</th><th>性別</th><th>プログラミング経験</th><th>理解度</th>
				    </tr>
		    	</thead>

		    	<tbody>
			    	<!-- 一覧表示のテーブル入力ループ -->
			    	<c:forEach var="e" items="${cardList}"><!--テーブルの中身-->
				    	<tr class="data_row">
				    	<td></td><td></td><td></td><td></td><td></td>
					    </tr>
					</c:forEach>
				</tbody>

			</table>

			<form method="POST" action="TeacherPrfServlet" id="form" style="width:90%"><!-- 選択したデータを編集できるようにする -->
				<input type="hidden" name="id">
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
