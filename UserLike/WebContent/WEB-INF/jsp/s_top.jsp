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
<div class="wrapper animsition">
<div class="container">
	<!--ヘッダー-->
	<header class="header">
		<jsp:include page="s_header.jsp" />
	</header>

		<main>
			<!--メイン-->
            <div class="reaction_button">
				<!--大理解度ボタン-->
				<table class="understand" style=" margin-left:auto;margin-right:auto"><tr><td>
				<form class="und_button" method="POST" action="/UserLike/StudentTopServlet" target="f1">
					<div class="know">
						<input type="hidden" name="SUBMIT" value="know">
						<input type="image" src="img/button/Understood.png" alt="わかった" class="imgknow">
					</div>
				</form>
				</td>

				<td>
				<form class="und_button" method="POST" action="/UserLike/StudentTopServlet" target="f1">
					<div class="unknow">
						<input type="hidden" name="SUBMIT" value="unknow">
						<input type="image" src="img/button/CantUnderstand.png" alt="わからない" class="imgunknow">
					</div>
				</form>
                </td></tr></table>

				<!--小反応ボタン-->
				<form class="und_button" method="POST" action="/UserLike/StudentTopServlet" target="f1">
					<button type="submit" class="react" name="react" value="1" onclick="sound1()">
					<img src="img/button2/Funny2.png" alt="笑い" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="2" onclick="sound2()">
					<img src="img/button2/Clap2.png" alt="拍手" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="3" onclick="sound3()">
					<img src="img/button2/Help!2.png" alt="ヘルプ" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="4" onclick="sound4()">
					<img src="img/button2/Thanks2.png" alt="ありがとうございます" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="5" onclick="sound5()">
					<img src="img/button2/Goodmorning2.png" alt="おはようございます" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="6" onclick="sound6()">
					<img src="img/button2/Greetings2.png" alt="おつかれさまです" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="7" onclick="sound7()">
					<img src="img/button2/Finally2.png" alt="キター!!" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="8" onclick="sound8()">
					<img src="img/button2/Group2.png" alt="ク゛ルーフ゜活動求む" class="reaction">
					</button>
					<button type="submit" class="react" name="react" value="9" onclick="sound9()">
					<img src="img/button2/Session2.png" alt="セッション希望" class="reaction">
					</button>
					<button type="submit" class="react" name="react" value="10" onclick="sound10()">
					<img src="img/button2/Stop2.png" alt="ちょっとまった" class="reaction">
					</button>
					<button type="submit" class="react" name="react" value="11" onclick="sound11()">
					<img src="img/button2/TooQuick2.png" alt="ちょっと早い" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="12" onclick="sound12()">
					<img src="img/button2/AhHa2.png" alt="なるほど" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="13" onclick="sound13()">
					<img src="img/button2/Onemore2.png" alt="もう一度お願いします" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="14" onclick="sound14()">
					<img src="img/button2/Great2.png" alt="最高です" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="15" onclick="sound15()">
					<img src="img/button2/Share2.png" alt="共有してください" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="16" onclick="sound16()">
					<img src="img/button2/Suggestion2.png" alt="提案があります" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="17" onclick="sound17()">
					<img src="img/button2/Eiken2.png" alt="英検3級" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="18" onclick="sound18()">
					<img src="img/button2/Finished2.png" alt="作業終わりました" class="reaction">
					</button>

					<button type="submit" class="react" name="react" value="19" onclick="sound19()">
					<img src="img/button2/Question2.png" alt="質問があります" class="reaction">
					</button>
				</form>
			</div>
		</main>

	<footer class="footer"><!--フッター-->
		<jsp:include page="footer.jsp" />
	</footer>

	<script src="js/scroll.js"></script><!--トップに戻るボタン-->
	<div id="page_top"><a href="#"></a></div>

	<script type="text/javascript">
		function sound1(){
		var audio = new Audio('sound/.mp3');
		audio.play();
		}
		function sound2(){
		var audio = new Audio('sound/Claps.mp3');
		audio.play();
		}
		function sound3(){
		var audio = new Audio('sound/Difficult.mp3');
		audio.play();
		}
		function sound4(){
		var audio = new Audio('sound/.mp3');
		audio.play();
		}
		function sound5(){
		var audio = new Audio('sound/GoodMorning.mp3');
		audio.play();
		}
		function sound6(){
		var audio = new Audio('sound/Greetings.mp3');
		audio.play();
		}
		function sound7(){
		var audio = new Audio('sound/.mp3');
		audio.play();
		}
		function sound8(){
		var audio = new Audio('sound/Breakout.mp3');
		audio.play();
		}
		function sound9(){
		var audio = new Audio('sound/Teachme.mp3');
		audio.play();
		}
		function sound10(){
		var audio = new Audio('sound/Wait.mp3');
		audio.play();
		}
		function sound11(){
		var audio = new Audio('sound/Toomuch.mp3');
		audio.play();
		}
		function sound12(){
		var audio = new Audio('sound/AhHa.mp3');
		audio.play();
		}
		function sound13(){
		var audio = new Audio('sound/Spell.mp3');
		audio.play();
		}
		function sound14(){
		var audio = new Audio('sound/Nice.mp3');
		audio.play();
		}
		function sound15(){
		var audio = new Audio('sound/.mp3');
		audio.play();
		}
		function sound16(){
		var audio = new Audio('sound/.mp3');
		audio.play();
		}
		function sound17(){
		var audio = new Audio('sound/Eiken.mp3');
		audio.play();
		}
		function sound18(){
		var audio = new Audio('sound/Great.mp3');
		audio.play();
		}
		function sound19(){
		var audio = new Audio('sound/What.mp3');
		audio.play();
		}
	</script>

	<iframe name="f1" width=0 height=0 style="visibility:hidden"></iframe>
</div>
</div>
</body>
</html>
