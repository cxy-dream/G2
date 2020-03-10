<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
格式化时间和货币
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<body>
money:<br/>
    <spring:eval expression="contentModel.money"></spring:eval><br/>
    date:<br/>
    <spring:eval expression="contentModel.date"></spring:eval><br/>
</body>
 --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>客户列表</title>

<style type="text/css">
table {
	border-collapse: collapse;
	border: 1px solid gray;
}

table tr td, table tr th {
	text-align: center;
	border: 1px solid gray;
}
 #search{
 height:32px;
 width:500px;
 right:200px;
 border-radius:20px;
 font-size:14px;
 background-color:#fff;
 outline:none;

 }
</style>
</head>
<body>
<div align="center">

请输入关键字：<input type="text" name="username" id="search"/>
</div>
	<h3 align="center">商品列表</h3>
	<div align ="center" id="stuTable">
	<table border="1" width="70%" align="center">
		<tr>
			<th>商品名称</th>
			<th>商品类型</th>
			<th>商品价格</th>
			<th>商品编码</th>
			<th>商品图标</th>
			<th>商品关键字</th>
			<th>商品点击量</th>
			<th>商品时间</th>
			<th>商品描述</th>
			<th>商品状态</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${all }" var="c">
			<tr>
				<td>${c.wname }</td>
				<td>${c.classify }</td>
				<td>${c.price }</td>
				<td>${c.wnum }</td>
				<td>${c.img }</td>
				<td>${c.keywords }</td>
				<td>${c.pageview }</td>
				<td>${c.addTime }</td>
				<td>${c.description }</td>
				<td><c:choose>
		 	<c:when test="${c.status==1 }">上架</c:when>
		 	<c:when test="${c.status==0 }">下架</c:when>
		 	<c:when test="${c.status==-1 }">已删除</c:when>
		 	<%-- <c:otherwise></c:otherwise> --%>
		 </c:choose></td>
				<td><a
					href='<c:url value='/findBId.do?wid=${c.wid}'/>'>编辑</a>
					<a
					href='<c:url value='/delete.do?wid=${c.wid}'/>'>删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<div align="center" id="c1"></div>
	<input type="button" id="btn" value="点击显示">
</body>
<script src="static/G2/min.js"></script>
<script type="text/javascript" src="jquery/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
$("#btn").click(function() {
	$.ajax({
		url : '<c:url value="/findB.do"/>',
		dataType : 'json',
		async:false,
		success : function(data) {
			alert(data[0].wname);
			if(data != null && data != "") {
				 var a =[
					 { genre: data[0].wname, sold: data[0].price },
					 { genre: data[1].wname, sold: data[1].price },
					 { genre: data[2].wname, sold: data[2].price },
					 { genre: data[3].wname, sold: data[3].price },
					 { genre: data[4].wname, sold: data[4].price },
					 ];
				 }
			/* var chart = new G2.Chart({
				container : 'c1', // 指定图表容器 ID
				width : 600, // 指定图表宽度
				height : 300
			// 指定图表高度
			}); */
			const chart = new G2.Chart({
				id : 'c1',
				forceFit : true,
				height : 600,
			});
			// Step 2: 载入数据源
			//chart.source(data);
			chart.source(a);
			// Step 3：创建图形语法，绘制柱状图，由 genre 和 sold 两个属性决定图形位置，genre 映射至 x 轴，sold 映射至 y 轴
			chart.interval().position('genre*sold').color('genre');
			// Step 4: 渲染图表
			chart.render();
		}
	});
});
</script>
<script type="text/javascript">
$("#btn").click(function() {
	$.ajax({
		url : '<c:url value="/findB.do"/>',
		dataType : 'json',
		async:false,
		success : function(data) {
			alert(data[0].wname);
			if(data != null && data != "") {
				 var a =[
					 { genre: data[0].wname, sold: data[0].price, classies:'价格'},
					 { genre: data[1].wname, sold: data[1].price, classies:'价格'},
					 { genre: data[2].wname, sold: data[2].price, classies:'价格'},
					 { genre: data[3].wname, sold: data[3].price, classies:'价格'},
					 { genre: data[4].wname, sold: data[4].price, classies:'价格'},
					 { genre: data[0].wname, sold: data[0].pageview, classies:'点击量'	},
					 { genre: data[1].wname, sold: data[1].pageview, classies:'点击量'	},
					 { genre: data[2].wname, sold: data[2].pageview, classies:'点击量'	},
					 { genre: data[3].wname, sold: data[3].pageview, classies:'点击量'	},
					 { genre: data[4].wname, sold: data[4].pageview, classies:'点击量'	}
					 ];
				 }
			/* var chart = new G2.Chart({
				container : 'c1', // 指定图表容器 ID
				width : 600, // 指定图表宽度
				height : 300
			// 指定图表高度
			}); */
			const chart = new G2.Chart({
				id : 'c1',
				forceFit : true,
				height : 600,
			});
			// Step 2: 载入数据源
			//chart.source(data);
			chart.source(a);
			// Step 3：创建图形语法，绘制柱状图，由 genre 和 sold 两个属性决定图形位置，genre 映射至 x 轴，sold 映射至 y 轴
			//chart.interval().position('genre*sold').color('genre');
			chart.area().position('genre*sold').color('classies');
			chart.line().position('genre*sold').color('classies');
			chart.point().position('genre*sold').color('classies').shape('circle');
			// Step 4: 渲染图表
			chart.render();
		}
	});
});
</script>


<script type="text/javascript">
$(function() {
	$("#search").change(function(){
		$.ajax({
			url:'<c:url value="/findBykey.do"/>',
			data:'keywords=' + $("#search").val(),
			dataType:'json',
			success:function(data){
				var str = "<table><tr><th>商品名称</th><th>商品类型</th><th>商品价格</th><th>商品编码</th><th>商品图标</th>"+
				"<th>商品关键字</th><th>商品点击量</th><th>商品时间</th><th>商品描述</th><th>商品状态</th><th>操作</th></tr>";
				
				if(data != null && data != "") {
					/*var arr = data.list  */
				 for(var i = 0;i < data.length;i++){
					 var a=data[i];
					 var s=null;
					 if(a.status==1){
						 s="上架";
					 }else if(a.status==0){
						 s="下架";
					 }else if(a.status==(-1)){
						 s="已删除";
					 };
					 str += "<tr><td>"+a.wname+"</td><td>"+a.classify+"</td><td>"+a.price
					 +"</td><td>"+a.wnum+"</td><td>"+a.img+"</td><td>"+a.keywords
					 +"</td><td>"+a.pageview+"</td><td>"+a.addTime+"</td><td>"+a.description
					 +"</td><td>"+s
					 +"</td><td><a href=\"/20190910SSM/delete.do?wid="+a.wid+"\"><button>删除 </button></a>&emsp;<a href=\"/20190910SSM/findById.do?wid="+a.wid+"\"><button>修改 </button></a>"+"</td></tr>"
					 alert(a.wname);
				 }  
			   }
				str += "</table>";
				$("#stuTable").html($(str));
			},
			error:function(){ //表示请求失败后调用的函数
				alert("你访问的资源不存在！");
			}
		});
	});
});

</script>
</html>
