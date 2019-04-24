<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/16
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%String path=request.getContextPath(); %>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>乡土文化</title>
    <meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML, cssMoban.com" />
    <meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website from cssMoban.com" />
    <link href="<%=path%>css/templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_container">
    <%@ include file="jsps/index_home_head.jsp"%><!-- end of menu -->

    <div id="templatemo_header">
        <%@ include file="jsps/index_home_head_left.jsp"%>
        <%@ include file="jsps/index_home_head_right.jsp"%>
    </div> <!-- end of header -->

    <div id="templatemo_content">

        <div id="templatemo_content_left">
            <%@ include file="jsps/index_home_content_left.jsp"%>



        </div> <!-- end of content left -->

        <div id="templatemo_content_right">

            <%--<h1>Book Title <span>(by author name)</span></h1>--%>
            <%--<div class="image_panel"><img src="images/templatemo_image_02.jpg" alt="CSS Template" width="100" height="150" /></div>--%>
            <%--<h2>Read the lessons - Watch the videos - Do the exercises</h2>--%>
            <%--<ul>--%>
                <%--<li>By Deke <a href="#">McClelland</a></li>--%>
                <%--<li>January 2024</li>--%>
                <%--<li>Pages: 498</li>--%>
                <%--<li>ISBN 10: 0-496-91612-0 | ISBN 13: 9780492518154</li>--%>
            <%--</ul>--%>

            <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec dui. Donec nec neque ut quam sodales feugiat. Nam sodales, pede vel dapibus lobortis, ipsum diam molestie risus, a vulputate risus nisl pulvinar lacus.</p>--%>

            <%--<p>Donec at arcu. Nunc aliquam, dolor vitae sollicitudin lacinia, nibh orci sagittis diam, dignissim sodales dui erat nec eros. Fusce quis enim. Aenean eleifend, neque hendrerit elementum sodales, odio erat sagittis quam, sed tempor orci magna vitae tellus. Proin dui mauris, tempor eget, pulvinar sed, pretium sit amet, dui. Proin vulputate justo et quam.</p>--%>

            <%--<p>In fermentum, eros ac tincidunt aliquam, elit velit semper nunc, a tincidunt orci lectus a arcu. Nullam commodo, arcu non facilisis imperdiet, felis lectus tempus felis, vitae volutpat augue ante quis leo. Aliquam tristique dolor ac odio. Sed consectetur, lacus et dictum tristique, odio neque elementum ante, nec eleifend leo dolor vel tortor.</p>--%>

            <%--<div class="cleaner_with_height">&nbsp;</div>--%>

            <%--<a href="#"><img src="images/templatemo_ads.jpg" alt="css template ad" /></a>--%>

        </div> <!-- end of content right -->

        <div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->

    <%@ include file="jsps/index_home_foot.jsp"%> <!-- end of footer -->
    <!--  Free CSS Template www.cssmoban.com -->
