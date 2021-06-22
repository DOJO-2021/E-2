<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
	<!--情報-->
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ヤザワスイッチ</title>
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

	<script src="js/jquery.validationEngine.js"></script><!-- jQuery読み込み / 入力チェック -->
	<script src="js/jquery.validationEngine-ja.js"></script><!-- jQuery読み込み / 入力チェック -->
	<link rel="stylesheet" href="css/validationEngine.css"><!--CSS読み込み / 入力チェック用CSS-->
	<script type="text/javascript"><!-- jquery / 入力チェック -->
   	jQuery(function(){
     	 //<form>タグのidを指定
     	 jQuery("#formCheck").validationEngine(
         	 'attach', {
            	  promptPosition: "topRight"//エラーメッセージ位置の指定
         });
 	});
	</script>

	<link rel="stylesheet" href="css/jquery.bxslider.css"><!--スライダー用CSS読み込み-->
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script><!--スライダーjavascript読み込み-->
	<script type="text/javascript"><!--お気に入り表示用スライダー-->
	$(document).ready(function(){
		 $('.bxslider').bxSlider();
	});
	</script>
</head>


<body>
<div class="wrapper animsition">
<div class="container">
	<!--ヘッダー-->
	<header class="heditem">
	<div class="mainitem">
		<h1 class="logo"><a href="/USerLike/MainServlet"><img src="img/logo.png" class="logo_image"></a></h1>
		<!-- ヘッダー部分ナビゲーション -->
	    <nav class="navitem">
	    <ul>
	        <li><a href="#tmin">Home</a></li>
	        <li><a href="#abtyzw">about</a></li>
	        <li><a href="#conceptyzw">concept</a></li>
	        <li><a href="#contactyzw">contact</a></li>
	    </ul>
	    </nav>
    </div>
	</header>

		<main class="main">
        <!--メイン部分ナビゲーション 各ログイン画面へ遷移 -->
           <nav class="navnew">
             <ul>
                 <li><a href="/UserLike/TeacherLoginServlet" class="t-min" id=#tmin>講師の方はこちら</a></li>
                 <li><a href="/UserLike/StudentLoginServlet" class="s-min">受講生の方はこちら</a></li>
             </ul>
           </nav>
	       <!-- メインロゴ挿入 -->
	       <div class="fluffy">
	       <h3 class="mainlogo"><a href="/USerLike/MainServlet"><img src="img/5.png" class="mainlogo_image"></a></h3>
           </div>
           <div class="main-ys">
           <p class="main-y">YAZAWA</p>
           <p class="main-s">SWITCH</p>
           </div>


           <p class="abt-yzw" id="abtyzw">ABOUT</p>
           <p class="abt-yzw2">ヤザワスイッチってなに？？</p>
           <div class="maincircle-3"></div>
           <p class="abt-yzw4">特徴その１！</p>
           <p class="abt-yzw5">オンラインでもリアルタイムで<br>
           理解できたかどうか等の反応ができる！<br></p>

         <div class="yzw-rea-matome">
         <div class="maincircle-1"></div>
           <img src="img/main1.png" class="main1-image">

           <br>
           <p class="abt-rea">オンライン研修を受ける中で、対面研修のように講師に何かしらの反応を送りたい！<br>
           そう思ったことがある方は多いのではないでしょうか？
           <br>
           ヤザワスイッチならスイッチ１つで「質問があります。」<br>
           「理解できませんでした。」「もう一度お願いします。」<br>
           などの反応を講師に送ることができます。
           </p>
         </div>


           <p class="abt-yzw6">その2！</p>
           <div class="maincircle-4"></div>
           <p class="abt-yzw7">講師は反応を見て<br>
           研修内容を考えることができる！</p>


           <div class="yzw-trea-matome">
           <p class="abt-trea">対面研修では受講者の反応がわかりづらく、本当に理解できているのか心配になる…<br>
           ヤザワスイッチはそんなお悩みも軽減できます。<br>
           <br>
           受講者からリアルタイムで送られた反応をスイッチ別にグラフ化！<br>
           グラフを参考に理解できていないところを再度次の講義で説明するなど、<br>
           受講者に合わせて講義を考えることができます。</p>
           <img src="img/main2.png" class="main2-image">
            <div class="maincircle-2"></div>
         </div>


         <div class="maincircle-3"></div>
         <p class="abt-yzw4">その３！</p>
         <p class="abt-yzw5">受講者のプロフィールが閲覧できるから、<br>
         コミュニケーションをとるきっかけづくりになる！</p>


           <div class="maincircle-1"></div>
           <div class="yzw-prea-matome">
           <img src="img/main3.png" class="main3-image">

           <p class="abt-prea">
           対面のように直接話す機会をなかなかとることができないオンライン研修。<br>
           受講者のプロフィールを確認することができ、受講者の特徴をつかみやすい他、<br>
           話すきっかけになり、よりコミュニケーションがとりやすくなります。</p>
         </div>

		<!--コンテンツ03-->
		<div class="mainarea2">
           <p class="cct-yzw" id="conceptyzw">CONCEPT</p>
           <p class="cct-yzw2">コンセプト</p>

			<div class="bxslider">

				<div class="slider-content"><img src="img/main_tap.png" class="slider-image"><br><h2>テーマはOnlineFun！</h2>
				オンラインでも、講師・受講生の双方が楽しく研修をに取り組むことのできるシステム！</div>
				<div class="slider-content"><img src="img/main_button.png" class="slider-image"><br><h2>受講者</h2>
				講師に自分の思っていることが簡単に楽しく伝えられる！</div>
				<div class="slider-content"><img src="img/main_teacher.png" class="slider-image"><br><h2>講師</h2>
				受講者のリアクションがたくさんあると楽しく、いろんな情報を提供したくなる！</div>
				<div class="slider-content"><img src="img/button/Eiken.png" class="slider-image"><br><h2>師匠</h2>
				研修中いつも笑顔でプログラミングの楽しさを伝えてくださった矢澤講師をイメージしてこのシステムは作られました。</div>
				<div class="slider-content"><img src="img/button/Great2.png" class="slider-image"><br><h2>イメージカラー</h2>
				矢澤講師のパッションや優しさをイメージしてオレンジのカラーを取り入れました。</div>
				<div class="slider-content"><img src="img/button/Session2.png" class="slider-image"><br><h2>カラーテーマ</h2>
				楽しくポップな雰囲気にしたいということでカラーテーマはオレンジと水色にしました。</div>
				<div class="slider-content"><img src="img/logo2.png" class="slider-image"><br><h2>タイトル</h2>
				音のなる様々なボタンから着想を得て、「ヤザワスイッチ」という名前になりました。</div>

			</div>
		</div>

             <p class="cct-yzw" id="contactyzw">CONTACT</p>
           <p class="cct-yzw2">お問い合わせ</p>



          <div class="cct-form">
            <form id="formCheck"  method="post" action="#">

            <div class="cct-matome">
             <label class="yzw-name cp_iptxt">お名前</label><sup>※必須</sup><br>
               <input class="cct validate[required]" type="text" name="cct-name"><br>

             <label class="yzw-cpn cp_iptxt">貴社名</label><sup>※必須</sup><br>
               <input class="cct validate[required]" type="text" name="cct-cpn"><br>

             <label class="yzw-emal cp_iptxt">メールアドレス</label><sup>※必須</sup><br>
               <input class="cct validate[required]" type="text" name="cct-emal"><br>

             <label class="yzw-tel">お電話番号</label><br>
               <input class="cct " type="text" name="cct-tel"><br>

           </div>

             <div class="yzw-taa">
               <label class="yzw-cts">ご要望・ご質問</label><br>
               <textarea rows="20" cols="30" class="textarea1">ご要望やご質問などがあればこちらにご記入ください。</textarea><br>
             </div>
              <button class="yzw-confi">確認画面へ</button>
            </form>
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