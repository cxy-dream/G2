<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>叠线图</title>
</head>
<body>
	<div id="c1"></div>
</body>
<script src="static/G2/jquery-2.2.4.min.js"></script>
<script src="static/G2/g2.js"></script>
<!-- <script src="static/G2/min.js"></script> -->
<script type="text/javascript">
	const data = [ {
		feature : 'Battery',
		value : 0.22,
		phone : 'iPhone'
	}, {
		feature : 'Brand',
		value : 0.28,
		phone : 'iPhone'
	}, {
		feature : 'Contract',
		value : 0.29,
		phone : 'iPhone'
	}, {
		feature : 'Design',
		value : 0.17,
		phone : 'iPhone'
	}, {
		feature : 'Internet',
		value : 0.22,
		phone : 'iPhone'
	}, {
		feature : 'Large',
		value : 0.02,
		phone : 'iPhone'
	}, {
		feature : 'Price',
		value : 0.21,
		phone : 'iPhone'
	}, {
		feature : 'Smartphone',
		value : 0.5,
		phone : 'iPhone'
	}, {
		feature : 'Battery',
		value : 0.27,
		phone : 'Samsung'
	}, {
		feature : 'Brand',
		value : 0.16,
		phone : 'Samsung'
	}, {
		feature : 'Contract',
		value : 0.35,
		phone : 'Samsung'
	}, {
		feature : 'Design',
		value : 0.13,
		phone : 'Samsung'
	}, {
		feature : 'Internet',
		value : 0.2,
		phone : 'Samsung'
	}, {
		feature : 'Large',
		value : 0.13,
		phone : 'Samsung'
	}, {
		feature : 'Price',
		value : 0.35,
		phone : 'Samsung'
	}, {
		feature : 'Smartphone',
		value : 0.38,
		phone : 'Samsung'
	}, {
		feature : 'Battery',
		value : 0.26,
		phone : 'Nokia Smartphone'
	}, {
		feature : 'Brand',
		value : 0.1,
		phone : 'Nokia Smartphone'
	}, {
		feature : 'Contract',
		value : 0.3,
		phone : 'Nokia Smartphone'
	}, {
		feature : 'Design',
		value : 0.14,
		phone : 'Nokia Smartphone'
	}, {
		feature : 'Internet',
		value : 0.22,
		phone : 'Nokia Smartphone'
	}, {
		feature : 'Large',
		value : 0.04,
		phone : 'Nokia Smartphone'
	}, {
		feature : 'Price',
		value : 0.41,
		phone : 'Nokia Smartphone'
	}, {
		feature : 'Smartphone',
		value : 0.3,
		phone : 'Nokia Smartphone'
	}, ];

	const chart = new G2.Chart({
		id : 'c1',
		forceFit : true,
		height : 600,
	});

	//使用 point 几何标记绘制点图；
	//使用 position  通道，将对应的变量映射到 x 和 y 位置空间上。
	chart.source(data);
	
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
	chart.area().position('feature*value').color('phone');
	chart.line().position('feature*value').color('phone');
	chart.point().position('feature*value').color('phone').shape('circle');

	chart.coord('polar');
	chart.render();
</script>
</html>