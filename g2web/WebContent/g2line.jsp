<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>简单折线图</title>
    <script src="static/G2/jquery-2.2.4.min.js"></script>
    <script src="static/G2/g2.js"></script>
</head>
<body>
<div id="c1"></div>
<script>
    var data = [
         {"time": "2017-1","name": "中国","data": 43},
         {"time": "2017-2","name": "中国","data": 477},
         {"time": "2017-3","name": "中国","data": 403},
         {"time": "2017-4","name": "中国","data": 243},
         {"time": "2017-5","name": "中国","data": 343},
         {"time": "2017-6","name": "中国","data": 743},
         {"time": "2017-7","name": "中国","data": 543},
         {"time": "2017-8","name": "中国","data": 643},
         {"time": "2017-9","name": "中国","data": 443},
         {"time": "2017-10","name": "中国","data": 243},
         {"time": "2017-11","name": "中国","data": 143},
         {"time": "2017-12","name": "中国","data": 243},
    ];
    var chart = new G2.Chart({
    	id: 'c1',
        forceFit: true,// 这个表示图表宽度自适应，当然你可以自己定义宽度
        height: 450
    });
    chart.source(data, {
        time: {
            alias: '月份',
            range: [0, 1]
        },
        temperature: {
            alias: '平均温度(°C)'
        }
    });
    //chart.line().position('time*data').color('name').size(2);
    chart.line().position('time*data').tooltip('name*data');
    chart.render();
</script>
</body>
</html>