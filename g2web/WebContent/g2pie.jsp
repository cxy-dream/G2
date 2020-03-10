<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pie</title>
</head>
<body>
	<div id="c1"></div>
</body>
<script src="static/G2/jquery-2.2.4.min.js"></script>
<script src="static/G2/g2.js"></script>
<script src="static/G2/data-set.js"></script>
<script type="text/javascript">
const data = [
	  { location: '三亚', value: 44.9 },
	  { location: '千岛湖', value: 19.7 },
	  { location: '柬埔寨', value: 17.3 },
	  { location: '呼伦贝尔', value: 14.4 },
	  { location: '苏梅岛', value: 2.5 },
	  { location: '塞班岛', value: 2.5 }
	];
	const chart = new G2.Chart({
		id: 'c1',
	  forceFit : true,
	  height: 600,
	});
	chart.source(data);
	chart.legend({
	  position: 'right-center',
	  offsetX: -100
	});
	
	chart.coord('theta', {
	  radius: 0.75
	});
	chart.intervalStack().position('value').color('location', [ '#1890ff', '#37c661', '#fbce1e', '#2b3b79', '#8a4be2', '#1dc5c5' ])
	  .style({
	    stroke: 'white',
	    lineWidth: 1
	  })
	  .label('value', val => {
	    if (val < 3) {
	      return null;
	    }
	    return {
	      offset: -30,
	      textStyle: {
	        fill: 'white',
	        fontSize: 14,
	        shadowBlur: 2,
	        shadowColor: 'rgba(0, 0, 0, .45)'
	      },
	      formatter: text => {
	        return text + '%';
	      }
	    };
	  });
	chart.render();
/* const data = [
	  { k: '一', v: 40 }, 
	  { k: '二', v: 21 }, 
	  { k: '三', v: 17 },
	  { k: '四', v: 13 }, 
	  { k: '五', v: 9 }
	]
	const dv = new DataSet.View().source(data) // 载入数据
	  .transform({ // 数据处理：统计每一个 key 对应数值 value 占总和的比例
	    type: 'percent',
	    field: 'v',
	    dimension: 'k',
	    as: 'percent'
	  });
	const chart = new G2.Chart({
	  container: 'id' // 指定图表容器，可以是 DomNode，也可以是 id
	});
	chart.source(dv);               // 载入数据
	chart.coord('polar').transpose(); // 坐标转换
	chart.intervalStack()            // interval 类型的 element，做堆叠处理
	  .position('1*percent')         // 位置映射
	  .color('k');                    // 颜色映射
	chart.render(); */
	
	
/* var data = [
	  { type: '一线城市', value: 0.19 },
	  { type: '二线城市', value: 0.21 },
	  { type: '三线城市', value: 0.27 },
	  { type: '四线及以下', value: 0.33 },
	];
var chart = new G2.Chart({
	id:'c1',
	 autoFit: false,
	  width: 600,
	  height: 300,
	});
	chart.source(data);
	chart.legend(false);
	chart.coord('theta', {
	  radius: 0.75,
	});
	chart.tooltip({
	  showMarkers: false
	});

	var interval = chart
	  .interval()
	  //.adjust('stack')
	  .position('value')
	  .color('type', ['#063d8a', '#1770d6', '#47abfc', '#38c060'])
	  .style({ opacity: 0.4 })
	  .label('type', (val) => {
		  var opacity = val === '四线及以下' ? 1 : 0.5;
	    return {
	      offset: -30,
	      style: {
	        opacity,
	        fill: 'white',
	        fontSize: 12,
	        shadowBlur: 2,
	        shadowColor: 'rgba(0, 0, 0, .45)',
	      },
	      content: (obj) => {
	        return obj.type + '\n' + obj.value + '%';
	      },
	    };
	  });

	chart.interaction('element-single-selected');

	chart.render();

	// 默认第一个选中
	var elements = interval.elements;
	elements[0].setState('selected', true); */

	/* var dv = new DataSet.DataView();
	dv.source(data).transform({
		  type: 'percent',
		  field: 'value',
		  dimension: 'type',
		  as: 'percent',
		}); */
	


	/* chart.source(data,{
		time:
	}) */

</script>
</html>