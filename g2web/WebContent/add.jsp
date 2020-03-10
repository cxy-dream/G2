<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>添加商品</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/jquery/jquery.datepick.css'/>">
<script type="text/javascript"
	src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/jquery/jquery.datepick.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/jquery/jquery.datepick-zh-CN.js'/>"></script>

<script type="text/javascript">
	$(function() {
		$("#addTime").datepick({
			dateFormat : "yy-mm-dd"
		});
	});

	function add() {
		$(".error").text("");
		var bool = true;
		if (!$(":text[name=wname]").val()) {
			
			$("#wnameError").text("商品名称不能为空");
			bool = false;
		}
		if (!$(":text[name=classify]").val()) {
			$("#classifyError").text("商品价格不能为空");
			bool = false;
		}
		if (!$(":text[name=price]").val()) {
			$("#priceError").text("商品价格不能为空");
			bool = false;
		}
		if (!$(":text[name=img]").val()) {
			$("#imgError").text("商品图片不能为空");
			bool = false;
		}
		if (!$(":text[name=keywords]").val()) {
			$("#keywordsError").text("商品关键字不能为空");
			bool = false;
		}
		if (!$(":text[name=pageview]").val()) {
			$("#pageviewError").text("商品点击量不能为空");
			bool = false;
		}
		if (!$(":text[name=addTime]").val()) {
			$("#addTimeError").text("商品添加时间不能为空");
			bool = false;
		}
		if (!$(":text[name=status]").val()) {
			$("#statusError").text("商品状态不能为空");
			bool = false;
			
		}
		if (bool) {
			$("form").submit();
		}
	}
</script>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>

<body>
	<h3 align="center">添加商品</h3>
	<form action="<c:url value='inerst.do'/>" method="post">
		<input type="hidden" name="method" value="addCustomer" /> 
		<input type="hidden" name="wid" value="${customer.wid }" />
		<table border="0" align="center" width="40%"
			style="margin-left: 100px;">
			<tr>
				<td width="100px">商品名称</td>
				<td width="40%"><input type="text" name="wname"
					  /></td>
				<td align="left"><label id="cnameError" class="error">&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td>商品类型</td>
					<td><input type="text" name="classify" id="classify"   /></td>
				<td><label id="classifyError" class="error">&nbsp;</label></td>
			</tr>
			<tr>
				<td>商品价格</td>
				<td><input type="text" name="price" id="price"   /></td>
				<td><label id="priceError" class="error">&nbsp;</label></td>
			</tr>
			
			<tr>
				<td>商品图片</td>
				<td><input type="text" name="img"  />
				</td>
				<td><label id="imgError" class="error">&nbsp;</label></td>
			</tr>
			<tr>
				<td>商品关键字</td>
				<td><input type="text" name="keywords"  />
				</td>
				<td><label id="keywordsError" class="error">&nbsp;</label></td>
			</tr>
			<tr>
				<td>商品点击量</td>
				<td><input type="text" name="pageview"  />
				</td>
				<td><label id="pageviewError" class="error">&nbsp;</label></td>
			</tr>
			<tr>
				<td>商品添加时间</td>
				<td><input type="text" name="addTime" id="addTime" readonly="readonly"
				   /></td>
				<td><label id="addTimeError" class="error">&nbsp;</label></td>
			</tr>
			<tr>
				<td>商品描述</td>
				<td><textarea rows="5" cols="30" name="description"> </textarea>
				</td>
				<td><label id="descriptionError" class="error">&nbsp;</label></td>
			</tr>
			<tr>
				<td>商品状态</td>
				<td><input type="text" name="status"   />
				</td>
				<td><label id="statusError" class="error">&nbsp;</label></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="button" value="添加商品" onclick="add()" /> <input
					type="reset" value="重置" /></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	</form>
</body>
</html>
