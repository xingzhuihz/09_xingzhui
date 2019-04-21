<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/16
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%String path = request.getContextPath(); %>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>乡土文化首页</title>
    <meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML"/>
    <meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website"/>
    <link href="<%=path %>css/templatemo_style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="templatemo_container">
    <%@ include file="jsps/index_home_head.jsp" %>

    <div id="templatemo_header">
        <%@ include file="jsps/index_home_head_left.jsp" %>
        <%@ include file="jsps/index_home_head_right.jsp" %>


    </div> <!-- end of header -->

    <div id="templatemo_content">

        <div id="templatemo_content_left">
            <%@ include file="jsps/index_home_content_left.jsp" %>


        </div> <!-- end of content left -->

        <div id="templatemo_content_right">
            <%--<div class="templatemo_product_box">--%>
            <%--<h1>XXXXX  <span>(by Best Author)</span></h1>--%>
            <%--<img src="<%=path %>images/templatemo_image_01.jpg" alt="image" />--%>
            <%--<div class="product_info">--%>
            <%--<p>Etiam luctus. Quisque facilisis suscipit elit. Curabitur...</p>--%>
            <%--<h3>XXX</h3>--%>
            <%--<div class="buy_now_button"><a href="subpage.jsp">查看</a></div>--%>
            <%--<div class="detail_button"><a href="subpage.jsp">Detail</a></div>--%>
            <%--</div>--%>
            <%--<div class="cleaner">&nbsp;</div>--%>
            <%--</div>--%>

            <%--<div class="cleaner_with_width">&nbsp;</div>--%>

            <%--<div class="templatemo_product_box">--%>
            <%--<h1>XXXXX  <span>(by New Author)</span></h1>--%>
            <%--<img src="<%=path %>images/templatemo_image_02.jpg" alt="image" />--%>
            <%--<div class="product_info">--%>
            <%--<p>Aliquam a dui, ac magna quis est eleifend dictum.</p>--%>
            <%--<h3>XXX</h3>--%>
            <%--<div class="buy_now_button"><a href="subpage.jsp">查看</a></div>--%>
            <%--<div class="detail_button"><a href="subpage.jsp">Detail</a></div>--%>
            <%--</div>--%>
            <%--<div class="cleaner">&nbsp;</div>--%>
            <%--</div>--%>

            <%--<div class="cleaner_with_height">&nbsp;</div>--%>

            <%--<div class="templatemo_product_box">--%>
            <%--<h1>XXXX <span>(by Famous Author)</span></h1>--%>
            <%--<img src="<%=path %>images/templatemo_image_03.jpg" alt="image" />--%>
            <%--<div class="product_info">--%>
            <%--<p>Ut fringilla enim sed turpis. Sed justo dolor, convallis at.</p>--%>
            <%--<h3>XXX</h3>--%>
            <%--<div class="buy_now_button"><a href="subpage.jsp">查看</a></div>--%>
            <%--<div class="detail_button"><a href="subpage.jsp">Detail</a></div>--%>
            <%--</div>--%>
            <%--<div class="cleaner">&nbsp;</div>--%>
            <%--</div>--%>

            <%--<div class="cleaner_with_width">&nbsp;</div>--%>

            <%--<div class="templatemo_product_box">--%>
            <%--<h1>XXXXX  <span>(by Japanese Name)</span></h1>--%>
            <%--<img src="<%=path %>images/templatemo_image_04.jpg" alt="image" />--%>
            <%--<div class="product_info">--%>
            <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>--%>
            <%--<h3>XXX</h3>--%>
            <%--<div class="buy_now_button"><a href="subpage.jsp">查看</a></div>--%>
            <%--<div class="detail_button"><a href="subpage.jsp">Detail</a></div>--%>
            <%--</div>--%>
            <%--<div class="cleaner">&nbsp;</div>--%>
            <%--</div>--%>

            <%--<div class="cleaner_with_height">&nbsp;</div>--%>

            <%--<a href="#"><img src="<%=path %>images/templatemo_ads.jpg" alt="ads" /></a>--%>
        </div> <!-- end of content right -->

        <div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->

    <%@ include file="jsps/index_home_foot.jsp" %>
    <!-- end of footer -->
    <!--  Free CSS Template www.cssmoban.com -->
</div> <!-- end of container -->
</body>
<script>
    window.onload = function () {
        //创建异步对象
        let fTitle;
        let allTitle;
        let fourContent;
        if (window.XMLHttpRequest) {
            fTitle = new XMLHttpRequest();
            allTitle = new XMLHttpRequest();
            fourContent = new XMLHttpRequest();
        } else {
            try {
                fTitle = new ActiveXObject("Msxm12.XMLHTTP");
                allTitle = new ActiveXObject("Msxm12.XMLHTTP");
                fourContent = new ActiveXObject("Msxm12.XMLHTTP");

            } catch (e) {
                fTitle = new ActiveXObject("Microsoft.XMLHTTP");
                allTitle = new ActiveXObject("Microsoft.XMLHTTP");
                fourContent = new ActiveXObject("Microsoft.XMLHTTP");
            }
        }

        //首页5个标题
        fTitle.open("GET", "<%=path %>/index?method=fiveTitle", true);

        //全部标题
        allTitle.open("GET", "<%=path %>/index?method=allTitle", true);

        //4个最新内容
        fourContent.open("GET", "<%=path %>/index?method=fourContent", true);

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
                ul.innerHTML += " <li><a href=\"#\">" + title + "</a></li>";
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
            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let title = obj.title;
                ul1.innerHTML += " <li><a href=\"#\">" + title + "</a></li>";
            }

            let ul2 = document.getElementById("content_left_title2");
            ul2.innerHTML = "";


            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let title = obj.title;
                ul2.innerHTML += " <li><a href=\"#\">" + title + "</a></li>";
            }


        }

        //显示4个最新内容
        fourContent.onreadystatechange = function () {
            if (4 == fourContent.readyState) {
                if (200 == fourContent.status) {
                    let result = fourContent.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(result);
                    displayFourContent(result);

                }
            }

        };
        fourContent.send();

        function displayFourContent(json) {
            let div = document.getElementById("templatemo_content_right");
            div.innerHTML = "";

            let len = json.length;
            for (let i = 0; i < len; i++) {
                let obj = json[i];
                let id = obj.id;
                let h1 = obj.h1;
                let span = obj.span;
                let img = obj.img;
                let a = obj.a;
                let uploadtime = obj.uploadtime;
                let p = obj.p;
                div.innerHTML += " <div class=\"templatemo_product_box\"><h1>" + h1 + "<span>(" + span + ")</span></h1><img src=\"<%=path %>" + img + "\" alt=\"image\" /><div class=\"product_info\"><p>" + p + "</p><h3>" + uploadtime + "</h3><div class=\"buy_now_button\"><a href=\"#\">查看</a></div><div class=\"detail_button\"><a href=\"#\">Detail</a></div></div><div class=\"cleaner\">&nbsp;</div></div>";
                // div.innerHTML += "<div class=\"cleaner_with_height\">&nbsp;</div>";
            }
            div.innerHTML += "<a href=\"#\"><img src=\"<%=path %>images/templatemo_ads.jpg\" alt=\"ads\" /></a>";

        }


    }
</script>
</html>
