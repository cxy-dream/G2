<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>柱状图</title>
<!-- 引入 G2 文件 -->
<script src="static/G2/min.js"></script>
</head>
<body>
	<%--  <!-- 创建图表容器 -->
    <c:forEach var="p" items="${ps}">
	<tr>
		<td>${p.id}</td>
	</tr>
</c:forEach> --%>
	<div id="c1"></div>
	<input type="button" id="btn" value="点击显示">

</body>
<script type="text/javascript" src="static/G2/jquery-2.2.4.min.js"></script>
<script>
	/* function load_val(){
	    var result;
	    $.ajax({
	        dataType:'json',
	        url : '<c:url value="/findAll.do"/>',
	        async:false,//这里选择同步为false，那么这个程序执行到这里的时候会暂停，等待
	                    //数据加载完成后才继续执行
	        success : function(data){
	        	alert(data[0].wname);
	            result = data;
	        }
	    });
	    return result;
	} */
	//alert(load_val);
	

	/*    */

	//alert(load_val().data);
	$("#btn").click(function() {
		$.ajax({
			url : '<c:url value="/json.do"/>',
			dataType : 'json',
			async:false,
			success : function(data) {
				alert(data[0].wname);
				if(data != null && data != "") {
					 var a =[{ genre: data[0].wname, sold: data[0].price },
						 { genre: data[1].wname, sold: data[1].price },
						 { genre: data[2].wname, sold: data[2].price },
						 ];
					 }
				var chart = new G2.Chart({
					container : 'c1', // 指定图表容器 ID
					width : 600, // 指定图表宽度
					height : 300
				// 指定图表高度
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

	/* alert(a[0]); */
	/*  var data =[
	    { genre: a[0].wname, sold: a[0].price },
	    { genre: a[0].wname, sold: a[0].price },
	    { genre: 'Action', sold: 120 },
	    { genre: 'Shooter', sold: 350 },
	    { genre: 'Other', sold: 150 } 
	  ]; */
	// G2 对数据源格式的要求，仅仅是 JSON 数组，数组的每个元素是一个标准 JSON 对象。
	// Step 1: 创建 Chart 对象
	/* var chart = new G2.Chart({
		container : 'c1', // 指定图表容器 ID
		width : 600, // 指定图表宽度
		height : 300
	// 指定图表高度
	});
	// Step 2: 载入数据源
	//chart.source(data);
	chart.source(a);
	// Step 3：创建图形语法，绘制柱状图，由 genre 和 sold 两个属性决定图形位置，genre 映射至 x 轴，sold 映射至 y 轴
	chart.interval().position('genre*sold').color('genre')
	// Step 4: 渲染图表
	chart.render(); */
</script>
</html>