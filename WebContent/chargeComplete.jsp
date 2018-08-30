<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/charge.css">
<title>チャージ完了</title>
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
			<form action="CartAction" name="cartaction">
			<i class="fas fa-shopping-cart" onclick="submitAction(cartaction)"></i>
			</form>
			<form action="MyPageAction" name="mypageaction">
			<i class="fas fa-address-card" onclick="submitAction(cartaction)"></i>
			</form>
		</div>
	</div>
	<div id="main">
		<h1><b>チャージ完了致しました！！</b></h1>
		<h2>3秒後マイページに戻ります</h2>
		<form action="MyPageAction" name="back">
		</form>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>