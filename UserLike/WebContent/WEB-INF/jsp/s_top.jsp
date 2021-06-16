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
<div class="wrapper">
<div class="container">
	<!--ヘッダー-->
	<header class="header">
		<jsp:include page="s_header.jsp" />
	</header>

		<main>
			<!--メイン-->
			<h2>リアクション</h2>
                <div class="reaction_button">
				<!--大理解度ボタン-->
				<div class="knowns">
					<div class="know">
						<input type="image" src="img/button/Understood.png" alt="わかった" onclick="counter1()" class="imgknow">
					</div>
					<div class="unknow">
						<input type="image" src="img/button/CantUnderstand.png" alt="わからない" onclick="counter2()" class="imgunknow">
					</div>
                </div>

                <form class="und_button" method="POST" action="/UserLike/StudentTopServlet">
					<p class="nun-know">わかった: <object name="understood" id="understood">0</object></p>
					<p class="nun-unknow">わからない: <object name="cantunderstand" id="cantunderstand">0</object></p>

					<!-- 送信ボタン -->
					<p class="send">
						<input type="submit" name="send" value="送信">
					</p>
				</form>

				<!--小反応ボタン-->
				<input type="image" class="reaction" src="img/button2/Funny2.png" alt="笑い">
				<input type="image" class="reaction" src="img/button2/Clap2.png" alt="拍手">
				<input type="image" class="reaction" src="img/button2/Help!2.png" alt="ヘルプ">
				<input type="image" class="reaction" src="img/button2/Thanks2.png" alt="ありがとうございます">
				<input type="image" class="reaction" src="img/button2/Goodmorning2.png" alt="おはようございます">
				<input type="image" class="reaction" src="img/button2/Greetings2.png" alt="おつかれさまです">
				<input type="image" class="reaction" src="img/button2/Finally2.png" alt="キター!!">
				<input type="image" class="reaction" src="img/button2/Group2.png" alt="ク゛ルーフ゜活動求む">
				<input type="image" class="reaction" src="img/button2/Session2.png" alt="セッション希望">
				<input type="image" class="reaction" src="img/button2/Stop2.png" alt="ちょっとまった">
				<input type="image" class="reaction" src="img/button2/TooQuick2.png" alt="ちょっと早い">
				<input type="image" class="reaction" src="img/button2/AhHa2.png" alt="なるほど">
				<input type="image" class="reaction" src="img/button2/Onemore2.png" alt="もう一度お願いします">
				<input type="image" class="reaction" src="img/button2/Great2.png" alt="最高です">
				<input type="image" class="reaction" src="img/button2/Share2.png" alt="共有してください">
				<input type="image" class="reaction" src="img/button2/Suggestion2.png" alt="提案があります">
				<input type="image" class="reaction" src="img/button2/Eiken2.png" alt="英検3級">
				<input type="image" class="reaction" src="img/button2/Finished2.png" alt="作業終わりました">
				<input type="image" class="reaction" src="img/button2/Question2.png" alt="質問があります">
			</div>
		</main>

	<footer class="footer"><!--フッター-->
		<jsp:include page="footer.jsp" />
	</footer>

	<script type="text/javascript">
	var not = 0;
	function counter1(){
	not++;
	document.getElementById("understood").innerHTML = not;
	}
	var cnot = 0;
	function counter2(){
	cnot++;
	document.getElementById("cantunderstand").innerHTML = cnot;
	}
	</script>

	<script src="js/scroll.js"></script><!--トップに戻るボタン-->
	<div id="page_top"><a href="#"></a></div>
</div>
</div>
</body>
</html>
