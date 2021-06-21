<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ | トップ</title>
	<link rel="icon"  href="/UserLike/img/favicon.ico" ><!--ファビコン-->
	<link rel="stylesheet" href="css/common.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="css/teacher.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script><!--グラフ機能読み込み-->

	<link rel="stylesheet" href="css/animsition.min.css"><!--CSS読み込み / ページフェード切り替えCSS-->
	<script src="js/animsition.min.js"></script><!-- jQuery読み込み / ページフェード切り替え -->
	<script type="text/javascript"><!-- jquery / ページフェード -->
	$(document).ready(function() {
		jQuery(".animsition").animsition();
	});
	</script>

	<!-- vue.js開発バージョン、便利なコンソールの警告が含まれています -->
	<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
</head>

<body>
<div class="wrapper animsition">
<div class="container">
	<!--ヘッダー-->
	<header class="header">
		<jsp:include page="t_header.jsp" />
	</header>

		<main>
			<!--メイン-->
			<div class="chart-container" style="position: relative; height:40vh; width:80vw; max-width: 700px; margin-right:auto; margin-left:auto">
			<canvas id="myChart"></canvas>
			    <a id="Funny"><span v-if="seen"><img src="img/button/Funny.png" class="logo_image"></span></a>
				<a id="Clap"><span v-if="seen"><img src="img/button/Clap.png" class="logo_image"></span></a>
				<a id="Help"><span v-if="seen"><img src="img/button/Help.png" class="logo_image"></span></a>
				<a id="Thanks"><span v-if="seen"><img src="img/button/Thanks.png" class="logo_image"></span></a>
				<a id="Goodmorning"><span v-if="seen"><img src="img/button/Goodmorning.png" class="logo_image"></span></a>
				<a id="Greetings"><span v-if="seen"><img src="img/button/Greetings.png" class="logo_image"></span></a>
				<a id="Finally"><span v-if="seen"><img src="img/button/Finally.png" class="logo_image"></span></a>
				<a id="Group"><span v-if="seen"><img src="img/button/Group.png" class="logo_image"></span></a>
				<a id="Session"><span v-if="seen"><img src="img/button/Session.png" class="logo_image"></span></a>
				<a id="Wait"><span v-if="seen"><img src="img/button/Wait.png" class="logo_image"></span></a>
				<a id="TooQuick"><span v-if="seen"><img src="img/button/TooQuick.png" class="logo_image"></span></a>
				<a id="AhHa"><span v-if="seen"><img src="img/button/AhHa.png" class="logo_image"></span></a>
				<a id="Onemore"><span v-if="seen"><img src="img/button/Onemore.png" class="logo_image"></span></a>
				<a id="Great"><span v-if="seen"><img src="img/button/Great.png" class="logo_image"></span></a>
				<a id="Share"><span v-if="seen"><img src="img/button/Share.png" class="logo_image"></span></a>
				<a id="Suggestion"><span v-if="seen"><img src="img/button/Suggestion.png" class="logo_image"></span></a>
				<a id="Eiken"><span v-if="seen"><img src="img/button/Eiken.png" class="logo_image"></span></a>
				<a id="Finished"><span v-if="seen"><img src="img/button/Finished.png" class="logo_image"></span></a>
				<a id="Question"><span v-if="seen"><img src="img/button/Question.png" class="logo_image"></span></a>
				<a id="Write"><span v-if="seen"><img src="img/button/Write.png" class="logo_image"></span></a>
			</div>
		</main>

	<footer class="footer"><!--フッター-->
		<jsp:include page="footer.jsp" />
	</footer>

	<script src="js/scroll.js"></script><!--トップに戻るボタン-->
	<div id="page_top"><a href="#"></a></div>

	<script src="js/vue.js"></script><!--vue設定-->
	<script>
	var ctx = document.getElementById('myChart').getContext('2d');
	var chart = new Chart(ctx, {
	    // 作成したいチャートのタイプ
	    type: 'bar',
	    // データセットのデータ
		data: {
	        labels: ["9時", "10時", "11時", "12時", "13時", "14時", "15時", "16時", "17時"],
	        datasets: [{
	            label: "わかった",
	            backgroundColor: 'rgb(255, 165, 0)',
	            borderColor: 'rgb(255, 165, 0)',
	            <c:forEach var="e" items="${knowList}">
	            data: [${e.know9}, ${e.know10}, ${e.know11}, ${e.know12}, ${e.know13}, ${e.know14}, ${e.know15}, ${e.know16}, ${e.know17}],
	            </c:forEach>
	        },
	        {
	            label: "わからない",
	            backgroundColor: 'rgb(179, 212, 252)',
	            borderColor: 'rgb(179, 212, 252)',
	            <c:forEach var="e" items="${knowList}">
	            data: [${e.unknow9}, ${e.unknow10}, ${e.unknow11}, ${e.unknow12}, ${e.unknow13}, ${e.unknow14}, ${e.unknow15}, ${e.unknow16}, ${e.unknow17}],
	            </c:forEach>
	        }]
	    },
	    // ここに設定オプションを書きます
	    options: {}
	});
	</script>
</div>
</div>
</body>
</html>
