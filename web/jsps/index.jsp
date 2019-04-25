<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/12
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>首页</title>
    <% String path = request.getContextPath();%>
    <link href="<%=path%>/css/common_login.css" rel="stylesheet"/>
    <link href="<%=path%>/css/style_login.css" rel="stylesheet"/>
    <script type="text/javascript" src="<%=path%>/js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.nivo.slider.js"></script>
    <script type="text/javascript" src="<%=path%>/js/cufon-yui.js"></script>
    <script type="text/javascript" src="<%=path%>/js/scripts.js"></script>
    <script type="text/javascript" src="<%=path%>/js/custom.js"></script>
    <script src="<%=path%>/js/ScrollPic.js"></script>
    <script src="<%=path%>/js/tab.js" type="text/javascript"></script>
</head>
<body>
<div class="content">
    <%@ include file="/jsps/head.jsp" %>
    <div class="main">
        <div class="mleft">
            <div class="lnav">
                <div class="hd">粮油/干货</div>
                <ul class="list">
                    <li>
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">五谷杂粮</a></div>
                    </li>
                    <li>
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">菌菇类</a></div>
                    </li>
                    <li class="llast">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">食用油</a></div>
                    </li>
                    <li class="bottom">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">野菜干菜</a></div>
                    </li>
                    <li class="bottom">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">干果坚果</a></div>
                    </li>
                    <li class="bottom llast">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">大米</a></div>
                    </li>
                </ul>
            </div>
            <div class="ad"><a href="#_"><img src="<%=path%>/images/ad04.jpg" width="240" height="286"/></a></div>
        </div>
        <div class="mright">
            <div class="ad">
                <div class="vcontainer" id="idTransformView">
                    <ul class="vslider" id="idSlider">
                        <%--<li><img src="<%=path%>/images/ad05.jpg" width="722" height="286"/></li>--%>
                        <%--<li><img src="<%=path%>/images/ad05.jpg" width="722" height="286"/></li>--%>
                        <%--<li><img src="<%=path%>/images/ad05.jpg" width="722" height="286"/></li>--%>
                        <%--<li><img src="<%=path%>/images/ad05.jpg" width="722" height="286"/></li>--%>
                    </ul>
                    <ul class="vnum png" id="idNum">
                        <li class="on">●</li>
                        <li>●</li>
                        <li>●</li>
                        <li>●</li>
                    </ul>
                </div>
            </div>
            <div class="commend">
                <div class="picgd"><a href="#" onclick="return false" title="上翻" id="LeftArr" class="up png">上翻</a> <a
                        href="#" onclick="return false" title="下翻" id="RightArr" class="down png">下翻</a>
                    <div id="pic" class="pic">
                        <ul id="scrollPic">


                            <%--<li>--%>
                            <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203" height="131" /></a></p>--%>
                            <%--<p class="intro"><a href="#_">精选葵花籽油1</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203" height="131" /></a></p>--%>
                            <%--<p class="intro"><a href="#_">精选葵花籽油2</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203" height="131" /></a></p>--%>
                            <%--<p class="intro"><a href="#_">精选葵花籽油3</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203" height="131" /></a></p>--%>
                            <%--<p class="intro"><a href="#_">精选葵花籽油4</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203" height="131" /></a></p>--%>
                            <%--<p class="intro"><a href="#_">精选葵花籽油5</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203" height="131" /></a></p>--%>
                            <%--<p class="intro"><a href="#_">精选葵花籽油6</a></p>--%>
                            <%--</li>--%>
                        </ul>
                    </div>
                </div>
                <script>
                    function pic(v) {
                        return document.getElementById(v);
                    }

                    var scrollPic_01 = new ScrollPic();
                    scrollPic_01.scrollContId = "pic"; //内容容器ID
                    scrollPic_01.arrLeftId = "LeftArr";//左箭头ID
                    scrollPic_01.arrRightId = "RightArr"; //右箭头ID

                    scrollPic_01.frameWidth = 655;//显示框宽度
                    scrollPic_01.pageWidth = 217; //翻页宽度

                    scrollPic_01.speed = 20; //移动速度(单位毫秒，越小越快)
                    scrollPic_01.space = 20; //每次移动像素(单位px，越大越快)
                    scrollPic_01.autoPlay = true; //自动播放
                    scrollPic_01.autoPlayTime = 3; //自动播放间隔时间(秒)
                    scrollPic_01.initialize(); //初始化

                </script>
            </div>
        </div>
    </div>
    <div class="main main01">
        <div class="mleft">
            <div class="lnav01">
                <div class="hd">滋补/饮品</div>
                <ul class="list">
                    <li class="bottom">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">滋补品</a></div>
                    </li>
                    <li class="bottom">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">茶</a></div>
                    </li>
                    <li class="bottom llast">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">酒</a></div>
                    </li>
                </ul>
            </div>
            <div class="ad"><a href="#_"><img src="<%=path%>/images/ad02.jpg" width="240" height="347"/></a></div>
        </div>
        <div class="mright">
            <div class="ad">
                <div class="vcontainer" id="idTransformView01">
                    <ul class="vslider" id="idSlider01">
                        <li><img src="<%=path%>/images/ad03.jpg" width="722" height="286"/></li>
                        <li><img src="<%=path%>/images/ad03.jpg" width="722" height="286"/></li>
                        <li><img src="<%=path%>/images/ad03.jpg" width="722" height="286"/></li>
                        <li><img src="<%=path%>/images/ad03.jpg" width="722" height="286"/></li>
                    </ul>
                    <ul class="vnum png" id="idNum01">
                        <li class="on">●</li>
                        <li>●</li>
                        <li>●</li>
                        <li>●</li>
                    </ul>
                </div>
            </div>
            <div class="commend">
                <div class="picgd"><a href="#" onclick="return false" title="上翻" id="LeftArr01" class="up png">上翻</a> <a
                        href="#" onclick="return false" title="下翻" id="RightArr01" class="down png">下翻</a>
                    <div id="pic01" class="pic">
                        <ul id="scrollPic01">
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油111</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油222</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油333</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油444</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油555</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油666</a></p>--%>
                            <%--</li>--%>
                        </ul>
                    </div>
                </div>
                <script>
                    function pic(v) {
                        return document.getElementById(v);
                    }

                    var scrollPic_02 = new ScrollPic();
                    scrollPic_02.scrollContId = "pic01"; //内容容器ID
                    scrollPic_02.arrLeftId = "LeftArr01";//左箭头ID
                    scrollPic_02.arrRightId = "RightArr01"; //右箭头ID

                    scrollPic_02.frameWidth = 655;//显示框宽度
                    scrollPic_02.pageWidth = 217; //翻页宽度

                    scrollPic_02.speed = 20; //移动速度(单位毫秒，越小越快)
                    scrollPic_02.space = 20; //每次移动像素(单位px，越大越快)
                    scrollPic_02.autoPlay = true; //自动播放
                    scrollPic_02.autoPlayTime = 3; //自动播放间隔时间(秒)
                    scrollPic_02.initialize(); //初始化

                </script>
            </div>
        </div>
    </div>
    <div class="main main01">
        <div class="mleft">
            <div class="lnav02">
                <div class="hd">滋补/饮品</div>
                <ul class="list">
                    <li class="bottom">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">厨房调味</a></div>
                    </li>
                    <li class="bottom">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">器具茶具</a></div>
                    </li>
                    <li class="bottom llast">
                        <div class="m"><a href="#_"></a></div>
                        <div class="i"><a href="#_">水果</a></div>
                    </li>
                </ul>
            </div>
            <div class="ad"><a href="#_"><img src="<%=path%>/images/ad.jpg" width="240" height="347"/></a></div>
        </div>
        <div class="mright">
            <div class="ad">
                <div class="vcontainer" id="idTransformView02">
                    <ul class="vslider" id="idSlider02">
                        <li><img src="<%=path%>/images/ad01.jpg" width="722" height="286"/></li>
                        <li><img src="<%=path%>/images/ad01.jpg" width="722" height="286"/></li>
                        <li><img src="<%=path%>/images/ad01.jpg" width="722" height="286"/></li>
                        <li><img src="<%=path%>/images/ad01.jpg" width="722" height="286"/></li>
                    </ul>
                    <ul class="vnum png" id="idNum02">
                        <li class="on">●</li>
                        <li>●</li>
                        <li>●</li>
                        <li>●</li>
                    </ul>
                </div>
            </div>
            <div class="commend">
                <div class="picgd"><a href="#" onclick="return false" title="上翻" id="LeftArr02" class="up png">上翻</a> <a
                        href="#" onclick="return false" title="下翻" id="RightArr02" class="down png">下翻</a>
                    <div id="pic02" class="pic">
                        <ul id="scrollPic02">
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油</a></p>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<p class="media"><a href="#_"><img src="<%=path%>/images/p.jpg" width="203"--%>
                                                                   <%--height="131"/></a></p>--%>
                                <%--<p class="intro"><a href="#_">精选葵花籽油</a></p>--%>
                            <%--</li>--%>
                        </ul>
                    </div>
                </div>
                <script>
                    function pic(v) {
                        return document.getElementById(v);
                    }

                    var scrollPic_03 = new ScrollPic();
                    scrollPic_03.scrollContId = "pic02"; //内容容器ID
                    scrollPic_03.arrLeftId = "LeftArr02";//左箭头ID
                    scrollPic_03.arrRightId = "RightArr02"; //右箭头ID

                    scrollPic_03.frameWidth = 655;//显示框宽度
                    scrollPic_03.pageWidth = 217; //翻页宽度

                    scrollPic_03.speed = 20; //移动速度(单位毫秒，越小越快)
                    scrollPic_03.space = 20; //每次移动像素(单位px，越大越快)
                    scrollPic_03.autoPlay = true; //自动播放
                    scrollPic_03.autoPlayTime = 3; //自动播放间隔时间(秒)
                    scrollPic_03.initialize(); //初始化

                </script>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="tzabout">
            <div class="title"><a href="#_">台州特色名品</a></div>
            <div class="con">
                台州市，中国历史文化名城，以海上仙子国著称。地属亚热带海洋性季风气候，夏无酷暑，冬不严寒，优越的环境适宜植被生长，海产生鲜的繁衍。
            </div>
        </div>
        <div class="aboutus">
            <div class="title">天慈生灵，天养生辉</div>
            <div class="con">
                作为绿色食品的崇尚者，我们把绿色环保深入到
                经营的各个角落——绿色包装，绿色推广，绿色
                经营。天慈天养致力于打造消费者信得过，彰显
                身份的品牌、
            </div>
            <div class="more"><a href="#_">READ MORE</a></div>
        </div>
        <div class="news">
            <div class="hd">
                <div class="more"><a href="#_">+</a></div>
                <div class="title">新闻资讯</div>
            </div>
            <div class="bd">
                <div class="first">
                    <div class="media"><a href="#_"><img src="<%=path%>/images/news.jpg" width="108" height="66"/></a>
                    </div>
                    <div class="intro">
                        <div class="title"><a href="#_">选绿色食品环保产品,有人教你 </a></div>
                        <div class="c">怎么选择绿色食品、环保节能产品，今后有地方可以学习到相关知识了...</div>
                    </div>
                </div>
                <ul class="list">
                    <li>
                        <div class="time">05-31</div>
                        <a href="#_">·春节前调查菜篮子 绿色有机食品"当家作主" </a>
                    </li>
                    <li>
                        <div class="time">05-31</div>
                        <a href="#_">·春节前调查菜篮子 绿色有机食品"当家作主" </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <%@ include file="/jsps/foot.jsp" %>
