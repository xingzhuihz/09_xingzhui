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
    <%String path=request.getContextPath(); %>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>乡土文化首页</title>
    <meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML" />
    <meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website" />
    <link href="<%=path%>css/templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_container">
    <%@ include file="jsps/index_home_head.jsp"%>

    <div id="templatemo_header">
        <%@ include file="jsps/index_home_head_left.jsp"%>
        <%@ include file="jsps/index_home_head_right.jsp"%>



    </div> <!-- end of header -->

    <div id="templatemo_content">

        <div id="templatemo_content_left">
            <%@ include file="jsps/index_home_content_left.jsp"%>
            <%@ include file="jsps/index_home_content_left.jsp"%>



        </div> <!-- end of content left -->

        <div id="templatemo_content_right">
            <div class="templatemo_product_box">
                <h1>XXXXX  <span>(by Best Author)</span></h1>
                <img src="images/templatemo_image_01.jpg" alt="image" />
                <div class="product_info">
                    <p>Etiam luctus. Quisque facilisis suscipit elit. Curabitur...</p>
                    <h3>XXX</h3>
                    <div class="buy_now_button"><a href="subpage.jsp">查看</a></div>
                    <div class="detail_button"><a href="subpage.jsp">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>

            <div class="cleaner_with_width">&nbsp;</div>

            <div class="templatemo_product_box">
                <h1>XXXXX  <span>(by New Author)</span></h1>
                <img src="images/templatemo_image_02.jpg" alt="image" />
                <div class="product_info">
                    <p>Aliquam a dui, ac magna quis est eleifend dictum.</p>
                    <h3>XXX</h3>
                    <div class="buy_now_button"><a href="subpage.jsp">查看</a></div>
                    <div class="detail_button"><a href="subpage.jsp">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>

            <div class="cleaner_with_height">&nbsp;</div>

            <div class="templatemo_product_box">
                <h1>XXXX <span>(by Famous Author)</span></h1>
                <img src="images/templatemo_image_03.jpg" alt="image" />
                <div class="product_info">
                    <p>Ut fringilla enim sed turpis. Sed justo dolor, convallis at.</p>
                    <h3>XXX</h3>
                    <div class="buy_now_button"><a href="subpage.jsp">查看</a></div>
                    <div class="detail_button"><a href="subpage.jsp">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>

            <div class="cleaner_with_width">&nbsp;</div>

            <div class="templatemo_product_box">
                <h1>XXXXX  <span>(by Japanese Name)</span></h1>
                <img src="images/templatemo_image_04.jpg" alt="image" />
                <div class="product_info">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                    <h3>XXX</h3>
                    <div class="buy_now_button"><a href="subpage.jsp">查看</a></div>
                    <div class="detail_button"><a href="subpage.jsp">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>

            <div class="cleaner_with_height">&nbsp;</div>

            <a href="#"><img src="images/templatemo_ads.jpg" alt="ads" /></a>
        </div> <!-- end of content right -->

        <div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->

    <%@ include file="jsps/index_home_foot.jsp"%>
    <!-- end of footer -->
    <!--  Free CSS Template www.cssmoban.com -->
</div> <!-- end of container -->
</body>
</html>
