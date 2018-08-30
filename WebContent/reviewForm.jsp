<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/review.css">
<title>レビューフォーム</title>
<script type="text/javascript">
	function submitAction(form){
		form.submit();
	}

	function maxLengthAction(){

		if(document.getElementById("reviewTitle").value==""){
			alert("タイトルを入力してください");
			return false;
		}else{

		}

		if(document.getElementById("reviewTitle").value.length > 30){
			alert("タイトルは30文字以内でお願いします");
			return false;
		}else{

		}

		if(document.getElementById("reviewText").value==""){
			alert("レビューを入力してください");
			return false;
		}else{

		}

		if(document.getElementById("reviewText").value.length > 200){
			alert("レビューは200文字以内でお願いします");
			return false;
		}else{

		}
	}
</script>
</head>
<body>
<div id="page">
	<div id="header">
		<div id="header-left">
			<form action="GoHomeAction" name="hone">
				<button onclick="submitAction(home)" style="background:none; border:none"><img src="./img/logo/logo.png" onclick="submitAction(home)"></button>
			</form>
		</div>
		<div id="header-right">
			<form action="CartAction" name="cartaction">
			<i class="fas fa-shopping-cart" onclick="submitAction(cartaction)"></i>
			</form>
			<form action="MyPageAction" name="mypageaction">
			<i class="fas fa-address-card"></i>
			</form>
		</div>
	</div>
	<div id="title"><h1>レビュー投稿</h1></div>
	<div id="review">
		<form action="ReviewInsertAction" method="post"  onsubmit="return maxLengthAction()" name="newreview">
			<table border="1" cellspacing="0" align="center">
				<tr>
					<td>タイトル(30字以内)</td>
					<td><input type="text" name="reviewTitle" id="reviewTitle"></td>
				</tr>
				<tr>
					<td>評価</td>
					<td>
						<div>
						<input type="radio" name="star" id="star1" value="5">
						<label for="star1"><span>★</span></label>
						<input type="radio" name="star" id="star2" value="4">
						<label for="star2"><span>★</span></label>
						<input type="radio" name="star" id="star3" value="3">
						<label for="star3"><span>★</span></label>
						<input type="radio" name="star" id="star4" value="2">
						<label for="star4"><span>★</span></label>
						<input type="radio" name="star" id="star5" value="1">
						<label for="star5"><span>★</span></label>
						</div>
					</td>
				</tr>
				<tr>
					<td>レビュー(200字以内)</td>
					<td><textarea rows="8" cols="30" id="reviewText" name="reviewText"></textarea></td>
				</tr>
			</table>
			<s:hidden name="itemId" value="%{itemId}"/>
			<button type="submit">投稿</button>
		</form>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>