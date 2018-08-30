<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザー登録終了画面</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script type="text/javascript">
	function submitAction(){
		window.location = "welcome.jsp";
	}
	window.onload = function(){

		setInterval('submitAction()',3000);
	}
</script>
</head>
<body>
	<div id="header">
		<div id="header-left">
			<form action="GoHomeAction" name="hone">
				<button onclick="submitAction(home)" style="background:none; border:none"><img src="./img/logo/logo.png" onclick="submitAction(home)"></button>
			</form>
		</div>
		<div id="header-right">
			<table>
				<tr>
					<td>
						<form action="CartAction" name="cartaction">
						<i class="fas fa-shopping-cart" onclick="submitAction(cartaction)"></i>
						</form>
					</td>
					<td>
						<form action="MyPageAction" name="mypageaction">
							<i class="fas fa-address-card" onclick="submitAction(mypageaction)"></i>
						</form>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<h1>新規登録完了しました！！</h1>
		<h2>3秒後にログイン画面に戻ります</h2>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</body>
</html>