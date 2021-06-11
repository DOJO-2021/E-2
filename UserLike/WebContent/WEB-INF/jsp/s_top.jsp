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
	<link rel="stylesheet" href="css/student.css"><!--CSS読み込み-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css"><!--アイコン用フォント読み込み-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--jquery読み込み-->
	<!-- vue.js開発バージョン、便利なコンソールの警告が含まれています -->
	<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
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
                <div class="reaction_button">
					<!--大理解度ボタン-->
				<div class="knowns">
					<div class="know">
					<input type="image" src="img/button/Understood.png" alt="わかった" onclick="counter1()">

					</div>

					<div class="unknow">
					<input type="image" src="img/button/CantUnderstand.png" alt="わからない" onclick="counter2()">

					</div>
                </div>

				<form class="und_button" method="POST" action="/USerLike/StudentTopServlet">
					<p class="nun-know">わかった: <span id="understood">0</span></p>
					<p class="nun-unknow">わからない: <span id="cantunderstand">0</span></p>


					<!-- 送信ボタン -->
					<p class="send">
						<input type="submit" name="send" value="送信">
					</p>
				</form>

				<div id="app">
				  {{ message }}
				</div>

				<!--小反応ボタン-->
				<input type="image" class="reaction" src="img/button/Funny.png" alt="笑い">
				<input type="image" class="reaction" src="img/button/Clap.png" alt="拍手">
				<input type="image" class="reaction" src="img/button/Help!.png" alt="ヘルプ">
				<input type="image" class="reaction" src="img/button/Thanks.png" alt="ありがとうございます">
				<input type="image" class="reaction" src="img/button/Goodmorning.png" alt="おはようございます">
				<input type="image" class="reaction" src="img/button/Greetings.png" alt="おつかれさまです">
				<input type="image" class="reaction" src="img/button/Finally.png" alt="キター!!">
				<input type="image" class="reaction" src="img/button/Group.png" alt="グループ活動求む">
				<input type="image" class="reaction" src="img/button/Session.png" alt="セッション希望">
				<input type="image" class="reaction" src="img/button/Wait.png" alt="ちょっとまった">
				<input type="image" class="reaction" src="img/button/TooQuick.png" alt="ちょっと早い">
				<input type="image" class="reaction" src="img/button/AhHa.png" alt="なるほど">
				<input type="image" class="reaction" src="img/button/Onemore.png" alt="もう一度お願いします">
				<input type="image" class="reaction" src="img/button/Great.png" alt="最高です">
				<input type="image" class="reaction" src="img/button/Share.png" alt="共有してください">
				<input type="image" class="reaction" src="img/button/Suggestion.png" alt="提案があります">
				<input type="image" class="reaction" src="img/button/Eiken.png" alt="英検3級">
				<input type="image" class="reaction" src="img/button/Finished.png" alt="作業終わりました">
				<input type="image" class="reaction" src="img/button/Question.png" alt="質問があります">
			</div>
		</main>

		<footer class="footer"><!--フッター-->
			<jsp:include page="footer.jsp" />
		</footer>
		</div>

		<script><!--vueテスト-->
		var app = new Vue({
			  el: '#app',
			  data: {
			    message: 'Hello Vue!'
			  }
			})
		</script>

		<script type="text/javascript">
		var not = 0;
		function counter1(){
		not++;
		document.getElementById("understood").innerHTML = not;
		}
		var not = 0;
		function counter2(){
		not++;
		document.getElementById("cantunderstand").innerHTML = not;
		}
		</script>

		<script src="js/scroll.js"></script><!--トップに戻るボタン-->
		<div id="page_top"><a href="#"></a></div>
	</div>
</body>
</html>
