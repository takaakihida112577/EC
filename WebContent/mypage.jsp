<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/mypage.css">
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet" type="text/css">
<title>Mypage画面</title>
<script type="text/javascript">
	function submitAction(form){
		form.submit();
	}

	function alertAction(){
	    if (window.confirm('チャージしてもよろしいでしょうか')) {
	        return true;
	    }
	    return false;
	}

	function reviewAction(){
		window.location.href="reviewForm.jsp";
	}

	function changeUserInfoAction(){
		window.location.href="changeUserInfo.jsp";
	}

	function deleteItemInfoAction(){

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
	<div id="title"><h1>マイページ</h1></div>
	<div id="left">
		<form action="ChangeUserInfoAction" name="changeUserInfo">
		<h1>ユーザー情報　　<button type="button" onclick="changeUserInfoAction()">変更</button></h1>
		</form>
		<h3>氏名</h3>
		<p id="nameChange"><s:property value="userInfoDTO.getUserName()"/></p>
		<h3>UserId<b>変更</b></h3>
		<p id="userIdChange"><s:property value="userInfoDTO.getUserId()"/></p>
		<h3>電話番号</h3>
		<p id="phoneChange"><s:property value="userInfoDTO.getPhone()"/></p>
		<h3>メールアドレス</h3>
		<p id="mailChange"><s:property value="userInfoDTO.getEmail()"/></p>
		<h1>所在地</h1>
		<h3>郵便番号</h3>
		<p id="postalChange"><s:property value="userInfoDTO.getPostal()"/></p>
		<h3>住所</h3>
		<p id="addressChange"><s:property value="userInfoDTO.getAddressKen()"/><s:property value="userInfoDTO.getAddress()"/></p>
		<div id="right_top">
			<h1>保有ポイント</h1>
			<p><s:property value="userInfoDTO.getPoint()"/>pt</p>
			<div>
			<form action="ChargePointAction" name="charge">
				<button type="submit" id="chargebutton" onclick='return alertAction()'><i class="fab fa-bitcoin"></i></button><br>
				<select name="chargePoint">
					<option value="1000" selected>1000</option>
					<option value="3000">3000</option>
					<option value="5000">5000</option>
					<option value="7000">7000</option>
					<option value="10000">10000</option>
					<option value="20000">20000</option>
				</select>
				<input type="hidden" name="id" value='<s:property value="userInfoDTO.getId()"/>'>
			</form>
			</div>
		</div>
		<div id="logout">
			<h1>ログアウト</h1>
			<form action="LogoutAction" name="logout">
				<button type="button" onclick="submitAction(logout)">ログアウト</button>
			</form>
		</div>
	</div>
	<div id="right">
		<div id="right_bottom">
			<form action="DeleteAllBuyItemInfoAction" name="deleteAll">
			<h1>購入履歴　　　　<button type="button" onclick="submitAction(deleteAll)">削除</button></h1>
			</form>
			<s:iterator value="#session.buyItemInfoDTOList">
			[<s:property value="insertDate"/>]<br>
			<table border="1" cellspacing="0" id="cartmain">
				<tr>
					<td colspan="5"><s:property value="itemName"/></td>
				</tr>
				<tr>
					<td rowspan="4"><img src='<s:property value="url"/>'></td>
					<td><b>商品数量</b></td>
					<td><b>合計金額</b></td>
					<td><b>レビュー</b></td>
					<td><b>削除</b></td>
				</tr>
				<tr>
					<td rowspan="3" height="100"><s:property value="totalCount"/></td>
					<td rowspan="3" height="100"><s:property value="totalPrice"/>pt</td>
					<td><label for="reform"><a href="<s:url action='ReviewFormAction'><s:param name='itemId' value='%{itemId}'/></s:url> " id="reform">投稿</a></label></td>
					<td><label for="deform"><a href="<s:url action='DeleteBuyItemInfoAction'><s:param name='id' value='%{id}'/></s:url> " id="deform">削除</a></label></td>
				</tr>
			</table>
			</s:iterator>
		</div>
		<div id="pagelist">
		<s:iterator begin="1" end="#session.totalPage" status="page">
			<s:if test='#session.currentPageNo == #page.count'>
				<span><s:property value="%{#page.count}"/></span>
			</s:if>
			<s:else>
				<span><a href="<s:url action='MyPageAction'><s:param name='pageNo' value='%{#page.count}'/></s:url> "><s:property value="%{#page.count}"/></a></span>
			</s:else>
		</s:iterator>
		</div>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>