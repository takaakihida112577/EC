<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet" type="text/css">
<title>HOME画面</title>
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
  $(document).ready(function(){
    $('.slider').bxSlider({
        auto:true,
        mode:'horizontal',
        speed:2000,
        controls:false,
        pager:false,
        slideWidth:1000
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
						<button type="button" onclick="submitAction(cartaction)"><i class="fas fa-shopping-cart"></i></button>
						</form>
					</td>
					<td>
						<form action="MyPageAction" name="mypageaction">
						<button type="button" onclick="submitAction(mypageaction)"><i class="fas fa-address-card"></i></button>

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
	<br>
	<div class="slider">
    	<div><img src="./img/poster/poster01.png"></div>
    	<div><img src="./img/poster/poster02.png"></div>
    	<div><img src="./img/poster/poster03.jpg"></div>
  	</div>
  	<div class="slider">
    	<div><img src="./img/poster/poster02.png"></div>
    	<div><img src="./img/poster/poster01.png"></div>
    	<div><img src="./img/poster/poster03.jpg"></div>
  	</div>
	</div>
	<div id="main">
		<div id="item">
			<h1>商品一覧</h1>
			<s:if test='!(itemInfoDTO==null)'>
			<s:iterator value="itemInfoDTO">
			<table border="1" cellspacing="0" id="itemtable">
				<tr>
					<td><s:property value="itemTitle"/></td>
				</tr>
				<tr>
					<td>
					<s:form action="SelectItemAction" value="form">
					<label  onclick="submitAction(form)">
						<img src='<s:property value="url"/>'>
						<input type="hidden" name="itemId" value='<s:property value="id"/>'>
					</label>
					</s:form>
					</td>
					<td>
					<s:form action="SelectItemAction" value="form">
					<label  onclick="submitAction(form)">
						<span><s:property value="itemExplan"/></span>
						<input type="hidden" name="itemId" value='<s:property value="id"/>'>
					</label>
					</s:form>
					</td>
				</tr>
			</table>
			</s:iterator>
			</s:if>
			<s:else>
				<h2>検索結果がありません</h2>
			</s:else>
			<div id="pagelist">
				<s:iterator begin="1" end="#session.totalPage" status="page">
				<s:if test='#session.currentPageNo == #page.count'>
					<span><s:property value="%{#page.count}"/></span>
				</s:if>
				<s:else>
					<span><a href="<s:url action='SelectItemCategoryAction'><s:param name='pageNo' value='%{#page.count}'/><s:param name='itemCategory' value='%{itemCategory}' /></s:url> "><s:property value="%{#page.count}"/></a></span>
				</s:else>
				</s:iterator>
			</div>
		</div>
	</div>
	<div id="footer">
		<p style="color:white">All Rights Reserved. Copyright (c) 2018, sampleEC Ltd.</p>
	</div>
</div>
</body>
</html>