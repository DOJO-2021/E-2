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

 	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.25/r-2.2.9/datatables.min.css"/><!-- jqueryテーブルCSS読み込み -->
	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.25/r-2.2.9/datatables.min.js"></script><!-- jqueryテーブル読み込み -->
    <script>
        jQuery(function($){
        	$.extend( $.fn.dataTable.defaults, {
        		language: { url: "http://cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json" }
        	});
        	 $("#foo-table").DataTable()
        	 var dt = $('#foo-table').DataTable();
        	//hide the first column
        	dt.column(0).visible(false);
        });
    </script>
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
			<div>
		 	<table id="foo-table" class="table compact" style="width:95%">
		        <thead>
		            <tr>
			            <th>ID</th>
			            <th>クラス</th>
			            <th>氏名</th>
			            <th>性別</th>
			            <th>経験</th>
			            <th>理解度</th>
		            </tr>
		        </thead>

		        <tbody>
		        	<c:forEach var="e" items="${prfList}">
		            <tr>
			            <td>${e.s_id}</td>
			            <td>${e.c_name}</td>
			            <td>${e.s_name}</td>
			            <td>${e.gender}</td>
			            <td>${e.exp}</td>
			            <td>${e.know}</td>
		            </tr>
		            </c:forEach>
		        </tbody>
	    	</table>

			<form method="POST" action="TeacherPrfServlet" id="form" style="width:90%"><!-- 選択したデータを編集できるようにする -->
				<input type="hidden" name="id">
			</form>
			</div>
		</main>

		<footer class="footer"><!--フッター-->
			<jsp:include page="footer.jsp" />
		</footer>

		<script src="js/scroll.js"></script><!--トップに戻るボタン-->
		<div id="page_top"><a href="#"></a></div>
	</div>
</body>
</html>
