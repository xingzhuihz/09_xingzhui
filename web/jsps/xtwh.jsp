<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/25
  Time: 20:46
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
    <link href="<%=path %>../css/templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_container">
    <%@ include file="index_home_head.jsp"%><!-- end of menu -->

    <div id="templatemo_header">
        <%@ include file="index_home_head_left.jsp"%>
        <%@ include file="index_home_head_right.jsp"%>
    </div> <!-- end of header -->

    <div id="templatemo_content">

        <div id="templatemo_content_left">
            <%@ include file="index_home_content_left.jsp"%>



        </div> <!-- end of content left -->

        <div id="templatemo_content_right">



        </div> <!-- end of content right -->

        <div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->

    <%@ include file="index_home_foot.jsp"%> <!-- end of footer -->
    <!--  Free CSS Template www.cssmoban.com -->
</div> <!-- end of container -->
</body>
<script>
    window.onload = function () {
        <%@include file="../js/initCategory.js"%>
        //创建异步对象

        let content;
        if (window.XMLHttpRequest) {

            content = new XMLHttpRequest();
        } else {
            try {

                content = new ActiveXObject("Msxm12.XMLHTTP")

            } catch (e) {

                content = new ActiveXObject("Microsoft.XMLHTTP")
            }
        }



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
            for (let i = 0; i < len; i++){
                let obj = json[i];
                let id = obj.id;
                let h1 = obj.h1;
                let a = obj.a;
                let span = obj.span;
                let img = obj.img;
                let uploadtime = obj.uploadtime;
                let p = obj.p;
                if (a.substr(0, 4).match("xtwh")) {
                    div.innerHTML += "<h1>" + h1 + " <span>(" + span + ")</span></h1><div class=\"image_panel\"><img src=\"<%=path %>../" + img + "\" alt=\"CSS Template\" width=\"100\" height=\"150\" /></div><h2></h2><ul><li><a href=\"#\"></a></li><li>" + uploadtime + "</li><li></li><li></li></ul><p>" + p + "</p><p></p>";
                    div.innerHTML += "<div class=\"cleaner_with_height\">&nbsp;</div>";

                }
            }
            div.innerHTML += "<a href=\"#\"><img src=\"<%=path %>../images/templatemo_ads.jpg\" alt=\"css template ad\" /></a>";

           
           

        }




    }
</script>
</html>