</div> <!-- end of container -->
</body>
<script>
    window.onload = function () {
        //创建异步对象
        let fTitle;
        let allTitle;
        let content;
        if (window.XMLHttpRequest) {
            fTitle = new XMLHttpRequest();
            allTitle = new XMLHttpRequest();
            content = new XMLHttpRequest();
        } else {
            try {
                fTitle = new ActiveXObject("Msxm12.XMLHTTP");
                allTitle = new ActiveXObject("Msxm12.XMLHTTP");
                content = new ActiveXObject("Msxm12.XMLHTTP")

            } catch (e) {
                fTitle = new ActiveXObject("Microsoft.XMLHTTP");
                allTitle = new ActiveXObject("Microsoft.XMLHTTP");
                content = new ActiveXObject("Microsoft.XMLHTTP")
            }
        }

        //首页5个标题
        fTitle.open("GET", "<%=path %>/index?method=fiveTitle", true);

        //全部标题
        allTitle.open("GET", "<%=path %>/index?method=allTitle", true);

        // 显示内容
        content.open("GET", "<%=path %>/index?method=fourContent", true);




        content.onreadystatechange = function () {
            if (4 == content.readyState) {
                if (200 == content.status) {
                    let result = content.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(typeof result);
                    displayContent(result);

                }
            }

        };
        content.send();

        function displayContent(json) {
            let div = document.getElementById("templatemo_content_right");
            div.innerHTML = "";
            let len = json.length;
            var i =Math.floor(Math.random()*(len-1));
                let obj = json[i];
                let id = obj.id;
                let h1 = obj.h1;
                let span = obj.span;
                let img = obj.img;
                let a = obj.a;
                let uploadtime = obj.uploadtime;
                let p = obj.p;
                div.innerHTML += "<h1>"+h1+" <span>("+span+")</span></h1><div class=\"image_panel\"><img src=\"<%=path %>"+img+"\" alt=\"CSS Template\" width=\"100\" height=\"150\" /></div><h2>XXXXXXXXXXXXX</h2><ul><li>XXXX<a href=\"#\">XXX</a></li><li>"+uploadtime+"</li><li>Pages: 498</li><li>ISBN 10: 0-496-91612-0 | ISBN 13: 9780492518154</li></ul><p>"+p+"</p><p>XXXXXXXXXXXXXXXXXXXX</p><div class=\"cleaner_with_height\">&nbsp;</div><a href=\"#\"><img src=\"images/templatemo_ads.jpg\" alt=\"css template ad\" /></a>";

        }


        fTitle.onreadystatechange = function () {
            if (4 == fTitle.readyState) {
                if (200 == fTitle.status) {
                    let result = fTitle.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(typeof result);
                    displayFiveTitle(result);

                }
            }

        };
        fTitle.send();

        function displayFiveTitle(json) {
            let ul = document.getElementById("fiveTitle");
            ul.innerHTML = "";
            ul.innerHTML += "<li><a href=\"../index_home.jsp\" class=\"current\">首页</a></li>";
            let len = json.length;
            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let title = obj.title;
                let a = obj.a;
                ul.innerHTML += " <li><a href=\"<%=path %>" + a + "\">" + title + "</a></li>";
            }
            ul.innerHTML += "<li><a href=\"../login.jsp\">登录 </a></li>";
            //尾部
            let div = document.getElementById("templatemo_footer");
            div.innerHTML = "";
            div.innerHTML += "<a href=\"../index_home.jsp\">首页</a> |";
            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let title = obj.title;
                div.innerHTML += " <a href=\"#\">" + title + "</a> |";
            }
            div.innerHTML += "<a href=\"#\">联系我们</a><br />";
            div.innerHTML += "Copyright © 2024 <a href=\"#\"><strong>乡土文化</strong></a> | from <a href=\"#\" target=\"_parent\" title=\"网站模板\">星骓</a>";


        }

        //显示全部标题
        allTitle.onreadystatechange = function () {
            if (4 == allTitle.readyState) {
                if (200 == allTitle.status) {
                    let result = allTitle.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(resul);
                    displayAllTitle(result);

                }
            }

        };
        allTitle.send();

        function displayAllTitle(json) {
            let ul1 = document.getElementById("content_left_title1");
            ul1.innerHTML = "";

            let len = json.length;
            if (6 <= len) {
                for (let i = 5; i < len; i++) {
                    let obj = json[i];
                    let id = obj.id;
                    let title = obj.title;
                    let a = obj.a;
                    if (13 >= i) {
                        ul1.innerHTML += " <li><a href=\"<%=path%>" + a + "\">" + title + "</a></li>";
                    } else if (14 == i) {
                        break;
                    }
                }
            }


            let ul2 = document.getElementById("content_left_title2");
            ul2.innerHTML = "";

            if (15 <= len) {
                for (let i = 14; i < len; i++) {
                    let obj = json[i];
                    let id = obj.id;
                    let title = obj.title;
                    let a = obj.a;
                    if (22 >= i) {
                        ul2.innerHTML += " <li><a href=\"<%=path%>"+a+"\">" + title + "</a></li>";
                    }else if (23 == i) {
                        break;
                    }

                }
            }


        }


    }
</script>
</html>
