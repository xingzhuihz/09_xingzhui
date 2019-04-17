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
    <div id="templatemo_menu">
        <ul>
            <li><a href="index_home.jsp" class="current">首页</a></li>
            <li><a href="subpage.jsp">乡土文化</a></li>
            <li><a href="#">乡土经济</a></li>
            <li><a href="#">乡土习俗</a></li>
            <li><a href="#">文化遗产</a></li>
            <li><a href="#">乡贤名士</a></li>
            <li><a href="login.jsp">登录 </a></li>
        </ul>
    </div> <!-- end of menu -->

    <div id="templatemo_header">
        <div id="templatemo_special_offers">
            <p>
                <span>tel:100000</span> XXX
                XXXX
            </p>
            <a href="#" style="margin-left: 50px;">Read more...</a>
        </div>


        <div id="templatemo_new_books">
            <ul>
                <li>Suspen disse</li>
                <li>Maece nas metus</li>
                <li>In sed risus ac feli</li>
            </ul>
            <a href="#" style="margin-left: 50px;">Read more...</a>
        </div>
    </div> <!-- end of header -->

    <div id="templatemo_content">

        <div id="templatemo_content_left">
            <div class="templatemo_content_left_section">
                <h1>分类</h1>
                <ul>
                    <li><a href="#">乡土经济</a></li>
                    <li><a href="#">乡土文化</a></li>
                    <li><a href="#">乡土习俗</a></li>
                    <li><a href="#">乡贤名士</a></li>
                    <li><a href="#">文化遗产</a></li>
                    <li><a href="#">Sed pellentesque placerat</a></li>
                    <li><a href="#">Suspen disse</a></li>
                    <li><a href="#">Maece nas metus</a></li>
                    <li><a href="#">In sed risus ac feli</a></li>
                </ul>
            </div>
            <div class="templatemo_content_left_section">
                <h1>Bestsellers</h1>
                <ul>
                    <li><a href="#">Vestibulum ullamcorper</a></li>
                    <li><a href="#">Maece nas metus</a></li>
                    <li><a href="#">In sed risus ac feli</a></li>
                    <li><a href="#">Praesent mattis varius</a></li>
                    <li><a href="#">Maece nas metus</a></li>
                    <li><a href="#">In sed risus ac feli</a></li>
                    <li><a href="#" target="_parent">Flash Templates</a></li>
                    <li><a href="http://www.cssmoban.com" target="_parent">CSS Templates</a></li>
                    <li><a href="#" target="_parent">Web Design</a></li>
                    <li><a href="#" target="_parent">Free Photos</a></li>
                </ul>
            </div>


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

    <div id="templatemo_footer">

        <a href="#">首页</a> | <a href="#">乡土文化</a> | <a href="#">乡土经济</a> | <a href="#">乡贤名士</a> | <a href="#">文化遗产</a> | <a href="#">联系我们</a><br />
        Copyright © 2024 <a href="#"><strong>乡土文化</strong></a> | from <a href="http://www.cssmoban.com" target="_parent" title="网站模板">星骓</a>	</div>
    <!-- end of footer -->
    <!--  Free CSS Template www.cssmoban.com -->
</div> <!-- end of container -->
</body>
</html>
