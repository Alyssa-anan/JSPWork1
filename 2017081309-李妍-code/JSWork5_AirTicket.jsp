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
        body{
       	    
        	background-image:url(C:/Users/dell/Desktop/1.jpg);
            
        }
        b.demo1{
        	position:relative;
         	top:15px;
        	float:left;
        }
        ul{
            list-style-type: none;
            float:right;
        }
        li{
            float:left;
        }
        a{
            text-decoration: none;
            color:black;
            background-color:none;
            font-weight:bold;
            text-transform:uppercase;
        }
        a:hover,a:active
        {
            background-color:orange;
            color:white;
        }
        b.demo2{
        	position:absolute;
         	top:50px;
        	left:50px;
        	color:white;
        	font-size:30px;
        	font-family:sans-serif;
        }
        div#aa{
        	position:absolute;
        	top:100px;
        	left:50px;
        	width:1200px;
        	height:3000px;
        	background-color:white;
        }
        div#left{
        	position:absolute;
        	top:70px;
        	left:30px;
        	width:900px;
        	height:785px;
        	background-color:white;
        }
        
        div#bottom{
           
            width:1100px;
        	height:500px;
            
        }
        div#point{
            position:absolute;
            right:30px;
            top:70px;
            width:200px;
        	height:700px;
        	background-color:white;
        }
        
    </style>
