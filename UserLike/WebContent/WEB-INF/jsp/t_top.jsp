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
</head>


<body>
	<div class="wrapper">
		<!--ヘッダー-->
		<header class="header">
			<jsp:include page="t_header.jsp" />
		</header>

		<main>
			<!--メイン-->
			<h2>リアクション状況</h2>
		<div class="chart-container" style="position: relative; height:40vh; width:80vw">
		    <canvas id="myChart"></canvas>
		</div>

		</main>

		<footer class="footer"><!--フッター-->
			<jsp:include page="footer.jsp" />
		</footer>

		<script src="js/scroll.js"></script><!--トップに戻るボタン-->
		<div id="page_top"><a href="#"></a></div>
	</div>
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
	            data: [0, 10, 5, 2, 20, 30, 45, 67, 39],
	        },
	        {
	            label: "わからない",
	            backgroundColor: 'rgb(179, 212, 252)',
	            borderColor: 'rgb(179, 212, 252)',
	            data: [15, 24, 62, 21, 37, 48, 20, 14, 8],
	        }]
	    },

	    // ここに設定オプションを書きます
	    options: {}
	});
	</script>
</body>
</html>
