<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/admin.css">
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script type="text/javascript">
	function sampleView(){
		//商品タイトル
		document.getElementById("sample1").innerText = document.getElementById("itemTitle").value+":"+document.getElementById("itemName").value;
		document.getElementById("itemtitle").innerText = document.getElementById("itemTitle").value+":"+document.getElementById("itemName").value;

		//商品イメージ
		document.getElementById("sample2").src = document.getElementById("url").value;
		document.getElementById("itemimage").src = document.getElementById("url").value;

		//商品説明1
		document.getElementById("sample3").innerText = document.getElementById("itemExplan").value;
		document.getElementById("itemexplan").innerText = document.getElementById("itemExplan").value;

		//商品価格
		document.getElementById("itemprice").innerText = "価格:"+document.getElementById("price").value+"pt";

		//商品説明2
		document.getElementById("itemmain").innerText = document.getElementById("itemMain").value;
	}

	function submitAction(){
		window.location = "welcome.jsp";
	}

	function inputcheck(){

		//商品名チェック
		if(document.newForm.itemName.value==""){
			alert("商品名を入力してください");
			return false;
		}

		if(document.newForm.itemName.value.length>20){
			alert("商品名は20文字以内でお願いします");
			return false;
		}

		//商品写真
		if(document.newForm.url.value==""){
			alert("写真を選択してください");
			return false;
		}

		//カテゴリ
		if(document.newForm.category.value==""){
			alert("カテゴリーを選択してください");
			return false;
		}

		//商品金額
		if(document.newForm.price.value==""){
			alert("商品金額を入力してください");
			return false;
		}

		if(document.newForm.price.value.match(/[^0-9]+/)){
			alert("商品金額は半角数字でお願いします");
			return false;
		}

		//商品個数
		if(document.newForm.stock.value==""){
			alert("商品個数を入力してください");
			return false;
		}

		if(document.newForm.price.value.match(/[^0-9]+/)){
			alert("商品個数は半角数字でお願いします");
			return false;
		}

		//商品タイトル
		if(document.newForm.itemTitle.value==""){
			alert("商品タイトルを入力してください");
			return false;
		}

		if(document.newForm.itemName.value.length>20){
			alert("商品名は20文字以内でお願いします");
			return false;
		}

		//商品説明1
		if(document.newForm.itemExplan.value==""){
			alert("商品説明1を入力してください");
			return false;
		}

		if(document.newForm.itemExplan.value.length>170){
			alert("商品説明1は170文字以内でお願いします");
			return false;
		}

		//商品説明2
		if(document.newForm.itemMain.value==""){
			alert("商品説明2を入力してください");
			return false;
		}

		if(document.newForm.itemMain.value.length>300){
			alert("商品説明2は300文字以内でお願いします");
			return false;
		}

	}
</script>
</head>
<body>
<div id="page">
	<div id="header">
		<div id="header-left">
			<img src="./img/logo/logo.png" onclick="submitAction()">
		</div>
	</div>
	<div id="title"><h1>商品登録ページ</h1></div>
	<div>
		<div id="left">
			<h2 class="view">商品新規登録</h2>
			<form action="InsertNewItemAction" method="post" onsubmit="return inputcheck()" name="newForm">
				<table border="1" cellspacing="0">
					<tr>
						<td>商品名</td>
						<td><input type="text" name="itemName" id="itemName"></td>
					</tr>
					<tr>
						<td>商品写真</td>
						<td><input type="file" name="url" id="url"></td>
					</tr>
					<tr>
						<td>カテゴリー</td>
						<td>
							<select name="category">
								<option value="A" selected>A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
								<option value="E">E</option>
								<option value="F">F</option>
								<option value="G">G</option>
								<option value="H">H</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>商品金額</td>
						<td><input type="text" name="price" id="price"></td>
					</tr>
					<tr>
						<td>商品個数</td>
						<td><input type="text" name="stock" id="stock"></td>
					</tr>
					<tr>
						<td>商品タイトル</td>
						<td><input type="text" name="itemTitle" id="itemTitle"></td>
					</tr>
					<tr>
						<td>商品説明1</td>
						<td><textarea name="itemExplan" rows="4" cols="30" id="itemExplan"></textarea></td>
					</tr>
					<tr>
						<td>商品説明2</td>
						<td><textarea name="itemMain" rows="8" cols="30" id="itemMain"></textarea></td>
					</tr>
				</table>
				<button type="button" onclick="sampleView()">表示</button>
				<button type="submit">登録</button>
			</form>
		</div>
		<div id="right">
			<h2 class="view">商品一覧ページ表示内容</h2>
			<table border="1" cellspacing="0" id="itemtable">
				<tr>
					<td id="sample1">商品タイトル:商品名</td>
				</tr>
				<tr>
					<td>
						<img src="" alt="商品写真" id="sample2">
					</td>
					<td>
						<div id="sample3">商品説明1</div>
					</td>
				</tr>
			</table>
			<h2 class="view">商品詳細ページ表示内容</h2>
			<div id="rightbottom">
				<h1 id="itemtitle">商品タイトル:商品名</h1>
				<img src="" alt="商品写真" id="itemimage">
				<div id="itemexplan">商品説明1</div>
				<div id="itemprice">価格:***pt</div>
				数量:<select name="stock">
						<option value="1" selected>1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
					<option value="9">9</option>
				</select>
				<table id="buy" cellspacing="3">
					<tr>
						<td>
							<i class="far fa-credit-card"></i>
						</td>
						<td>
							<button type="submit" name="select" value="0">購入</button>
						</td>
						<td>
							<i class="fas fa-cart-plus"></i>
						</td>
						<td>
							<button type="submit" name="select" value="1">カート</button>
						</td>
					<tr>
				</table>
				<br>
				<div id="itemmain">商品説明2</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>