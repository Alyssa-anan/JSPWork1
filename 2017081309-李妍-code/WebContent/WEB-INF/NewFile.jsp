<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>联盟机票</title>
    <style>
  
    </style>
</head>
<body>
    
    <div id="aa">
    	<p class="demo3">机票预订</p><hr>
    	<p class="demo4">选择 --- 预订 --- 核对 --- 支付 --- 完成</p>
    	<p class="demo5"> |航班信息</p>
    	<p class="demo6">
    	海南航空  H07718   【修改航班】【退改签】 2013年06月17日  11:00 周水子国际机场 --起飞      ￥2200/成人</p>
    	<p class="demo7">
    	机型 738  经停  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【修改舱位】&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2013年06月17日  15:40 宝安国际机场 --到达  &nbsp;&nbsp;&nbsp;&nbsp;（含税费）</p><hr>
    
    	<p class="demo8">总价：人数： 机票明细</p>
    	<p class="demo0"> |乘客信息 请准确填写乘客信息（姓名、证件号码），以免在办理登机手续时发生问题。</p>
        <p class="demo10">在常用姓名中搜索 
            <input type="text">&nbsp;&nbsp;
            <input type="checkbox">刘某某&nbsp;
            <input type="checkbox">张某某&nbsp;
            <input type="checkbox">王某某&nbsp;
            <input type="checkbox">李某某&nbsp;&nbsp;&nbsp;
            <select>
                <option>更多</option>
                <option>黄某某</option>
                <option>吴某某</option>
            </select>
        </p> 
        </div>
        
        <div id="a" style="float:left;border-style:solid;border-width:1px">
        	添加乘客：<br>
        	*购票类型：<select>
        	<option>成人票</option>
        	<option>学生票</option>
        	<option>婴儿票</option>
        	</select>￥2200/成人（含税费）&nbsp;&nbsp;退改签<br>
        	*姓&nbsp;&nbsp;名：<input type="text">填写说明<br>
        	*证件类型：<select>
        	<option>护照</option>
        	<option>身份证</option>
        	</select><br>
        	*证件号码：<input type="text">
    	</div>
    	
  	
    <p class="demo11"><button id="add">增加乘客</button></p>
    
   
    
    
	<script type="text/javascript">
		var add = document.getElementById('add');
		var container =document.getElementById('a');
		var node=container.nextSibling;
		add.onclick = function(){
			oDiv = document.createElement('div');
			html1="<div id='div_child_1' style=\"float:left;border-style:solid;border-width:1px\">"
			html2="添加乘客：<br>*购票类型：<select><option>成人票</option><option>学生票</option><option>婴儿票</option></select>￥2200/成人（含税费）&nbsp;&nbsp;退改签<br>"
			html3="*姓&nbsp;&nbsp;名：<input type=\"text\">填写说明<br>"
			html4="*证件类型：<select><option>护照</option><option>身份证</option></select><br>*证件号码：<input type=\"text\"></div>";
			html=html1+html2+html3+html4;
			oDiv.innerHTML = html;
			container.parentNode.insertBefore(oDiv, node)
			node=oDiv.nextSibling;
	}

</script>
</body>
</html>