<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>MineSweeping</title>
        <style>
            .box{
                position:relative;
            }
            .father{
                position: relative;
            }
            .box div{
                width:20px;
                height:20px;
                background-color: grey;
                border:2px solid #666;
                border-top-color: white;
                border-left-color: white;
                position:absolute;
                text-align: center;
            }
            .shadow{
                position:absolute;
                top:0;
                left:0;
                background-color: rgba(0,0,0,.5);
                display: none;
                text-align: center;
            }
            .btn{
                margin-top:100px;
                width:80px;
                height:30px;
            }
            .win{
                position:absolute;
                top:0;
                left:0;
                background-color: rgba(0,0,0,.5);
                display: none;
                text-align: center;
                color:#fff;
            }
        </style>
    </head>
    <body>
        <section class="father">
            <div class="box"></div>
            <div class="shadow">
                <input type="button" class = "btn" value="再来一次"/>
            </div>
            <div class="win">
                <p>游戏胜利</p>
                <input type="button" class = "btn1" value="再来一次"/>
            </div>
        </section>
         
    </body>
    <script type="text/javascript">
        // 计算雷点
        var index = 0;
        // 生成页面
        page(10,10);
        state();
        leiClick();
        leiM();
        leiOpen();
        More();
        rightClick();
        //封装界面初始值
        function state(){
            // 设置界面宽度
            var dives = document.querySelectorAll('.box div');
             
            var box = document.querySelector('.box');
             
            var shadow = document.querySelector('.shadow');
 
            var win1 = document.querySelector('.win');
             
            box.style.width = dives.length/10*24 + 'px';
             
            box.style.height = dives.length/10*24 + 'px';
             
            shadow.style.width = dives.length/10*24 + 'px';
 
            shadow.style.height = dives.length/10*24 + 'px';
            win1.style.width = dives.length/10*24 + 'px';
 
            win1.style.height = dives.length/10*24 + 'px';
        }
        // 封装生成页面函数
        function page(row,con){
             
            var box = document.querySelector('.box');
             
            var html = '';
             
            for(var i =0;i<row;i++){
                 
                for(var j =0;j<con;j++){
                     
                    html += '<div style="top:'+i*24+'px;left:'+j*24+'px;"></div>';
                     
                }
            }
            box.innerHTML = html;
        }
        // 给雷点添加点击事件
        function leiClick(){
            // 设置雷点
            var dives = document.querySelectorAll('.box div');
             
            var num = 10;
             
            var arr = [];
             
            for(var i =0;i<num;i++){
                 
                var n =Math.floor(Math.random()*dives.length);
                 
                 
                var onOff = false;
                 
                for(var j =0;j<arr.length;j++){
                     
                    if(n==arr[j]){
                        onOff = true;
                        break;
                    }
                }
                if(!onOff){
                    arr.push(n);
                }else{
                    i--;
                }
            }
            // 布置雷点
            for(var i =0;i<arr.length;i++){
                dives[arr[i]].className = 'boom';
            }
            for(var i =0;i<arr.length;i++){
             
                dives[arr[i]].onclick = function(){
                    if (this.onOff) return;
                    var lei = document.querySelectorAll('.boom');
                     
                    var shadow = document.querySelector('.shadow');
 
                    shadow.style.display = 'block';
                     
                    fn(0);
                     
                    function fn(num){
                        setTimeout(function(){
                             
                            lei[num].style.backgroundColor = 'orange';
                             
                            lei[num].innerHTML = '雷';
                             
                            if(num+1<lei.length){
                                 
                                fn(num+1);
                                 
                            }
                        },200)
                    }
                     
                }
            }
        }
        // 计算雷点个数
        function leiM(){
            var dives = document.querySelectorAll('.box div');
         
            for(var i =0;i<dives.length;i++){
                 
                if(dives[i].className=='boom') continue;
                 
                var num = 0;
                // 上
                if(dives[i-10]&&dives[i-10].className=='boom'){
                    num++;
                }
                //下
                if(dives[i+10]&&dives[i+10].className=='boom'){
                    num++;
                }
                if(i%10!=0){
                    // 左
                    if(dives[i-1]&&dives[i-1].className=='boom'){
                        num++;
                    }
                    //左上
                    if(dives[i-11]&&dives[i-11].className=='boom'){
                        num++;
                    }
                    //左下
                    if(dives[i+9]&&dives[i+9].className=='boom'){
                        num++;
                    }
                }
                if(i%10!=9){
                    // 右
                    if(dives[i+1]&&dives[i+1].className=='boom'){
                        num++;
                    }
                    // 右上
                    if(dives[i-9]&&dives[i-9].className=='boom'){
                        num++;
                    }
                    // 右下
                    if(dives[i+11]&&dives[i+11].className=='boom'){
                        num++;
                    }
                }
                if(num>0){
                    dives[i].num = num;
                }
                 
            }
        }
        //打开空雷点
        function leiOpen(){
            var dives = document.querySelectorAll('.box div');
             
            for(var i =0;i<dives.length;i++){
                 
                if(dives[i].className!='boom'){
                     
                    dives[i].index = i;
                     
                    dives[i].onclick = function(){
                        var winGame = document.querySelector('.win')
                        findLei(dives,this.index);
                        if(index==90){
                            winGame.style.display = 'block';
                            win();
                        }
                    }
                }
            }
        }
        // 再玩一次
        function More(){
            var btn = document.querySelector('.btn');
            btn.onclick = function(){
                index = 0;
                var shadow = document.querySelector('.shadow');
                shadow.style.display = 'none';
                // 生成页面
                page(10,10);
                state();
                leiClick();
                leiM();
                leiOpen();
                rightClick();
                 
            }
        }
        function win(){
            var btn = document.querySelector('.btn1');
            btn.onclick = function(){
                index = 0;
                var win1 = document.querySelector('.win');
                win1.style.display = 'none';
                // 生成页面
                page(10,10);
                state();
                leiClick();
                leiM();
                leiOpen();
                rightClick();
 
            }
        }
 
        function findLei(dives,i){
            if(dives[i].onOff) return;
             
            dives[i].onOff = true;
            if(dives[i].onOff) index++;
            console.log(index);
            dives[i].style.border = '1px solid #ccc';
             
            dives[i].innerHTML = dives[i].num||'';
             
            dives[i].style.backgroundColor = '#f1f1f1';
             
            dives[i].style.width = '22px';
             
            dives[i].style.height = '22px';
             
            if(!dives[i].num){
                 
                if(dives[i-10]&&dives[i-10].className!='boom'){
                     
                    findLei(dives,i-10);
                }
                //下
                if(dives[i+10]&&dives[i+10].className!='boom'){
                     
                    findLei(dives,i+10);
                     
                }
                if(i%10!=0){
                    // 左
                    if(dives[i-1]&&dives[i-1].className!='boom'){
                         
                        findLei(dives,i-1);
                    }
                    //左上
                    if(dives[i-11]&&dives[i-11].className!='boom'){
                         
                        findLei(dives,i-11);
                         
                    }
                    //左下
                    if(dives[i+9]&&dives[i+9].className!='boom'){
                         
                        findLei(dives,i+9);
                         
                    }
                }
                if(i%10!=9){
                    // 右
                    if(dives[i+1]&&dives[i+1].className!='boom'){
                         
                        findLei(dives,i+1);
                         
                    }
                    // 右上
                    if(dives[i-9]&&dives[i-9].className!='boom'){
                         
                        findLei(dives,i-9);
                         
                    }
                    // 右下
                    if(dives[i+11]&&dives[i+11].className!='boom'){
                         
                        findLei(dives,i+11);
                         
                    }
                }
            }
             
             
        }
 
        function rightClick(){
            var dives = document.querySelectorAll('div');
            for(var i =0;i<dives.length;i++){
                dives[i].oncontextmenu=function(ev){
                    var ev = ev||event;
                    ev.preventDefault();
                    if(!this.onOff){
                        this.style.backgroundColor = 'green';
                        this.onOff = true;
                    }else{
                        this.style.backgroundColor = '';
                        this.onOff = false;
                    }
 
                }
            }
        }
         
    </script>
</html>