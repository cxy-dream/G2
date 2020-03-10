<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>曲线折线图</title>
</head>
<body>
<div id="c1"></div>
</body>
<script src="static/G2/jquery-2.2.4.min.js"></script>
<script src="static/G2/g2.js"></script>
<script type="text/javascript">

  
    /* $.ajax({
        dataType:'json',
        url : '<c:url value="/findAll.do"/>',
        async:false,//这里选择同步为false，那么这个程序执行到这里的时候会暂停，等待
                    //数据加载完成后才继续执行
        success : function(data){
        	alert(data[0].wname);
        	if(data != null && data != "") {
        		
        		
        	}
        }
    }); */
   

var data = [
	  { month: 'Jan', city: 'Tokyo', temperature: 7 },
	  { month: 'Jan', city: 'London', temperature: 3.9 },
	  { month: 'Feb', city: 'Tokyo', temperature: 6.9 },
	  { month: 'Feb', city: 'London', temperature: 4.2 },
	  { month: 'Mar', city: 'Tokyo', temperature: 9.5 },
	  { month: 'Mar', city: 'London', temperature: 5.7 },
	  { month: 'Apr', city: 'Tokyo', temperature: 14.5 },
	  { month: 'Apr', city: 'London', temperature: 8.5 },
	  { month: 'May', city: 'Tokyo', temperature: 18.4 },
	  { month: 'May', city: 'London', temperature: 11.9 },
	  { month: 'Jun', city: 'Tokyo', temperature: 21.5 },
	  { month: 'Jun', city: 'London', temperature: 15.2 },
	  { month: 'Jul', city: 'Tokyo', temperature: 25.2 },
	  { month: 'Jul', city: 'London', temperature: 17 },
	  { month: 'Aug', city: 'Tokyo', temperature: 26.5 },
	  { month: 'Aug', city: 'London', temperature: 16.6 },
	  { month: 'Sep', city: 'Tokyo', temperature: 23.3 },
	  { month: 'Sep', city: 'London', temperature: 14.2 },
	  { month: 'Oct', city: 'Tokyo', temperature: 18.3 },
	  { month: 'Oct', city: 'London', temperature: 10.3 },
	  { month: 'Nov', city: 'Tokyo', temperature: 13.9 },
	  { month: 'Nov', city: 'London', temperature: 6.6 },
	  { month: 'Dec', city: 'Tokyo', temperature: 9.6 },
	  { month: 'Dec', city: 'London', temperature: 4.8 },
	];

	var chart = new G2.Chart({
		 id: 'c1',
		 forceFit: true,
	  height: 500,
	});

	/* chart.data(data);
	chart.scale({
	  month: {
	    range: [0, 1],
	  },
	  temperature: {
	    nice: true,
	  },
	}); */
	chart.source(data,{
		time:{
		alias: '月份',
		range:[0,1]
	},
	temperature:{
		alias:'平均温度(°C)'
	}
	});

	 /* chart.tooltip({
	  showCrosshairs: true,
	  shared: true,
	});

	chart.axis('temperature', {
	  label: {
	    formatter: function(val){
	      return val + ' °C';
	    },
	  },
	});  */

	

	chart.point().position('month*temperature').color('city').shape('circle');
	chart.line().position('month*temperature').color('city').shape('smooth');
	chart.render();

</script>
</html>