<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | ${result.title}</title>
	<link rel="icon"  href="/UserLike/img/favicon.ico" ><!--ファビコン-->
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
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
		<h1 class="logo"><a href="${result.backTo}"><img src="img/logo.png" class="logo_image"></a></h1>
	</header>


		<main class="r_main">
			<!--メイン-->
			<h2 class="r_title"><c:out value="${result.title}" /></h2>
			<div class=result>
				<p><c:out value="${result.message}" /></p>
			</div>

			<div class="r-log-back">
				<a href="${result.backTo}"><img style="vertical-align:middle;height:18px;padding-bottom:2px" src="img/back.png" >戻る</a>
			</div>
		</main>

		<footer class="footer"><!--フッター-->
			<jsp:include page="footer.jsp" />
		</footer>

		</div>
		<script src="js/scroll.js"></script><!--トップに戻るボタン-->
		<div id="page_top"><a href="#"></a></div>
		</div>
</body>
</html>
