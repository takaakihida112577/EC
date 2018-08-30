<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script type="text/javascript">
	function submitAction(form){
		form.submit();
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
	<div id="serch">
	<form action="SerchAction">
		<select name="serchCategory">
			<option value="all" selected>すべて</option>
			<option value="A">テレビ</option>
			<option value="B">PC</option>
			<option value="C">家電</option>
			<option value="D">ファッション</option>
			<option value="E">食品</option>
			<option value="F">事務用品</option>
			<option value="G">書籍</option>
			<option value="H">家具</option>
		</select>
		<input type="text" name="serchWord">
		<button type="submit">検索</button>
		<label for="rireki">閲覧履歴　<i class="fas fa-file-alt" id="rireki"></i></label>
	</form>
	</div>
	<div id="left">
		<div id="loginuser">
			<table>
				<tr>
					<td>
						<i class="far fa-credit-card"></i>
					</td>
					<td><p>ポイント:<s:property value="#session.loginUser.getPoint()"/>pt</td>
				</tr>
			</table>
		</div>
		<ul>
			<s:form action="SelectItemCategoryAction" name="form1" value="A">
				<li>
					<label>
						<b>テレビ</b><input type="hidden" value="A" name="itemCategory" onclick="submitAction(form1)">
					</label>
				</li>
			</s:form>
			<s:form action="SelectItemCategoryAction" name="form2" value="B">
				<li>
					<label>
						<b>PC</b><input type="hidden" value="B" name="itemCategory" onclick="submitAction(form2)">
					</label>
				</li>
			</s:form>
			<s:form action="SelectItemCategoryAction" name="form3" value="C">
				<li>
					<label>
						<b>家電</b><input type="hidden" value="C" name="itemCategory" onclick="submitAction(form3)">
					</label>
				</li>
			</s:form>
			<s:form action="SelectItemCategoryAction" name="form4" value="D">
				<li>
					<label>
						<b>ファッション</b><input type="hidden" value="D" name="itemCategory" onclick="submitAction(form4)">
					</label>
				</li>
			</s:form>
			<s:form action="SelectItemCategoryAction" name="form5" value="E">
				<li>
					<label>
						<b>食品</b><input type="hidden" value="E" name="itemCategory" onclick="submitAction(form5)">
					</label>
				</li>
			</s:form>
			<s:form action="SelectItemCategoryAction" name="form6" value="F">
				<li>
					<label>
						<b>事務用品</b><input type="hidden" value="F" name="itemCategory" onclick="submitAction(form6)">
					</label>
				</li>
			</s:form>
			<s:form action="SelectItemCategoryAction" name="form7" value="G">
				<li>
					<label>
						<b>書籍</b><input type="hidden" value="G" name="itemCategory" onclick="submitAction(form7)">
					</label>
				</li>
			</s:form>
			<s:form action="SelectItemCategoryAction" name="form8" value="H">
				<li>
					<label>
						<b>家具</b><input type="hidden" value="H" name="itemCategory" onclick="submitAction(form8)">
					</label>
				</li>
			</s:form>
		</ul>
	</div>
	<div id="main">
		<br>
		<h1>カート一覧</h1>
		<div>
			<s:iterator value="cartDTO">
			<table border="1" cellspacing="0" id="cartmain">
				<tr>
					<td colspan="3"><s:property value="itemName"/></td>
				</tr>
				<tr>
					<td rowspan="4"><img src='<s:property value="url"/>'></td>
					<td><b>商品数量</b></td>
					<td><b>商品単価</b></td>
				</tr>
				<tr>
					<td rowspan="3" height="100"><s:property value="itemStock"/></td>
					<td><s:property value="itemPrice"/>pt</td>
				</tr>
				<tr>
					<td><b>合計金額</b></td>
				</tr>
				<tr>
					<td>200pt</td>
				</tr>
			</table>
			<div id="cartbutton">
				<s:form action="CartCompleteAction" name="cartcomplete">
					<input type="hidden" name="cartId" value='<s:property value="id"/>'>
					<button type="submit" onclick="submitAction(cartcomplete)"><i class="far fa-credit-card"></i></button>
				</s:form>
				<s:form action="CartDeleteAction" name="cartdelete">
					<input type="hidden" name="cartId" value='<s:property value="id"/>'>
					<button type="submit" onclick="submitAction(cartdelete)"><i class="fas fa-trash-alt"></i></button>
				</s:form>
			</div>
			</s:iterator>
		</div>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>