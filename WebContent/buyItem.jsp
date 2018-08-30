<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet" type="text/css">
<title>Buy item</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
  $(document).ready(function(){
    $('.slider').bxSlider({
        auto:true,
        mode:'horizontal',
        speed:1000,
        slideWidth:400
    });
  });
</script>
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
	<form action="SerchAction">
	<div id="serch">
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
	</div>
	</form>
	<div id="left">
		<div id="loginuser">
			<table>
				<tr>
					<td>
						<i class="far fa-credit-card"></i>
					</td>
					<td><p>ポイント:<s:property value="#session.loginUser.getPoint()"/>pt</p></td>
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
		<div id="item">
			<h1 id="itemtitle"><s:property value="itemInfoDTO.getItemTitle()"/></h1>
			<img src='<s:property value="itemInfoDTO.getUrl()"/>' id="itemimage">
			<div id="itemexplan"><s:property value="itemInfoDTO.getItemExplan()"/></div>
			<div id="itemprice">価格:[<s:property value="itemInfoDTO.getItemPrice()"/>pt]</div>
			<s:form action="BuyItemAction" id="buyform">
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
			</s:form>
			<br>
			<div id="itemmain"><s:property value="itemInfoDTO.getItemMain()"/></div>
		</div>
		<br>
		<div id="review">
			<h1>レビュー</h1>
			<s:iterator value="reviewDTO">
			<div id="reviewmain">
				<div><h3><s:property value="title"/></h3></div>
				<div>
					<s:if test='star=="0"'>
						評価:<b>☆☆☆☆☆</b>
					</s:if>
					<s:if test='star=="1"'>
						評価:<b>★☆☆☆☆</b>
					</s:if>
					<s:if test='star=="2"'>
						評価:<b>★★☆☆☆</b>
					</s:if>
					<s:if test='star=="3"'>
						評価:<b>★★★☆☆</b>
					</s:if>
					<s:if test='star=="4"'>
						評価:<b>★★★★☆</b>
					</s:if>
					<s:if test='star=="5"'>
						評価:<b>★★★★★</b>
					</s:if>
				</div>
				<div><s:property value="reviewDate"/></div>
				<div><s:property value="reviewText"/></div>
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