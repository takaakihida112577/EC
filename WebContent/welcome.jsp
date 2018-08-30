<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample ECサイト</title>
<link rel="stylesheet" type="text/css" href="./css/welcome.css">
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="page">
	<div id="header">
		<div id="header-left">
			<img src="./img/logo/logo.png">
		</div>
	</div>
	<div id="loginlogo">
		<i class="fas fa-address-card"></i>
	</div>
	<div id="main">
		<s:form action="LoginAction">
			<p>ユーザーID</p>
			<input type="text" name="loginUserId"/><br><br>
			<p>ログインパスワード</p>
			<input type="password" name="loginPassword"/><br><br>
			<button type="submit">ログイン</button>
			<br>
			<br>
			<label><a href="./createUser.jsp">新規会員登録</a></label>
		</s:form>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>