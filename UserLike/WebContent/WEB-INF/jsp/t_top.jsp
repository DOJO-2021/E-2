<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="refresh" content="6; URL=">
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
<div class="container" style="overflow:auto">
	<!--ヘッダー-->
	<header class="header">
		<jsp:include page="t_header.jsp" />
	</header>

		<main>
			<!--メイン-->
			<div class="chart-container" style="position: relative; height:40vh; width:80vw; max-width: 700px; margin-right:auto; margin-left:auto">

			<canvas id="myChart"></canvas>
			    <a class="react-result" id="Funny"><span v-if="0 != ${reactionList[0].count}"><img src="img/button/Funny.png" class="logo_image">${reactionList[0].count}</span>
			    <span v-else></span></a>
				<a class="react-result" id="Clap"><span v-if="0 != ${reactionList[1].count}"><img src="img/button/Clap.png" class="logo_image">${reactionList[1].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Help"><span v-if="0 != ${reactionList[2].count}"><img src="img/button/Help.png" class="logo_image">${reactionList[2].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Thanks"><span v-if="0 != ${reactionList[3].count}"><img src="img/button/Thanks.png" class="logo_image">${reactionList[3].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Goodmorning"><span v-if="0 != ${reactionList[4].count}"><img src="img/button/Goodmorning.png" class="logo_image">${reactionList[4].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Greetings"><span v-if="0 != ${reactionList[5].count}"><img src="img/button/Greetings.png" class="logo_image">${reactionList[5].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Finally"><span v-if="0 != ${reactionList[6].count}"><img src="img/button/Finally.png" class="logo_image">${reactionList[6].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Group"><span v-if="0 != ${reactionList[7].count}"><img src="img/button/Group.png" class="logo_image">${reactionList[7].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Session"><span v-if="0 != ${reactionList[8].count}"><img src="img/button/Session.png" class="logo_image">${reactionList[8].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Wait"><span v-if="0 != ${reactionList[9].count}"><img src="img/button/Stop.png" class="logo_image">${reactionList[9].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="TooQuick"><span v-if="0 != ${reactionList[10].count}"><img src="img/button/TooQuick.png" class="logo_image">${reactionList[10].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="AhHa"><span v-if="0 != ${reactionList[11].count}"><img src="img/button/AhHa.png" class="logo_image">${reactionList[11].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Onemore"><span v-if="0 != ${reactionList[12].count}"><img src="img/button/Onemore.png" class="logo_image">${reactionList[12].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Great"><span v-if="0 != ${reactionList[13].count}"><img src="img/button/Great.png" class="logo_image">${reactionList[13].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Share"><span v-if="0 != ${reactionList[14].count}"><img src="img/button/Share.png" class="logo_image">${reactionList[14].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Suggestion"><span v-if="0 != ${reactionList[15].count}"><img src="img/button/Suggestion.png" class="logo_image">${reactionList[15].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Eiken"><span v-if="0 != ${reactionList[16].count}"><img src="img/button/Eiken.png" class="logo_image">${reactionList[16].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Finished"><span v-if="0 != ${reactionList[17].count}"><img src="img/button/Finished.png" class="logo_image">${reactionList[17].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Question"><span v-if="0 != ${reactionList[18].count}"><img src="img/button/Question.png" class="logo_image">${reactionList[18].count}</span>
				<span v-else></span></a>
				<a class="react-result" id="Write"><span v-if="0 != ${reactionList[19].count}"><img src="img/button/Write.png" class="logo_image">${reactionList[19].count}</span>
				<span v-else></span></a>

			<form action="/UserLike/TeacherTopServlet" method="post">
				<div style="text-align:right">
				<input type="submit" class="filelabel" value="リセット">
				</div>
			</form>

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
