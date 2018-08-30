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
		alert("入力内容に誤りがあります");
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
		alert("入力内容に誤りがあります");
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
		<h1>新規会員登録</h1>
		<form action="UserInsertAction" name="newform" onsubmit="return formCheck()">
		<table align="center">
			<tr>
				<td>氏</td>
				<td>名</td>
				<td id="value1"><input type="text" name="lastName" id="lastName"></td>
				<td id="value2"><input type="text" name="firstName" id="firstName"></td>
			</tr>
			<tr>
				<td>氏(カナ)</td>
				<td>名(カナ)</td>
				<td id="value3"><input type="text" name="kanaLastName" id="kanaLastName"></td>
				<td id="value4"><input type="text" name="kanaFirstName" id="kanaFirstName"></td>
			</tr>
			<tr>
				<td colspan="2">ユーザーID</td>
				<td id="value5"><input type="text" name="userId" id="userId"></td>
				<td>*半角英数字のみ</td>
			</tr>
			<tr>
				<td colspan="2">パスワード</td>
				<td id="value6"><input type="password" name="password" id="password"></td>
				<td>*半角英数字のみ</td>
			</tr>
			<tr>
				<td colspan="2">パスワード再入力</td>
				<td id="value7"><input type="password" name="repassword" id="repassword"></td>
				<td>*半角英数字のみ</td>
			</tr>
			<tr>
				<td colspan="2">メールアドレス</td>
				<td id="value8"><input type="text" name="email" id="email"></td>
				<td>*半角英数字のみ</td>
			</tr>
			<tr>
				<td colspan="2">電話番号</td>
				<td id="value9"><input type="text" name="phone" id="phone"></td>
				<td>0**-****-****</td>
			</tr>
			<tr>
				<td colspan="2" rowspan="3">住所</td>
				<td>郵便番号(***-****)</td>
				<td id="value10"><input type="text" name="postal" id="postal"></td>
			</tr>
			<tr>
				<td>都道府県</td>
				<td id="value11"><input type="text" name="addressKen" id="addressKen"></td>
			</tr>
			<tr>
				<td>市町村以下</td>
				<td id="value12"><input type="text" name="address" id="address"></td>
			</tr>
		</table>
		<br><br>
		<div id="rule">
			<ol>
				<li>第一項: 個人情報について、不正アクセス、紛失、漏洩等が発生しないよう管理責任者を定め、個人情報取り扱い規定を整備し、これらの危険に対する安全対策を積極的に実施します。</li>
				<li>第二項: 個人情報は、ご本人の同意がない限り第三者には提供いたしません。</li>
				<li>第三項: 個人情報は当社にて厳重に管理し当サイト使用以外の目的では使用いたしません。</li>
				<li>第四項: 個人情報は、法律に基づいた、警察等の行政機関や司法機関からの要請があった場合を除き、第三者には提供いたしません。</li>
				<li>第五項: 個人情報の取り扱いの全てもしくはその一部を外部に委託する場合、委託を受けた者に対して適切な監督を実施します。</li>
			</ol>
		</div>
		<br>
		<label>個人情報の取り扱いについて同意します<input type="checkbox" name="rule" value="1"></label>
		<br>
		<br>
		<br>
		<input type="hidden" name="changeFlg" value="0">
		<button type="submit" id="completebutton"><b>新規登録</b></button>
		</form>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>