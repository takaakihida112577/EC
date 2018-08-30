<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>入力確認画面</title>
<link rel="stylesheet" type="text/css" href="./css/createUser.css">
</head>
<body>
<div id="page">
	<div id="header">
		<div id="header-left">
			<img src="./img/logo/logo.png">
		</div>
		<div id="header-right">
			<s:form action="CartAction" name="cartaction">
			<i class="fas fa-shopping-cart" onclick="submitAction(cartaction)"></i>
			<i class="fas fa-address-card"></i>
			</s:form>
		</div>
	</div>
	<div id="main">
	<h1>会員登録確認画面</h1>
	<table align="center">
		<tr>
			<s:if test='name==null'>
				<td>氏</td>
				<td>名</td>
				<td><s:property value="lastName"/></td>
				<td><s:property value="firstName"/></td>
			</s:if>
			<s:else>
				<td colspan="2">氏名</td>
				<td><s:property value="name"/></td>
			</s:else>
		</tr>
		<tr>
			<s:if test='kanaName==null'>
				<td>氏(カナ)</td>
				<td>名(カナ)</td>
				<td><s:property value="kanaLastName"/></td>
				<td><s:property value="kanaFirstName"/></td>
			</s:if>
			<s:else>
				<td colspan="2">氏名(カナ)</td>
				<td><s:property value="kanaName"/></td>
			</s:else>
		</tr>
		<tr>
			<td colspan="2">ユーザーID</td>
			<td colspan="2"><s:property value="userId"/></td>
		</tr>
		<tr>
			<td colspan="2">パスワード</td>
			<td colspan="2">*********</td>
		</tr>
		<tr>
			<td colspan="2">メールアドレス</td>
			<td colspan="2"><s:property value="email"/></td>
		</tr>
		<tr>
			<td colspan="2">電話番号</td>
			<td colspan="2"><s:property value="phone"/></td>
		</tr>
		<tr>
			<td colspan="2" rowspan="3">住所</td>
			<td>郵便番号</td>
			<td><s:property value="postal"/></td>
		</tr>
		<tr>
			<td>住所1</td>
			<td><s:property value="addressKen"/></td>
		</tr>
		<tr>
			<td>住所2</td>
			<td><s:property value="address"/></td>
		</tr>
	</table>
	<br>
	<br>
	<div>
		<h2>上記の内容でお間違いないでしょうか？</h2>
		<a href="javascript:history.back()">登録修正</a>
		<br>
		<br>
		<br>
		<br>
		<br>
		<form action="CreateUserCompleteAction">
			<button type="submit">登録完了</button>
		</form>
	</div>
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>