<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/8
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% String path=request.getContextPath();%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Modal Registration Form Template</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="<%=path%>assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=path%>assets/css/form-elements.css">
    <link rel="stylesheet" href="<%=path%>assets/css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

<!-- Content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <a class="logo" href="index.html"></a>
                    <h1><strong>Bootstrap</strong> Modal Registration Form</h1>
                    <div class="description">
                        <p>
                            This is a free responsive modal registration form made with Bootstrap.
                            Download it on <a href="#"><strong>AZMIND</strong></a>, customize and use it as you like!
                        </p>
                    </div>
                    <div class="top-big-link">
                        <a class="btn btn-link-1 launch-modal" href="#" data-modal-id="modal-register">Launch modal</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a></div>
<!-- MODAL -->
<div class="modal fade" id="modal-register" tabindex="-1" role="dialog" aria-labelledby="modal-register-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h3 class="modal-title" id="modal-register-label">Sign up now</h3>
                <p>Fill in the form below to get instant access:</p>
            </div>

            <div class="modal-body">


                <form role="form" action="<%=request.getContextPath()%>/admin" method="post" id="name"
                      class="registration-form">
                    <div class="form-group">
                        <label class="sr-only" for="form-first-name">name</label>
                        <input type="text" name="name" placeholder="name"
                               class="form-first-name form-control" id="form-first-name" value="<%
                                    Object name = request.getAttribute("name");
                                    if (name != null){
                                        System.out.print(name);
                                    }
                                    %>"/>
                        <br/>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-last-name">password</label>
                        <input type="password" name="pwd" placeholder="password"
                               class="form-last-name form-control" id="form-last-name">
                    </div>
                    <button type="submit" class="btn">Sign me up!</button>
                </form>


            </div>

        </div>
    </div>
</div>


<!-- Javascript -->
<script src="<%=path%>assets/js/jquery-1.11.1.min.js"></script>
<script src="<%=path%>assets/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=path%>assets/js/jquery.backstretch.min.js"></script>
<script src="<%=path%>assets/js/scripts.js"></script>
<script>

    let name = document.getElementById("name").value;
    if (name == "") {
        document.getElementById("name").focus();
    } else {
        document.getElementById("pwd").focus();
    }
</script>
<!--[if lt IE 10]>
<script src="<%=path%>assets/js/placeholder.js"></script>
<![endif]-->

</body>


<%--<head>--%>
<%--<meta charset="utf-8">--%>
<%--<title>login</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="<%=request.getContextPath()%>/admin" method="post" >--%>
<%--用户名：<input type="text" name="name" id="name" value="<%--%>
<%--Object name=request.getAttribute("name");--%>
<%--if (name!=null){--%>
<%--//            out.print(name);--%>
<%--response.getWriter(name);--%>
<%--}--%>
<%--%>"/><br/>--%>
<%--密码：<input type="password" name="pws" /><br/>--%>
<%--<input type="submit" value="登陆" />--%>

<%--</form>--%>
<%--<form action="<%=request.getContextPath()%>/admin" method="post">--%>
<%--用户名：<input type="text" name="name" id="name" value="<%--%>
<%--Object name = request.getAttribute("name");--%>
<%--if (name != null){--%>
<%--System.out.print(name);--%>
<%--}--%>
<%--%>"/><br/>--%>
<%--密码：<input type="password" name="pwd" id="pwd"/><br/>--%>
<%--<input type="submit" value="登陆"/>--%>
<%--</form>--%>

</body>

</html>
