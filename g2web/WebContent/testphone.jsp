<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>手机叠线图</title>
</head>
<body>
	<div id="c1"></div>
	<input type="button" id="btn" value="点击显示">
</body>
<script src="static/G2/jquery-2.2.4.min.js"></script>
<script src="static/G2/g2.js"></script>
<!-- <script src="static/G2/min.js"></script> -->
<script type="text/javascript">
$("#btn").click(function() {
	$.ajax({
		url : '<c:url value="/findPhone.do"/>',
		dataType : 'json',
		async:false,
		success : function(data) {
			var str ="[";
			var b;
			alert(data[1].brand);
			if(data != null && data != "") {
				 for(var i = 0;i < data.length;i++){
					 /*
					 var d =data[i];
					 var a =[{ feature:'Battery', value : d.battery , phone : d.phonename },
						 { feature:'Brand' , value : d.brand , phone : d.phonename },
						 { feature:'Contract', value : d.contract , phone : d.phonename },
						 { feature:'Design' , value : d.design , phone : d.phonename },
						 { feature:'Internet', value : d.internet , phone : d.phonename },
						 { feature:'Large', value : d.large , phone : d.phonename },
						 { feature:'Price', value : d.price , phone : d.phonename },
						 { feature:'Smartphone', value : d.smartphone , phone : d.phonename }];
					
					str +="{ feature:'Battery', value : "+d.battery+" , phone :"+ d.phonename+" },{ feature:'Brand' , value : "+
							d.brand+" , phone : "+d.phonename+" },{ feature:'Contract', value : "+d.contract+" , phone : "+
							d.phonename+" },{ feature:'Design' , value : "+d.design+" , phone : "+d.phonename+
							" },{ feature:'Internet', value : "+d.internet+" , phone : "+d.phonename+" },{ feature:'Large', value : "+
							d.large+" , phone : "+d.phonename+" },{ feature:'Price', value : "+d.price+" , phone : "+
							d.phonename+" },{ feature:'Smartphone', value : "+d.smartphone+" , phone : "+d.phonename+" }";
					if(i<data.length-1){
						str+=",";
					}
					 */
					
					var a =[
					 { feature:'Battery', value : data[0].battery , phone : data[0].phonename },
					 { feature:'Brand' , value : data[0].brand , phone : data[0].phonename },
					 { feature:'Contract', value : data[0].contract , phone : data[0].phonename },
					 { feature:'Design' , value : data[0].design , phone : data[0].phonename },
					 { feature:'Internet', value : data[0].internet , phone : data[0].phonename },
					 { feature:'Large', value : data[0].large , phone : data[0].phonename },
					 { feature:'Price', value : data[0].price , phone : data[0].phonename },
					 { feature:'Smartphone', value : data[0].smartphone , phone : data[0].phonename },
					 { feature:'Battery', value : data[1].battery , phone : data[1].phonename },
					 { feature:'Brand' , value : data[1].brand , phone : data[1].phonename },
					 { feature:'Contract', value : data[1].contract , phone : data[1].phonename },
					 { feature:'Design' , value : data[1].design , phone : data[1].phonename },
					 { feature:'Internet', value : data[1].internet , phone : data[1].phonename },
					 { feature:'Large', value : data[1].large , phone : data[1].phonename },
					 { feature:'Price', value : data[1].price , phone : data[1].phonename },
					 { feature:'Smartphone', value : data[1].smartphone , phone : data[1].phonename },
					 { feature:'Battery', value : data[2].battery , phone : data[2].phonename },
					 { feature:'Brand' , value : data[2].brand , phone : data[1].phonename },
					 { feature:'Contract', value : data[2].contract , phone : data[2].phonename },
					 { feature:'Design' , value : data[2].design , phone : data[2].phonename },
					 { feature:'Internet', value : data[2].internet , phone : data[2].phonename },
					 { feature:'Large', value : data[2].large , phone : data[2].phonename },
					 { feature:'Price', value : data[2].price , phone : data[2].phonename },
					 { feature:'Smartphone', value : data[2].smartphone , phone : data[2].phonename },
					 ]; 
				 }
				 
			}
			//str += "]";
			
			/* var chart = new G2.Chart({
				container : 'c1', // 指定图表容器 ID
				width : 600, // 指定图表宽度
				height : 300
			// 指定图表高度
			}); */
			var chart = new G2.Chart({
				id : 'c1',
				forceFit : true,
				height : 600,
			});
			chart.source(a);
			/* // Step 2: 载入数据源
			//chart.source(data);
			
			// Step 3：创建图形语法，绘制柱状图，由 genre 和 sold 两个属性决定图形位置，genre 映射至 x 轴，sold 映射至 y 轴
			chart.interval().position('genre*sold').color('genre');
			// Step 4: 渲染图表
			chart.render(); */
			chart.area().position('feature*value').color('phone');
			chart.line().position('feature*value').color('phone');
			chart.point().position('feature*value').color('phone').shape('circle');
			chart.coord('polar');
			chart.render();
		}
	});
});

	

	//使用 point 几何标记绘制点图；
	//使用 position  通道，将对应的变量映射到 x 和 y 位置空间上。
	//chart.source(data);
	
	//Axis 坐标轴可以通过 chart.axis()  接口进行配置
	//Tooltip 提示信息可以通过 chart.tooltip()  接口进行配置
	
	/*  chart.tooltip({
		shared : true,
		showCrosshairs : true,
		
	});  */
	//Legend 图例可以通过 chart.legend()  接口进行配置

	//chart.point().position('feature*value');

	//为了区分  iPhone，Samsung 以及  Nokia Smartphone 三款手机，我们将 phone  字段映射到 color 图形通道上，通过颜色来区分不同手机的数据。
	//chart.point().position('feature*value').color('phone');

	//同样，我们可以通过点形状来区分不同手机的数据，所以我们又将 phone  字段映射至 shape 图形通道，并指定具体的 shape 形状：
	//chart.point().position('feature*value').color('phone').shape('phone', ['circle', 'square', 'triangle']).size(6);

	//折线图
	//chart.line().position('feature*value').color('phone').shape('phone', ['circle', 'square', 'triangle']).size(6);

	//面积图
	//chart.area().position('feature*value').color('phone').shape('phone', ['circle', 'square', 'triangle']).size(6);

	//叠加几何标记
	//chart.area().position('feature*value').color('phone');
	//chart.line().position('feature*value').color('phone');
	//chart.point().position('feature*value').color('phone').shape('circle');

	//我们还可以通过 chart.coord()  接口，一步将以上图形切换至极坐标系下：
	//chart.legend({position: 'right-bottom',});
	/* chart.area().position('feature*value').color('phone');
	chart.line().position('feature*value').color('phone');
	chart.point().position('feature*value').color('phone').shape('circle');

	chart.coord('polar');
	chart.render(); */
</script>
</html>