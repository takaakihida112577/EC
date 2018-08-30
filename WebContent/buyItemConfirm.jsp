<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style2.css">
<title>購入確認画面</title>
<script type="text/javascript">
	function submitAction(form){
		confirm('画面の内容にお間違いないでしょうか？');
		form.submit();
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

	<!-- 購入確認画面 -->

	<div id="left">
		<!-- ユーザー情報 -->
		<div id="user">
		<!-- ユーザー画像 -->
		<!-- ユーザー名 -->
			<h2>購入者氏名</h2>
			<s:property value="#session.loginUser.getUserName()"/><br>
			<h2>保有ポイント</h2>
			<s:property value="#session.myPageInfo.getPoint()"/>pt<br>
		</div>

		<!-- 送付先 -->
		<div id="address">
			<h2>郵便番号</h2>
			<s:property value="#session.myPageInfo.getPostal()"/><br>
			<h2>住所</h2>
			<s:property value="#session.myPageInfo.getAddressKen()"/><s:property value="#session.myPageInfo.getAddress()"/><br><br>
			<h2>宛名</h2>
			<s:property value="#session.myPageInfo.getKanaUserName()"/><br>
			<s:property value="#session.myPageInfo.getUserName()"/><br>
		</div>
		<!-- 商品情報 -->
	</div>
	<div id="item">
		<h2>商品</h2>
			<s:property value="#session.buyItemInfo.getItemName()"/>
		<h2>商品画像</h2>
			<img src='<s:property value="#session.buyItemInfo.getUrl()"/>'>
		<h2>購入個数</h2>
			<s:property value="stock"/>
		<h2>合計金額</h2>
			<s:property value="#session.buyItemInfo.getItemPrice()"/>
			　×　<s:property value="stock"/>
			　=　<s:property value="totalPrice"/>
		<br>
		<br>
		<br>
		<span>合計金額:</span>
		<span id="totalprice"><s:property value="totalPrice"/>pt</span><br>
		<s:form action="BuyItemCompleteAction" name="complete">
			<button type="button" onclick="submitAction(complete)">購入</button>
		</s:form>
	</div>

	<div id="footer">
<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>