</head>
<body>
    <b class="demo1">今天是2019年12月9日  晴  0~7°C</b>
    <ul>
        <li><a href="http://www.4399.com/">登录 |</a></li>
        <li><a href="http://www.4399.com/">免费注册 |</a></li>
        <li><a href="http://www.4399.com/">手机客户端下载 |</a></li>
        <li><a href="http://www.4399.com/">设为首页 |</a></li>
        <li><a href="http://www.4399.com/">加入收藏夹</a></li>
    </ul>
    <b class="demo2">联盟.机票</b>

    <div id="aa">
        <h3 style="color:rgb(223, 171, 197)">&nbsp;&nbsp;机票预订</h3><hr>
        <div id="left">
    	<p align="right"><span style="color:rgb(223, 91, 157)">●选择 --- ●预订 ---</span> <span style="color:grey">●核对 --- ●支付 --- ●完成&nbsp;&nbsp;</span></p>
    	<p style="background-color:rgb(223, 171, 197);font-size:20px;color:rgb(107, 104, 104)"> &nbsp;▍航班信息</p>
    	<p class="demo6">
            <img src="C:/Users/dell/Desktop/3.jpg" align="left" width="55" height="55">&nbsp;
    	海南航空  H07718  <span style="color:violet"> 【修改航班】【退改签】 </span>2013年06月17日  11:00 周水子国际机场 --起飞      ￥2200/成人</p>
    	<p class="demo7">
    	&nbsp;&nbsp;机型 738 <span style="color:violet">  经停  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【修改舱位】</span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2013年06月17日  15:40 宝安国际机场 --到达  &nbsp;&nbsp;&nbsp;&nbsp;（含税费）</p><hr>
    
    	<p class="demo8">总价：￥2200（含税费）人数：1人&nbsp;&nbsp; <span style="color:violet"> 机票明细</span></p>
    	<p style="background-color:rgb(223, 171, 197);font-size:20px;color:rgb(107, 104, 104)">  &nbsp;▍乘客信息 <span style="color:rgb(233, 108, 108);font-size: 15px;">请准确填写乘客信息（姓名、证件号码），以免在办理登机手续时发生问题。</span></p>
        <p class="demo10">在常用姓名中搜索 
            <input type="text">&nbsp;&nbsp;
            <input type="radio" id="liu"  onclick='checkbox(this)' name="only">刘某某&nbsp;
            <input type="radio" id="zhang" onclick='checkbox(this)' name="only">张某某&nbsp;
            <input type="radio" id="wang" onclick='checkbox(this)' name="only">王某某&nbsp;
            <input type="radio" id="li" onclick='checkbox(this)' name="only">李某某&nbsp;&nbsp;&nbsp;
            <select>
                <option>更多</option>
                <option>黄某某</option>
                <option>吴某某</option>
            </select>
        </p> 
        
        
        <div id="a" style="border-style:solid;border-width:1px;border-color: rgb(170, 145, 145);">
               
           
        	添加乘客： <img id="test" src="C:/Users/dell/Desktop/2.jpg" width="25" height="25" align="right"  onclick='test(this)'/>
            <br>
        	 <table align="center">
                <tr align="left">
                    <td>*购票类型：</td>
                    <td><select>
                            <option>成人票</option>
                            <option>学生票</option>
                            <option>婴儿票</option>
                            </select>
                    </td>
                    <td>￥2200/成人（含税费）</td>
                    <td><span style="color:violet">退改签</span></td>
                </tr>
                <tr align="left">
                    <td>*姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
                    <td><input type="text" id="name"></td>
                    <td><span style="color:violet" title="姓名需与乘机证件一致，否则会影响登机">&nbsp;填写说明</span></td>
                    <td>&nbsp;</td>
                </tr>
                <tr align="left">
                    <td>*证件类型：</td>
                    <td><select>
                            <option>护照</option>
                            <option>身份证</option>
                            </select>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr align="left">
                        <td>*证件号码：</td>
                        <td><input type="text" id="number"></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
            </table>
        
    	</div>
    	
    <div style="background-color:white">	
    <p class="demo11" align="right"><button id="add" style="color:palevioletred">增加乘客</button></p>
    <p style="background-color:rgb(223, 171, 197);font-size:20px;color:rgb(107, 104, 104)">  &nbsp;▍联系人信息 <span style="color:rgb(233, 108, 108);font-size: 15px;">请您准确填写联系人信息（联系人、手机号码、E-mail),以使我们与您联系。</span></p>
    <table align="center">
            <tr align="left">
                <td>*联系人：</td>
                <td><input type="text"></td>
            </tr>
            <tr align="left">
                <td>*手机号码：</td>
                <td><input type="text"></td>
            </tr>
            <tr align="left">
                <td>联系电话：</td>
                <td><input type="text" style="width:35px; height:20px;color:grey;" value="区号">&nbsp;<input type="text" style="width:60px; height:20px;color:grey;" value="电话号码">&nbsp;<input type="text" style="width:35px; height:20px;color:grey;" value="分机"></td>
            </tr>
            <tr align="left">
                    <td>传真号码：</td>
                    <td><input type="text" style="width:35px; height:20px;color:grey;" value="区号">&nbsp;<input type="text" style="width:60px; height:20px;color:grey;" value="电话号码">&nbsp;<input type="text" style="width:35px; height:20px;color:grey;" value="分机"></td>
            </tr>
            <tr align="left">
                <td>E-mail：</td>
                <td><input type="text"></td>
            </tr>
            <tr align="left">
                <td>联系地址：</td>
                <td><input type="text"></td>
            </tr>
        </table><hr>
     <p id="demo13" align="center"><button>上一步</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>下一步</button></p>
    </div>
    	<div id="bottom" style="background-color:white">
                <div style="border-style:solid;border-width:1px;border-color: rgb(170, 145, 145);">
                    <table align="center" cellspacing="10">
                        <tr align="left">
                            <th>新手指南</th>
                            <th>支付方式</th>
                            <th>品质服务</th>
                            <th>帮助信息</th>
                        </tr>
                        <tr align="left">
                            <td>--------------------------</td>
                            <td>--------------------------</td>
                            <td>--------------------------</td>
                            <td>--------------------------</td>
                        </tr>
                        <tr align="left">
                            <td>预定步骤</td>
                            <td>在线支付</td>
                            <td>退改签说明</td>
                            <td>免费邮寄行程单/保险发票</td>
                        </tr>
                        <tr align="left">
                            <td>订单查询</td>
                            <td>开通财付通</td>
                            <td>行程单配送方式</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>航空意外险</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </div>
                <div align="center">
                    <br>
                    关于我们 | 联系我们 | 用户协议 | 帮助信息<br>
                    Copyright©2012 商家联盟 版权所有 辽ICP备09013204号-2<br><br>
                </div>
                </div>  
            
    </div>
          <div id="point">
                <div  style="border-style:solid;border-width:1px;border-color: rgb(170, 145, 145);">
                <b style="color:grey">❤ 贴心提示</b><hr>
                <div style="color:grey">
                   &nbsp;&nbsp; ●航班查询<br>
                   &nbsp;&nbsp; ●机票价格<br>
                   &nbsp;&nbsp; ●支付方式<br>
                   &nbsp;&nbsp; ●配送方式<br>
                   &nbsp;&nbsp; ●行程单/报销凭证/发票&nbsp;<br>
                   &nbsp;&nbsp; ●订单修改与取消<br>
                   &nbsp;&nbsp; ●乘机常识<br> <br>
            </div>
                </div>
        </div>
                
    </div>
 
	<script type="text/javascript">
		var add = document.getElementById('add');
		var container =document.getElementById('a');
		var node=container.nextSibling;
		add.onclick = function(){
			oDiv = document.createElement('div');
			html="<br><div id='div_child_1' style=\"border-style:solid;border-width:1px;border-color: rgb(170, 145, 145);\">\
            添加乘客： <img id=\"test\" src=\"C:/Users/dell/Desktop/2.jpg\" width=\"25\" height=\"25\" align=\"right\"  onclick='test(this)'> <br>\
        	 <table align=\"center\">\
                <tr align=\"left\">\
                    <td>*购票类型：</td>\
                    <td><select>\
                            <option>成人票</option>\
                            <option>学生票</option>\
                            <option>婴儿票</option>\
                            </select>\
                    </td>\
                    <td>￥2200/成人（含税费）</td>\
                    <td><span style=\"color:violet\">退改签</span></td>\
                </tr>\
                <tr align=\"left\">\
                    <td>*姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>\
                    <td><input type=\"text\"></td>\
                    <td><span style=\"color:violet\" title=\"姓名需与乘机证件一致，否则会影响登机\">&nbsp;填写说明</span></td>\
                    <td>&nbsp;</td>\
                </tr>\
                <tr align=\"left\">\
                    <td>*证件类型：</td>\
                    <td><select>\
                            <option>护照</option>\
                            <option>身份证</option>\
                            </select>\
                    </td>\
                    <td>&nbsp;</td>\
                    <td>&nbsp;</td>\
                </tr>\
                <tr align=\"left\">\
                        <td>*证件号码：</td>\
                        <td><input type=\"text\"></td>\
                        <td>&nbsp;</td>\
                        <td>&nbsp;</td>\
                    </tr>\
            </table>"
			oDiv.innerHTML = html;
			container.parentNode.insertBefore(oDiv, node)
			node=oDiv.nextSibling;
	}
    function test(test){
        test.parentNode.parentNode.removeChild(test.parentNode);
    }
    function checkbox(checkbox){
       if(checkbox.checked==true){
        var a=checkbox.id;
        if(a=="liu"){
            document.getElementById("name").value="刘某某";
            document.getElementById("number").value="232332199808073431"; 
        }
        if(a=="wang"){
            document.getElementById("name").value="王某某";
            document.getElementById("number").value="237853199803473431"; 
        }
        if(a=="zhang"){
            document.getElementById("name").value="张某某";
            document.getElementById("number").value="245321199808073321"; 
        }
        if(a=="li"){
            document.getElementById("name").value="李某某";
            document.getElementById("number").value="234531199743231123"; 
        }
       }
    }
    
</script>
</body>
</html>