</div>
</body>

<script>
    window.onload = function () {
        //创建异步对象
        let xhr;
        let xhr2;
        let xhr3;
        let ad1;

        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
            xhr2 = new XMLHttpRequest();
            xhr3 = new XMLHttpRequest();
            ad1 = new XMLHttpRequest();

        } else {
            try {
                ad1 = new ActiveXObject("Msxm12.XMLHTTP");
                xhr = new ActiveXObject("Msxml2.XMLHTTP");
                xhr2 = new ActiveXObject("Msxml2.XMLHTTP");
                xhr3 = new ActiveXObject("Msxml2.XMLHTTP");

            } catch (e) {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
                xhr2 = new ActiveXObject("Microsoft.XMLHTTP");
                ad1 = new ActiveXObject("Microsoft.XMLHTTP");
                xhr3 = new ActiveXObject("Microsoft.XMLHTTP");

            }
        }

        //显示第一块6个产品
        xhr.open("GET", "<%=path %>/index?method=sixProduct1", true);
        xhr2.open("GET","<%=path %>/index?method=sixProduct2", true);
        xhr3.open("GET","<%=path %>/index?method=sixProduct3", true);
        ad1.open("GET", "<%=path %>/index?method=fourAdvert1", true);

        xhr.onreadystatechange = function () {
            if (4 == xhr.readyState) {
                if (200 == xhr.status) {
                    let result = xhr.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(typeof result);
                    displaySixProduct1(result);

                }
            }

        };
        xhr.send();

        function displaySixProduct1(json) {
            let ul = document.getElementById("scrollPic");
            ul.innerHTML = "";

            let len = json.length;
            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let name = obj.name;
                let img = obj.img;
                // alert(id + "" + name + "" + img);
                ul.innerHTML += "<li><p class=\"media\"><a href=\"#_\"><img src=\"<%=path%>"+img+"\"  width=\"203\" height=\"131\" /></a></p><p class=\"intro\"><a href=\"#_\">"+name+"</a></p></li>";
            }
        }

        xhr2.onreadystatechange = function () {
            if (4 == xhr2.readyState) {
                if (200 == xhr2.status) {
                    let result = xhr2.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(typeof result);
                    displaySixProduct2(result);
                }
            }
        };


        xhr2.send();

        function displaySixProduct2(json) {
            let ul = document.getElementById("scrollPic01");
            ul.innerHTML = "";

            let len = json.length;
            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let name = obj.name;
                let img = obj.img

                ul.innerHTML += "<li><p class=\"media\"><a href=\"#_\"><img src=\"<%=path%>"+img+"\"  width=\"203\" height=\"131\" /></a></p><p class=\"intro\"><a href=\"#_\">"+name+"</a></p></li>";
            }

        }
        xhr3.onreadystatechange = function () {
            if (4 == xhr3.readyState) {
                if (200 == xhr3.status) {
                    let result = xhr3.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(typeof result);
                    displaySixProduct3(result);

                }
            }

        };
        xhr3.send();
        function displaySixProduct3(json) {
            let ul = document.getElementById("scrollPic02");
            ul.innerHTML = "";

            let len = json.length;
            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let name = obj.name;
                let img = obj.img

                ul.innerHTML += "<li><p class=\"media\"><a href=\"#_\"><img src=\"<%=path%>"+img+"\"  width=\"203\" height=\"131\" /></a></p><p class=\"intro\"><a href=\"#_\">"+name+"</a></p></li>";
            }

        }
        ad1.onreadystatechange = function () {
            if (4 == ad1.readyState) {
                if (200 == ad1.status) {
                    let result = ad1.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(typeof result);
                    displayFourAdvert1(result);

                }
            }

        };
        ad1.send();

        function displayFourAdvert1(json) {
            let ul = document.getElementById("idSlider");
            ul.innerHTML = "";

            let len = json.length;
            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let name = obj.name;
                let img = obj.img;
                // alert(id + "" + name + "" + img);
                ul.innerHTML += " <li><img src=\"<%=path%>"+img+"\" width=\"722\" height=\"286\"/></li>";
            }
        }

    }
</script>
</html>
