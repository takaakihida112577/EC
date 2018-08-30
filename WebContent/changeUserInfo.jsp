<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/createUser.css">
<title>HOME画面</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
function formCheck(){

	//氏 空白チェック
	if(document.newform.lastName.value.length==""){
		changeColor(document.getElementById("value1"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value1"));
	}

	//氏 文字数チェック
	if(document.newform.lastName.value.length>16){
		changeColor(document.getElementById("value1"));
		alert("16文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value1"));
	}

	//名 空白チェック
	if(document.newform.firstName.value==""){
		changeColor(document.getElementById("value2"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value2"));
	}

	//名 文字数チェック
	if(document.newform.firstName.value.length>16){
		changeColor(document.getElementById("value2"));
		alert("16文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value2"));
	}

	//氏(カナ) 空白チェック
	if(document.newform.kanaLastName.value==""){
		changeColor(document.getElementById("value3"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value3"));
	}

	//氏(カナ) 文字数チェック
	if(document.newform.kanaLastName.value.length>16){
		changeColor(document.getElementById("value3"));
		alert("16文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value3"));
	}

	//氏(カナ) カタカナチェック
	if(!document.newform.kanaLastName.value.match(/^[\u30a1-\u30f6]+$/)){
		changeColor(document.getElementById("value3"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value3"));
	}

	//名(カナ) 空白チェック
	if(document.newform.kanaFirstName.value==""){
		changeColor(document.getElementById("value4"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value4"));
	}

	//名(カナ) 文字数チェック
	if(document.newform.kanaFirstName.value.length>16){
		changeColor(document.getElementById("value4"));
		alert("16文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value4"));
	}

	//名(カナ) カタカナチェック
	if(!document.newform.kanaFirstName.value.match(/^[\u30a1-\u30f6]+$/)){
		changeColor(document.getElementById("value4"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value4"));
	}

	//ユーザーID空白チェック
	if(document.newform.userId.value==""){
		changeColor(document.getElementById("value5"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value5"));
	}

	//ユーザーID文字数チェック
	if(document.newform.userId.value.length>16){
		changeColor(document.getElementById("value5"));
		alert("16文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value5"));
	}

	//ユーザーID 半角英数字チェック
	if(document.newform.userId.value.match(/[^A-Za-z0-9]+/)){
		changeColor(document.getElementById("value5"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value5"));
	}

	//パスワード空白チェック
	if(document.newform.password.value==""){
		changeColor(document.getElementById("value6"));
		alert("入力内容1に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value6"));
	}

	//パスワード文字数チェック
	if(document.newform.password.value.length>16){
		changeColor(document.getElementById("value6"));
		alert("16文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value6"));
	}

	//パスワード記号チェック
	if(document.newform.password.value.match(/[^A-Za-z0-9]+/)){
		changeColor(document.getElementById("value6"));
		alert("入力内容2に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value6"));
	}

	//パスワード再入力空白チェック
	if(document.newform.repassword.value==""){
		changeColor(document.getElementById("value7"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value7"));
	}

	//パスワード再入力文字数チェック
	if(document.newform.repassword.value.length>16){
		changeColor(document.getElementById("value7"));
		alert("16文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value7"));
	}

	//パスワード再入力記号チェック
	if(document.newform.repassword.value.match(/[^A-Za-z0-9]+/)){
		changeColor(document.getElementById("value7"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value7"));
	}
	//メールアドレス空白チェック
	if(document.newform.email.value==""){
		changeColor(document.getElementById("value8"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value8"));
	}

	//メールアドレス文字数チェック
	if(document.newform.email.value.length>32){
		changeColor(document.getElementById("value8"));
		alert("32文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value8"));
	}

	//メールアドレス記号チェック
	if(!document.newform.email.value.match(/^([A-Za-z0-9])+@([A-Za-z0-9])+/)){
		changeColor(document.getElementById("value8"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value8"));
	}

	//電話番号空白チェック
	if(document.newform.phone.value==""){
		changeColor(document.getElementById("value9"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value9"));
	}

	//電話番号記号チェック
	if(!document.newform.phone.value.match(/^0[0-9]{1,2}-[0-9]{3,5}-[0-9]{4}$/)){
		changeColor(document.getElementById("value9"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value9"));
	}

	//郵便番号空白チェック
	if(document.newform.postal.value==""){
		changeColor(document.getElementById("value10"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value10"));
	}

	//郵便番号記号チェック
	if(!document.newform.postal.value.match(/[0-9]{3}-[0-9]{4}/)){
		changeColor(document.getElementById("value10"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value10"));
	}

	//都道府県空白チェック
	if(document.newform.addressKen.value==""){
		changeColor(document.getElementById("value11"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value11"));
	}

	//都道府県文字数チェック
	if(document.newform.addressKen.value.length>16){
		changeColor(document.getElementById("value11"));
		alert("16文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value11"));
	}

	//市町村空白チェック
	if(document.newform.address.value==""){
		changeColor(document.getElementById("value12"));
		alert("入力内容に誤りがあります");
		return false;
	}else{
		changeColorWhite(document.getElementById("value12"));
	}

	//市町村文字数チェック
	if(document.newform.address.value.length>32){
		changeColor(document.getElementById("value12"));
		alert("32文字以内でお願いします");
		return false;
	}else{
		changeColorWhite(document.getElementById("value12"));
	}

	//個人情報チェック
	if(!document.newform.rule.checked){
		alert("個人情報の取り扱いに関してチェックお願いします");
		return false;
	}
}

function changeColor(obj){
	obj.style.backgroundColor = "#ff0000";
}

function changeColorWhite(obj){
	obj.style.backgroundColor = "#ffffff";
}

function changeNameAction(changeName){
	document.getElementById("namechange").innerHTML = "<tr><td>氏</td><td>名</td><td id='value1'><input type='text' name='lastName' id='lastName'></td><td id='value2'><input type='text' name='firstName' id='firstName'></td></tr>";
}

function changeKanaNameAction(changeName){
	document.getElementById("kananamechange").innerHTML = "<tr><td>氏(カナ)</td><td>名(カナ)</td><td id='value3'><input type='text' name='kanaLastName' id='kanaLastName'></td><td id='value4'><input type='text' name='kanaFirstName' id='kanaFirstName'></td></tr>";
}

function changeUserIdAction(changeName){
	document.getElementById("value5").innerHTML = "<td id='value5'><input type='text' name='userId' id='userId'></td>";
}

function changePasswordAction(changeName){
	document.getElementById("value6").innerHTML = "<td id='value6'><input type='password' name='password' id='password'></td>";
	document.getElementById("repass").innerHTML = "<tr><td colspan='2'>パスワード再入力</td><td id='value7'><input type='password' name='repassword' id='repassword'></td><td>*半角英数字のみ</td></tr>";
}

function changeEmailAction(changeName){
	document.getElementById("value8").innerHTML = "<td id='value8'><input type='text' name='email' id='email'></td>";
}

function changePhoneAction(changeName){
	document.getElementById("value9").innerHTML = "<td id='value9'><input type='text' name='phone' id='phone'></td>";
}

function changePostalAction(changeName){
	document.getElementById("value10").innerHTML = "<td id='value10'><input type='text' name='postal' id='postal'></td>";
}

function changeAddressKenAction(changeName){
	document.getElementById("value11").innerHTML = "<td id='value11'><input type='text' name='addressKen' id='addressKen'></td>";
}

function changeAddressAction(changeName){
	document.getElementById("value12").innerHTML = "<td id='value12'><input type='text' name='address' id='address'></td>";
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
			<s:form action="CartAction" name="cartaction">
			<i class="fas fa-shopping-cart" onclick="submitAction(cartaction)"></i>
			<i class="fas fa-address-card"></i>
			</s:form>
		</div>
	</div>
	<div id="main">
		<h1>会員情報変更</h1>
		<h2 style="color:red">変更項目をクリックしてください</h2>
		<form action="UserInsertAction" method="POST" name="newform" onsubmit="return formCheck()">
		<table align="center">
			<tr id="namechange">
				<td colspan="2">氏名</td>
				<td id="value1"><button type="button" onclick="changeNameAction()"><s:property value="#session.myPageInfo.getUserName()" /></button><input type="hidden" name="name" value='<s:property value="#session.myPageInfo.getUserName()"/>'></td>
				<td>*本名でお願いします</td>
			</tr>
			<tr id="kananamechange">
				<td colspan="2">氏名(カナ)</td>
				<td id="value3"><button type="button" onclick="changeKanaNameAction()"><s:property value="#session.myPageInfo.getKanaUserName()" /></button><input type="hidden" name="kanaName" value='<s:property value="#session.myPageInfo.getKanaUserName()" />'></td>
				<td>*本名でお願いします</td>
			</tr>
			<tr>
				<td colspan="2">ユーザーID</td>
				<td id="value5"><button type="button" onclick="changeUserIdAction()"><s:property value="#session.myPageInfo.getUserId()" /></button><input type="hidden" name="userId" value='<s:property value="#session.myPageInfo.getUserId()" />'></td>
				<td>*半角英数字のみ</td>
			</tr>
			<tr><td colspan="2">パスワード</td>
				<td id="value6"><button type="button" onclick="changePasswordAction()">********</button><input type="hidden" name="password" value='<s:property value="#session.myPageInfo.getPassword()" />'></td>
				<td>*半角英数字のみ</td>
			</tr>
			<tr id="repass">
			</tr>
			<tr>
				<td colspan="2">メールアドレス</td>
				<td id="value8"><button type="button" onclick="changeEmailAction()"><s:property value="#session.myPageInfo.getEmail()" /></button><input type="hidden" name="email" value='<s:property value="#session.myPageInfo.getEmail()" />'></td>
				<td>*半角英数字のみ</td>
			</tr>
			<tr>
				<td colspan="2">電話番号</td>
				<td id="value9"><button type="button" onclick="changePhoneAction()"><s:property value="#session.myPageInfo.getPhone()" /></button><input type="hidden" name="phone" value='<s:property value="#session.myPageInfo.getPhone()" />'></td>
				<td>0**-****-****</td>
			</tr>
			<tr>
				<td colspan="2" rowspan="3">住所</td>
				<td>郵便番号(***-****)</td>
				<td id="value10"><button type="button" onclick="changePostalAction()"><s:property value="#session.myPageInfo.getPostal()" /></button><input type="hidden" name="postal" value='<s:property value="#session.myPageInfo.getPostal()" />'></td>
			</tr>
			<tr>
				<td>都道府県</td>
				<td id="value11"><button type="button" onclick="changeAddressKenAction()"><s:property value="#session.myPageInfo.getAddressKen()" /></button><input type="hidden" name="addressKen" value='<s:property value="#session.myPageInfo.getAddressKen()" />'></td>
			</tr>
			<tr>
				<td>市町村以下</td>
				<td id="value12"><button type="button" onclick="changeAddressAction()"><s:property value="#session.myPageInfo.getAddress()" /></button><input type="hidden" name="address" value='<s:property value="#session.myPageInfo.getAddress()" />'></td>
			</tr>
		</table>
		<br><br>
		<br>
		<br>
		<input type="hidden" name="changeFlg" value="1">
		<button type="submit" id="completebutton"><b>変更完了</b></button>
		</form>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>