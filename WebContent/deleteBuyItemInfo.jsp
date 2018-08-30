<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script type="text/javascript">
	function submitAction(form){
		form.submit();
	}
	window.onload = function(){

		setInterval('submitAction(back)',3000);
	}
</script>
</head>
<body>
<div id="page">
	<div id="header">
		<div id="header-left">
			<img src="./img/logo/logo.png">
		</div>
		<div id="header-right">
			<i class="fas fa-shopping-cart"></i>
			<i class="fas fa-address-card"></i>
		</div>
	</div>
	<h1>購入履歴の削除が完了しました</h1>
	<h2>3秒後マイページに戻ります</h2>
	<form action="MyPageAction" name="back">
	</form>
		<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>