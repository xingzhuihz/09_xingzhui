<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/16
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
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

            <%--4个最新内容--%>


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

        <%@include file="js/init.js" %>
        //创建异步对象
        let fourContent;
        if (window.XMLHttpRequest) {

            fourContent = new XMLHttpRequest();
        } else {
            try {

                fourContent = new ActiveXObject("Msxm12.XMLHTTP");

            } catch (e) {

                fourContent = new ActiveXObject("Microsoft.XMLHTTP");
            }
        }


        //4个最新内容
        fourContent.open("GET", "<%=path %>/index?method=fourContent", true);


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

            for (let i = 0; i < 4; i++) {
                let obj = json[i];
                let id = obj.id;
                let h1 = obj.h1;
                let span = obj.span;
                let img = obj.img;
                let a = obj.a;
                let uploadtime = obj.uploadtime;
                let p = obj.p;
                if (32 < p.length) {
                    p = p.substr(0, 32);
                }
                if (img == "") {
                    div.innerHTML += " <div class=\"templatemo_product_box\"><h1>" + h1 + "<span>(" + span + ")</span></h1><div class=\"product_info\"><p style=\"margin-left:70px\">" + p + "</p><h3 style=\"margin-left:70px\">" + uploadtime + "</h3><div class=\"buy_now_button\"><a style=\"margin-left:70px\" href=\"<%=path %>jsps/" + a + "\">查看</a></div></div><div class=\"cleaner\">&nbsp;</div></div>";

                } else {
                    div.innerHTML += " <div class=\"templatemo_product_box\"><h1>" + h1 + "<span>(" + span + ")</span></h1><img src=\"<%=path %>" + img + "\" alt=\"image\" style=\"width:100px!important;height:150px!important;\" /><div class=\"product_info\"><p>" + p + "</p><h3>" + uploadtime + "</h3><div class=\"buy_now_button\"><a href=\"<%=path %>jsps/" + a + "\">查看</a></div></div><div class=\"cleaner\">&nbsp;</div></div>";

                }


                if (i % 2 == 0) {
                    div.innerHTML += "<div class=\"cleaner_with_width\">&nbsp;</div>";
                } else if (i % 2 == 1) {
                    div.innerHTML += "<div class=\"cleaner_with_height\">&nbsp;</div>";
                }


            }

            div.innerHTML += "<a href=\"#\"><img src=\"<%=path %>images/templatemo_ads.jpg\" alt=\"ads\" /></a>";

        }

    }


</script>
</html>
