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

	<link rel="stylesheet" href="css/animsition.min.css"><!--CSS読み込み / ページフェード切り替えCSS-->
	<script src="js/animsition.min.js"></script><!-- jQuery読み込み / ページフェード切り替え -->
	<script type="text/javascript"><!-- jquery / ページフェード -->
	$(document).ready(function() {
		jQuery(".animsition").animsition();
	});
	</script>

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
        	dt.column(0).visible(true);
        });
    </script>
</head>


<body>
<div class="wrapper animsition">
	<!--ヘッダー-->
	<header class="header">
		<jsp:include page="t_header.jsp" />
	</header>

		<main>
			<!--メイン-->
			<div>
		 	<table id="foo-table" class="table compact" style="width:95%;
		 	                                            border: solid 1px #808080;
		 	                                            overflow: hidden;
                                                        border-radius:10px;
                                                        border-spacing: 0;">
		        <thead>
		            <tr>
			            <th style="font-weight: normal;
			                       color:#696969;
			                       border-bottom:1px solid #808080;
			                       border-left:1px solid #808080;
			                       border-left:1px solid;
			                       :last-child th,border-bottom: none;">クラス</th>
			            <th style="font-weight: normal;
			                       color:#696969;
			                       border-bottom:1px solid #808080;
			                       border-left:1px solid #808080;
			                       border-left:1px solid;
			                       :last-child th,border-bottom: none;">氏名</th>
			            <th style="font-weight: normal;
			                       color:#696969;
			                       border-bottom:1px solid #808080;
			                       border-left:1px solid #808080;
			                       border-left:1px solid;
			                       :last-child th,border-bottom: none;">性別</th>
			            <th style="font-weight: normal;
			                       color:#696969;
			                       border-bottom:1px solid #808080;
			                       border-left:1px solid #808080;
			                       border-left:1px solid;
			                       :last-child th,border-bottom: none;">経験</th>
			            <th style="font-weight: normal;
			                       color:#696969;
			                       border-bottom:1px solid #808080;
			                       border-left:1px solid #808080;
			                       border-left:1px solid;
			                       :last-child th,border-bottom: none;">理解度</th>
			            <th style="font-weight: normal;
			                       color:#696969;
			                       border-bottom:1px solid #808080;
			                       border-left:1px solid #808080;
			                       border-left:1px solid;
			                       :last-child th,border-bottom: none;"></th>
		            </tr>
		        </thead>

		        <tbody class="list-body">
		        	<c:forEach var="e" items="${prfList}">
		            <tr style="border-style: 1px solid #DCDCDC">
			            <td style="border-left: 1px dashed #DCDCDC;
                                   border-right: 1px dashed #DCDCDC;
                                   border-bottom: 1px solid #DCDCDC;
                                   border-top: 1px solid #DCDCDC;
                                   text-align:center">${e.c_name}</td>
			            <td style="border-left: 1px dashed #DCDCDC;
                                   border-right: 1px dashed #DCDCDC;
                                   border-bottom: 1px solid #DCDCDC;
                                   border-top: 1px solid #DCDCDC">${e.s_name}</td>
			            <td style="border-left: 1px dashed #DCDCDC;
                                   border-right: 1px dashed #DCDCDC;
                                   border-bottom: 1px solid #DCDCDC;
                                   border-top: 1px solid #DCDCDC;
                                   text-align:center">${e.genderString}</td>
			            <td style="border-left: 1px dashed #DCDCDC;
                                   border-right: 1px dashed #DCDCDC;
                                   border-bottom: 1px solid #DCDCDC;
                                   border-top: 1px solid #DCDCDC;
                                   text-align:center">${e.expString}</td>
			            <td style="border-left: 1px dashed #DCDCDC;
                                   border-right: 1px dashed #DCDCDC;
                                   border-bottom: 1px solid #DCDCDC;
                                   border-top: 1px solid #DCDCDC;
                                   text-align:center">${e.know}/${e.unknow}</td>
			            <td style="border-left: 1px dashed #DCDCDC;
                                   border-right: 1px dashed #DCDCDC;
                                   border-bottom: 1px solid #DCDCDC;
                                   border-top: 1px solid #DCDCDC;
                                   text-align: center">
				            <form method="GET" action="/UserLike/TeacherPrfServlet">
				            <div class="button">
					            <input type="hidden" value="${e.s_id}" name="S_ID">
								<input type="submit" value="詳細" style="margin: 2px 0">
							</div>
							</form>
						</td>
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
