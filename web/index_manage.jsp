<%@ page import="work.login.utils.UUIDUtils" %>
<%@ page import="net.sf.json.JSON" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/16
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%String path = request.getContextPath(); %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="左右结构项目，属于大人员的社交工具">
    <meta name="keywords" content="左右结构项目 社交 占座 ">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>后台管理</title>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $(".meun-item").click(function () {
                $(".meun-item").removeClass("meun-item-active");
                $(this).addClass("meun-item-active");
                var itmeObj = $(".meun-item").find("img");
                itmeObj.each(function () {
                    var items = $(this).attr("src");
                    items = items.replace("_grey.png", ".png");
                    items = items.replace(".png", "_grey.png")
                    $(this).attr("src", items);
                });
                var attrObj = $(this).find("img").attr("src");
                ;
                attrObj = attrObj.replace("_grey.png", ".png");
                $(this).find("img").attr("src", attrObj);
            });
            $("#topAD").click(function () {
                $("#topA").toggleClass(" glyphicon-triangle-right");
                $("#topA").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topBD").click(function () {
                $("#topB").toggleClass(" glyphicon-triangle-right");
                $("#topB").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topCD").click(function () {
                $("#topC").toggleClass(" glyphicon-triangle-right");
                $("#topC").toggleClass(" glyphicon-triangle-bottom");
            });
            $(".toggle-btn").click(function () {
                $("#leftMeun").toggleClass("show");
                $("#rightContent").toggleClass("pd0px");
            })
        })
    </script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/common_manage.css"/>
    <link rel="stylesheet" type="text/css" href="css/slide.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
</head>
<body>

<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="logoDiv">
            <p id="logoP"><img id="logo" alt="左右结构项目" src="images/logo.png"><span>后台管理</span></p>
        </div>

        <%

            String name = (String) session.getAttribute("name");

        %>
        <div id="personInfor">
            <p id="userName"><%=name %>
            </p>
            <p><span>管理员</span></p>
            <p>
                <a href="<%=path %>/index_home.jsp">退出登录 </a>
            </p>
        </div>
        <div class="meun-title">账号管理</div>
        <div class="meun-item meun-item-active" href="#sour" aria-controls="sour" role="tab" data-toggle="tab"
             id="contentFirst"><img
                src="images/icon_source.png">资源管理
        </div>
        <div class="meun-item" href="#char" aria-controls="char" role="tab" data-toggle="tab"><img
                src="images/icon_chara_grey.png">权限管理
        </div>
        <div class="meun-item" href="#user" aria-controls="user" role="tab" data-toggle="tab"><img
                src="images/icon_user_grey.png">用户管理
        </div>
        <div class="meun-item" href="#chan" aria-controls="chan" role="tab" data-toggle="tab"><img
                src="images/icon_change_grey.png">修改密码
        </div>
        <div class="meun-title">内容管理</div>
        <div class="meun-item" href="#scho" aria-controls="scho" role="tab" data-toggle="tab" name="floor1"
             id="contentManage"><img
                src="images/icon_house_grey.png">内容管理
        </div>
        <div class="meun-item" href="#regu" aria-controls="regu" role="tab" data-toggle="tab" name="floor2"><img
                src="images/icon_rule_grey.png">规则管理
        </div>
        <div class="meun-item" href="#stud" aria-controls="stud" role="tab" data-toggle="tab"><img
                src="images/icon_card_grey.png">人员信息
        </div>
        <div class="meun-item" href="#sitt" aria-controls="sitt" role="tab" data-toggle="tab"><img
                src="images/icon_char_grey.png">座位管理
        </div>
    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <a class="toggle-btn" id="nimei">
            <i class="glyphicon glyphicon-align-justify"></i>
        </a>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 资源管理模块 -->
            <div role="tabpanel" class="tab-pane active" id="sour">
                <div class="check-div form-inline">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSource">添加资源</button>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
                            编码
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            名称
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                            链接
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <div class="row">
                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                1
                            </div>
                            <div id="topAD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4" role="button"
                                 data-toggle="collapse" data-parent="#accordion" href="#collapseSystem"
                                 aria-expanded="true" aria-controls="collapseOne">
                                <span id="topA" class="glyphicon  glyphicon-triangle-bottom  "></span> <span>系统管理</span>
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                /admin/system/userlist/software/
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">
                                    修改
                                </button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">
                                    删除
                                </button>
                            </div>
                        </div>

                        <!--系统管理折叠狂-->

                        <div id="collapseSystem" class="collapse in" aria-expanded="true">
                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
                                    2
                                </div>
                                <div id="topBD" onClick="changeA()" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2"
                                     role="button" data-toggle="collapse" data-parent="#accordion"
                                     href="#collapseAccount" aria-expanded="true" aria-controls="collapseOne">
                                    <span onClick="changeB()" id="topB"
                                          class="glyphicon glyphicon-triangle-bottom"></span> <span>账号管理</span>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    /rlist/
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <button class="btn btn-success btn-xs" data-toggle="modal"
                                            data-target="#changeSource">修改
                                    </button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal"
                                            data-target="#deleteSource">删除
                                    </button>
                                </div>
                            </div>
                            <!--用户管理折叠狂-->
                            <div id="collapseAccount" class="collapse in" aria-expanded="true">
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
                                        1
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span class=""> &nbsp;</span><span>资源管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal"
                                                data-target="#changeSource">修改
                                        </button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal"
                                                data-target="#deleteSource">删除
                                        </button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3 ">
                                        2
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>权限管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal"
                                                data-target="#changeSource">修改
                                        </button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal"
                                                data-target="#deleteSource">删除
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
                                    3
                                </div>
                                <div id="topCD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2" role="button"
                                     data-toggle="collapse" data-parent="#accordion" href="#collapseSchool"
                                     aria-expanded="true" aria-controls="collapseOne">
                                    <span id="topC" onClick="changeC()"
                                          class="glyphicon glyphicon-triangle-bottom"></span><span> 内容管理</span>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    /admin/system
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <button class="btn btn-success btn-xs" data-toggle="modal"
                                            data-target="#changeSource">修改
                                    </button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal"
                                            data-target="#deleteSource">删除
                                    </button>
                                </div>
                            </div>
                            <!--地区管理折叠狂-->
                            <div id="collapseSchool" class="collapse in" aria-expanded="true">
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3">
                                        1
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4   levl3">
                                        <span></span><span>内容管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal"
                                                data-target="#changeSource">修改
                                        </button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal"
                                                data-target="#deleteSource">删除
                                        </button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3">
                                        2
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>规则管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs " data-toggle="modal "
                                                data-target="#changeSource ">修改
                                        </button>
                                        <button class="btn btn-danger btn-xs " data-toggle="modal "
                                                data-target="#deleteSource ">删除
                                        </button>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
                                        3
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl3">
                                        <span></span><span>人员信息</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal"
                                                data-target="#changeSource">修改
                                        </button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal"
                                                data-target="#deleteSource">删除
                                        </button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1   levl3">
                                        4
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>座位管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
                                        <button class="btn btn-success btn-xs" data-toggle="modal"
                                                data-target="#changeSource">修改
                                        </button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal"
                                                data-target="#deleteSource">删除
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>
                <!--弹出窗口 添加资源-->

                <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加资源</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="sName"
                                                       value=""
                                                       placeholder="">


                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">链接：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">文件：</label>
                                            <div class="col-xs-8">
                                                <input type="file" class="form-control input-sm duiqi" id="sOrd"
                                                       name="addFile"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">父节点：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="leixing" id="anniu">菜单</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="leixing" id="meun"> 按钮</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消
                                </button>
                                <button type="submit" class="btn btn-xs btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <!-- /.modal -->

                <!--修改资源弹出窗口-->
                <div class="modal fade" id="changeSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改资源</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">链接：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">排序：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">父节点：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="leixing" id="anniu">菜单</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="leixing" id="meun"> 按钮</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!--弹出删除资源警告窗口-->
                <div class="modal fade" id="deleteSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该资源？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!-- 权限管理模块 -->
            <div role="tabpanel" class="tab-pane" id="char">

                <div class="check-div">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addChar">添加权限</button>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-1 ">
                            编码
                        </div>
                        <div class="col-xs-4">
                            权限名
                        </div>
                        <div class="col-xs-5">
                            描述
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <div class="row">
                            <div class="col-xs-1 ">
                                1
                            </div>
                            <div class="col-xs-4">
                                </span><span>管理员</span>
                            </div>
                            <div class="col-xs-5">
                                管理员具有超年权限
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeChar">
                                    修改
                                </button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteChar">删除
                                </button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-1 ">
                                2
                            </div>
                            <div class="col-xs-4">
                                <span>游客</span>
                            </div>
                            <div class="col-xs-5">
                                可以查看信息
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs">修改</button>
                                <button class="btn btn-danger btn-xs">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>
                <!--增加权限弹出窗口-->
                <div class="modal fade" id="addChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加权限</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">权限名：</label>
                                            <div class="col-xs-6 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">描述：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">系统资源：</label>
                                            <div class="col-xs-6">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd"
                                                       placeholder="">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--修改权限弹出窗口-->
                <div class="modal fade" id="changeChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改权限</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">权限名：</label>
                                            <div class="col-xs-6 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">描述：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">系统资源：</label>
                                            <div class="col-xs-6">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd"
                                                       placeholder="">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除权限警告窗口-->
                <div class="modal fade" id="deleteChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该权限？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--用户管理模块-->
            <div role="tabpanel" class="tab-pane" id="user">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser">添加用户</button>
                    </div>
                    <div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询</button>
                    </div>
                    <div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class=" form-control">
                            <option>地区</option>
                            <option>地区</option>
                            <option>班期</option>
                            <option>性别</option>
                            <option>年龄</option>
                            <option>份数</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            用户名
                        </div>
                        <div class="col-xs-2">
                            地区
                        </div>
                        <div class="col-xs-2">
                            真实姓名
                        </div>
                        <div class="col-xs-2">
                            电话
                        </div>
                        <div class="col-xs-2">
                            状态
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">
                                    修改
                                </button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除
                                </button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出添加用户窗口-->
                <div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">国际关系地区</option>
                                                    <option value="">北京大学</option>
                                                    <option value="">天津大学</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">管理员</option>
                                                    <option value="">普通用户</option>
                                                    <option value="">游客</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->


                <!--弹出修改用户窗口-->
                <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该用户？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!-- 修改密码模块 -->
            <div role="tabpanel" class="tab-pane" id="chan">
                <div class="check-div">
                    原始密码为12312313
                </div>
                <div style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">原密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder=""
                                       style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">新密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder=""
                                       style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">重复密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder=""
                                       style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group text-right">
                            <div class="col-xs-offset-4 col-xs-5" style="margin-left: 169px;">
                                <button type="reset" class="btn btn-xs btn-white">取 消</button>
                                <button type="submit" class="btn btn-xs btn-green">保存</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!--地区管理模块-->
            <div role="tabpanel" class="tab-pane" id="scho">

                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSchool"
                                onclick="addSelect();">添加内容
                        </button>
                    </div>
                    <div class="col-lg-4 col-xs-5">
                        <input type="text" class=" form-control input-sm " placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询</button>
                    </div>
                    <div class="col-lg-3 col-lg-offset-1 col-xs-3"
                         style="padding-right: 40px;text-align: right;float: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class="form-control">
                            <option>地区</option>
                            <option>排名</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-1 ">
                            编码
                        </div>
                        <div class="col-xs-2 ">
                            主题
                        </div>
                        <div class="col-xs-1">
                            作者
                        </div>
                        <div class="col-xs-1">
                            时间
                        </div>
                        <div class="col-xs-2">
                            内容
                        </div>
                        <div class="col-xs-2">
                            封面
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <%--显示内容--%>
                    <div class="tablebody" id="showPage">

                        <%--<div class="row">--%>
                        <%--<div class="col-xs-1 ">--%>
                        <%--1--%>
                        <%--</div>--%>
                        <%--<div class="col-xs-2">--%>
                        <%--乡土文化--%>
                        <%--</div>--%>
                        <%--<div class="col-xs-1">--%>
                        <%--路人甲--%>
                        <%--</div>--%>
                        <%--<div class="col-xs-1">--%>
                        <%--2019-5-6--%>
                        <%--</div>--%>
                        <%--<div class="col-xs-2">--%>
                        <%--XXXXXX--%>
                        <%--</div>--%>
                        <%--<div class="col-xs-2">--%>
                        <%--content1.jpg--%>
                        <%--&lt;%&ndash;<a class="linkCcc">查看</a>&ndash;%&gt;--%>
                        <%--</div>--%>
                        <%--<div class="col-xs-2">--%>
                        <%--<button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseSchool">修改</button>--%>
                        <%--<button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSchool">删除</button>--%>
                        <%--</div>--%>
                        <%--</div>--%>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <%--添加文章--%>

                <%
                    String code = UUIDUtils.getCode();

                    // 将code放入session 后台验证
                    session.setAttribute("s_lingpai", code);


                %>
                <form method="post" action="<%=path %>/contentadd" id="formAdd" enctype="multipart/form-data"
                      name="addForm">
                    <input type="hidden" name="code_lingpai" value="<%=code %>">
                    <!--弹出添加用户窗口-->
                    <div class="modal fade" id="addSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                        <div class="modal-dialog" role="document" style="width:1000px;height: 600px;">
                            <div class="modal-content" style="height: 600px;">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                            aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="addPage">添加文章</h4>
                                </div>

                                <div class="modal-body" style="height:460px;">
                                    <div class="container-fluid">
                                        <form class="form-horizontal">
                                            <div class="form-group ">
                                                <label for="sName" class="col-xs-3 control-label">主题：</label>

                                                <input type="text" class="form-control input-sm duiqi" id="sTitle"
                                                       style="width: 500px!important"
                                                       name="ctitle" placeholder="">

                                            </div>
                                            <div class="form-group ">
                                                <label for="sName" class="col-xs-3 control-label">作者：</label>

                                                <input type="text" class="form-control input-sm duiqi" id="sAuthor"
                                                       style="width: 500px!important"
                                                       name="cauthor" placeholder="">

                                            </div>
                                            <div class="form-group " id="fl">
                                                <%--<label for="sName" class="col-xs-3 control-label">分类：</label>--%>

                                                <%--<select class="form-control input-sm duiqi" id="sFL" name="sFL" style="width: 105px!important;" >--%>

                                                <%--<option value="">--请选择--</option>--%>
                                                <%--<option value="1" name="1"> 乡土文化</option>--%>
                                                <%--<option value="2" name="2"> 乡土经济</option>--%>
                                                <%--<option value="3" name="3"> 乡贤名士</option>--%>
                                                <%--<option value="4" name="4"> 乡土习俗</option>--%>
                                                <%--<option value="5" name="5"> 文化遗产</option>--%>


                                                <%--</select>--%>
                                                <%--<input type="text" class="form-control input-sm duiqi" id="sUploadTime"--%>
                                                <%--style="width: 500px!important"--%>
                                                <%--name="cuploadtime" placeholder="2019-5-7">--%>

                                            </div>
                                            <div class="form-group ">
                                                <label for="sName" class="col-xs-3 control-label">内容：</label>

                                                <%--<input type="text" class="form-control input-sm duiqi" id="sContent"--%>
                                                <%--name="ccontent" placeholder="">--%>
                                                <textarea class="form-control input-sm duiqi" id="sContent"
                                                          name="ccontent" placeholder=""
                                                          style="height: 100px;width: 500px!important"></textarea>

                                            </div>
                                            <div class="form-group ">
                                                <label for="sName" class="col-xs-3 control-label">封面：</label>

                                                <input type="file" class="form-control input-sm duiqi" id="sImg"
                                                       onchange="change('img','sImg');"
                                                       name="cimg" placeholder="">
                                                <img src="" name="img" id="img" style="width:150px;height:120px;margin-top: 10px;visibility: hidden;" />

                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                    <button type="submit" class="btn btn-xs btn-green">确 定</button>
                                </div>

                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </form>


                <!--弹出修改文章窗口-->
                <form method="post" action="<%=path %>/contentupdate" enctype="multipart/form-data">
                    <div id="uId"></div>
                    <div class="modal fade" id="reviseSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                        <div class="modal-dialog" role="document" style="width:1000px;height: 700px;">
                            <div class="modal-content" style="height: 700px;">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                            aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="gridSystemModalLabel">修改内容</h4>
                                </div>
                                <div class="modal-body" style="height:560px;">
                                    <div class="container-fluid">
                                        <form class="form-horizontal">
                                            <div class="form-group " id="titleGroup">
                                                <%--<label for="sName" class="col-xs-3 control-label">主题：</label>--%>

                                                <%--<input type="email" class="form-control input-sm duiqi" id="uTitle"--%>
                                                <%--value="${c_id.h1}" style="width: 500px!important"--%>
                                                <%--placeholder="">--%>

                                            </div>
                                            <div class="form-group " id="aurthorGroup">
                                                <%--<label for="sName" class="col-xs-3 control-label">作者：</label>--%>

                                                <%--<input type="email" class="form-control input-sm duiqi" id="uAuthor"--%>
                                                <%--value="${c_id.span}" style="width: 500px!important"--%>
                                                <%--placeholder="">--%>

                                            </div>
                                            <div class="form-group" id="flGroup">
                                                <%--<label for="sLink" class="col-xs-3 control-label">时间：</label>--%>

                                                <%--<input type="" class="form-control input-sm duiqi" id="uUploadtime"--%>
                                                <%--value="${c_id.uploadtime}" style="width: 500px!important"--%>
                                                <%--placeholder="">--%>

                                            </div>

                                            <div class="form-group" id="contentGroup">
                                                <%--<label for="sOrd" class="col-xs-3 control-label">内容：</label>--%>

                                                <%--&lt;%&ndash;<input type="" class="form-control input-sm duiqi" id="sOrd" value="${c_id.p}"&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;placeholder="">&ndash;%&gt;--%>
                                                <%--<textarea class="form-control input-sm duiqi" id="uContent"--%>
                                                <%--name="ccontent" placeholder="" value="${c_id.p}"--%>
                                                <%--style="height: 100px;width: 500px!important"></textarea>--%>

                                            </div>
                                            <div class="form-group" id="imgGroup">
                                                <%--<label for="sOrd" class="col-xs-3 control-label">封面：</label>--%>

                                                <%--<img src="<%=path%>${c_id.img}/"--%>
                                                <%--class="form-control input-sm duiqi" id="uImg"--%>
                                                <%--style="width: 200px;height: 200px; ">--%>
                                                <%--<input type="file" class="form-control input-sm duiqi" id="uImg" value="${c_id.img}"--%>
                                                <%--placeholder="">--%>

                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                    <button type="submit" class="btn btn-xs btn-green">保 存</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </form>
                <!--弹出删除用户警告窗口-->
                <%--<div class="modal fade" id="deleteSchool" role="dialog" aria-labelledby="gridSystemModalLabel">--%>
                <%--<div class="modal-dialog" role="document">--%>
                <%--<div class="modal-content">--%>
                <%--<div class="modal-header">--%>
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span--%>
                <%--aria-hidden="true">&times;</span></button>--%>
                <%--<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>--%>
                <%--</div>--%>
                <%--<div class="modal-body">--%>
                <%--<div class="container-fluid">--%>
                <%--确定要删除该内容？删除后不可恢复！--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="modal-footer">--%>
                <%--<button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>--%>
                <%--<button type="button" class="btn btn-xs btn-danger" onclick="deleteContent()">确 认--%>
                <%--</button>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<!-- /.modal-content -->--%>
                <%--</div>--%>
                <%--<!-- /.modal-dialog -->--%>
                <%--</div>--%>
                <!-- /.modal -->

            </div>
            <!--规则管理模块-->
            <div role="tabpanel" class="tab-pane" id="regu" style="padding-top: 50px;">
                <div class="data-div">
                    <div class="tablebody col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">签到超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax1">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">30</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">抢座超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax2">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">15</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">临时离开超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax3">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">60</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">违约次数冻结上限</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax4">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">100</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">可预约天数</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax5">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">7</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">最大未完成预约数</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax6">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">10</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                            <button type="button" class="btn btn-xs btn-green">保 存</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--时间段管理模块-->
            <div role="tabpanel" class="tab-pane" id="time">
                <div class="check-div form-inline">
                    <span href="#sitt" aria-controls="sitt" role="tab" data-toggle="tab" style="cursor: pointer;"><span
                            class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-yellow btn-xs " data-toggle="modal" data-target="#addTime">添加时间段</button>

                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-3 ">
                            编码
                        </div>
                        <div class="col-xs-3">
                            开始
                        </div>
                        <div class="col-xs-3">
                            结束
                        </div>

                        <div class="col-xs-3">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-3 ">
                                6426398978
                            </div>
                            <div class="col-xs-3">
                                10:10
                            </div>
                            <div class="col-xs-3">
                                19:30
                            </div>
                            <div class="col-xs-3">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeTime">
                                    修改
                                </button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteTime">删除
                                </button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出增加时间段窗口-->
                <div class="modal fade" id="addTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">时间段设置</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">开始时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">结束时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--修改增加时间段窗口-->
                <div class="modal fade" id="changeTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改时间段</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">开始时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">结束时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!--弹出删除时间段警告窗口-->
                <div class="modal fade" id="deleteTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该时间段？
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-danger btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--座位管理模块-->
            <div role="tabpanel" class="tab-pane" id="sitt">

                <div class="check-div form-inline" style="">
                    <div class="col-lg-4 col-xs-7 col-md-6">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addBuilding">添加楼宇
                        </button>
                        <label for="paixu">楼宇:&nbsp;</label>
                        <select class=" form-control">
                            <option>第一教学楼</option>
                            <option>逸夫楼</option>
                            <option>综合楼</option>
                            <option>图书馆</option>
                        </select>
                        <button class="btn btn-white btn-xs ">修 改</button>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4 col-xs-4 col-md-5 "
                         style="padding-right: 40px;text-align: right;">
                        <input type="text" class=" form-control input-sm " placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询</button>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 " style="padding-left: 20px;">
                            楼层
                        </div>
                        <div class="col-xs-3" style="padding-left: 20px;">
                            区域
                        </div>
                        <div class="col-xs-2" style="padding-left: 2px;">
                            座位数
                        </div>
                        <div class="col-xs-2">
                            空余座位
                        </div>
                        <div class="col-xs-3">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="sitTable">
                            <table class="table  table-responsive">
                                <tr>
                                    <td valign="middle" class="col-xs-2" rowspan="3">图书馆第一层</td>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3" style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab"
                                           data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab"
                                           data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3" style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab"
                                           data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab"
                                           data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3" style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab"
                                           data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab"
                                           data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出添加楼宇窗口-->
                <div class="modal fade" id="addBuilding" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加楼宇</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">楼层：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">区域：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">座位数：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd"
                                                       placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出修改用户窗口-->
                <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName"
                                                       placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消
                                </button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该用户？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!--座位详情模块-->
            <div role="tabpanel" class="tab-pane" id="sitDetail">
                <div class="check-div form-inline">
                    <span href="#sitt" aria-controls="sitt" role="tab" data-toggle="tab" style="cursor: pointer;"><span
                            class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-6 ">
                            座位编码
                        </div>
                        <div class="col-xs-6 ">
                            座位名称
                        </div>

                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-6 ">
                                sad2345fas345533
                            </div>
                            <div class="col-xs-6">
                                王座
                            </div>

                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

            </div>
            <!--人员管理模块-->
            <div role="tabpanel" class="tab-pane" id="stud">
                <div class="check-div form-inline">
                    <div class="col-xs-5">
                        <input type="text" class=" form-control input-sm" placeholder="输入文字搜索"
                               style="	!height: 40px!important;">
                        <button class="btn btn-white btn-xs ">查 询</button>
                    </div>
                    <div class="col-xs-4 col-lg-4  col-md-5"
                         style="padding-right: 40px;text-align: right;float: right;">
                        <label for="daoru">导入人员信息表:&nbsp;</label>
                        <button class="btn btn-white btn-xs " id="daoru">选取文件</button>
                        <button class="btn btn-white btn-xs ">导入</button>
                    </div>

                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            学号
                        </div>
                        <div class="col-xs-1 ">
                            姓名
                        </div>
                        <div class="col-xs-2">
                            院系
                        </div>
                        <div class="col-xs-2">
                            年年
                        </div>
                        <div class="col-xs-2 ">
                            学习时长
                        </div>
                        <div class="col-xs-2">
                            违约次数
                        </div>
                        <div class="col-xs-1">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                6426398978
                            </div>
                            <div class="col-xs-1">
                                邓超
                            </div>
                            <div class="col-xs-2">
                                计算机地区
                            </div>
                            <div class="col-xs-2">
                                2013年
                            </div>
                            <div class="col-xs-2">
                                15
                            </div>
                            <div class="col-xs-2">
                                2
                            </div>
                            <div class="col-xs-1">
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteObey">
                                    清除违约
                                </button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>


                <!--弹出删除违约记录警告窗口-->

                <div class="modal fade" id="deleteObey" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该违约记录？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
        </div>
    </div>
</div>
<!-- 滑块js -->
<!--	<script type="text/javascript">
        scale = function(btn, bar, title, unit) {
                this.btn = document.getElementById(btn);
                this.bar = document.getElementById(bar);
                this.title = document.getElementById(title);
                this.step = this.bar.getElementsByTagName("div")[0];
                this.unit = unit;
                this.init();
        };
        scale.prototype = {
                init: function() {
                        var f = this,
                                g = document,
                                b = window,
                                m = Math;
                        f.btn.onmousedown = function(e) {
                                var x = (e || b.event).clientX;
                                var l = this.offsetLeft;
//						var max = f.bar.offsetWidth - this.offsetWidth;
                                var max = f.bar.offsetWidth-20 ;
                                g.onmousemove = function(e) {
                                        var thisX = (e || b.event).clientX;
                                        var to = m.min(max, m.max(-2, l + (thisX - x)));
                                        f.btn.style.left = to+ 'px';
                                        f.ondrag(m.round(m.max(0, to / max) * 100), to);
                                        b.getSelection ? b.getSelection().removeAllRanges() : g.selection.empty();
                                };
                                g.onmouseup = new Function('this.onmousemove=null');
                        };
                },
                ondrag: function(pos, x) {
                        this.step.style.width = Math.max(0, x) +2+ 'px';
                        this.title.innerHTML = pos / 10 + this.unit + "";
                }
        }
        new scale('btn0', 'bar0', 'title0', "分钟");
        new scale('btn1', 'bar1', 'title1', "分钟");
        new scale('btn2', 'bar2', 'title2', "天");
        new scale('btn3', 'bar3', 'title3', "次");
</script>
-->
<script src="js/jquery.nouislider.js"></script>

<!-- this page specific inline scripts -->
<script>
    //min/max slider
    function huadong(my, unit, def, max) {
        $(my).noUiSlider({
            range: [0, max],
            start: [def],
            handles: 1,
            connect: 'upper',
            slide: function () {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
                console.log($(this).find(".noUi-handle").parent().parent().html());
            },
            set: function () {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
            }
        });
        $(my).val(def, true);
    }

    huadong('.slider-minmax1', "分钟", "5", 30);
    huadong('.slider-minmax2', "分钟", "6", 15);
    huadong('.slider-minmax3', "分钟", "10", 60);
    huadong('.slider-minmax4', "次", "2", 10);
    huadong('.slider-minmax5', "天", "3", 7);
    huadong('.slider-minmax6', "天", "8", 10);
</script>

<%--初始化后台页面数据--%>
<script>


    window.onload = function () {
        // 自动跳转页面
        autoClick();
        //创建异步对象
        let allContent;

        if (window.XMLHttpRequest) {

            allContent = new XMLHttpRequest();
        } else {
            try {

                allContent = new ActiveXObject("Msxm12.XMLHTTP");

            } catch (e) {

                allContent = new ActiveXObject("Microsoft.XMLHTTP");
            }
        }


        //内容
        allContent.open("GET", "<%=path %>/index?method=allContent", true);

        //显示内容
        allContent.onreadystatechange = function () {
            if (4 == allContent.readyState) {
                if (200 == allContent.status) {
                    let result = allContent.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(result);
                    displayAllContent(result);

                }
            }

        };
        allContent.send();

        function displayAllContent(json) {
            let div = document.getElementById("showPage");
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
                if (10 < p.length) {
                    p = p.substr(0, 10);
                }

                if (img == "") {
                    div.innerHTML += "<div class=\"row\"><div class=\"col-xs-1\" name=\"content_id\">" + id + "</div><div class=\"col-xs-2\">" + h1 + "</div><div class=\"col-xs-1\">" + span + "</div><div class=\"col-xs-1\">" + uploadtime + "</div><div class=\"col-xs-2\">" + p + "</div><div class=\"col-xs-2\"></div><div class=\"col-xs-2\"><button  class=\"btn btn-success btn-xs\" data-toggle=\"modal\" data-target=\"#reviseSchool\" style=\"margin-top:10px \" onclick=\"idQuery(" + id + ");\" >修改</button><form method=\"post\" action=\"<%=path %>/contentdel?cid=" + id + " \" id=\"del_btn\" name=\"delcontent\"><button type=\"sumbit\" class=\"btn btn-danger btn-xs\" data-toggle=\"modal\" data-target=\"#deleteSchool\">删除</button></form></div></div>";
                } else {
                    div.innerHTML += "<div class=\"row\"><div class=\"col-xs-1\" name=\"content_id\">" + id + "</div><div class=\"col-xs-2\">" + h1 + "</div><div class=\"col-xs-1\">" + span + "</div><div class=\"col-xs-1\">" + uploadtime + "</div><div class=\"col-xs-2\">" + p + "</div><div class=\"col-xs-2\"><img  src=\"<%=path%>/" + img + "\" style=\"width:42px!important;height:63px!important;margin-top:3px;\"  /></div><div class=\"col-xs-2\"><button  class=\"btn btn-success btn-xs\" data-toggle=\"modal\" data-target=\"#reviseSchool\" style=\"margin-top:10px \" onclick=\"idQuery(" + id + ");\" >修改</button><form method=\"post\" action=\"<%=path %>/contentdel?cid=" + id + " \" id=\"del_btn\" name=\"delcontent\"><button type=\"sumbit\" class=\"btn btn-danger btn-xs\" data-toggle=\"modal\" data-target=\"#deleteSchool\">删除</button></form></div></div>";
                }


            }

        }
    }

    // 自动跳转选项卡
    function autoClick() {

        // IE
        if (document.all) {
            document.getElementById("contentManage").click();
        }
        // 其它浏览器
        else {
            var e = document.createEvent("MouseEvents");
            e.initEvent("click", true, true);
            document.getElementById("contentManage").dispatchEvent(e);
        }
    }

</script>

<%--修改--%>
<script>
    function idQuery(id) {

        let idContent;

        if (window.XMLHttpRequest) {

            idContent = new XMLHttpRequest();

        } else {
            try {

                idContent = new ActiveXObject("Msxm12.XMLHTTP");

            } catch (e) {

                idContent = new ActiveXObject("Microsoft.XMLHTTP");

            }
        }


        //内容
        idContent.open("GET", "<%=path %>/contentquery?cid=" + id + "", true);


        //显示内容
        idContent.onreadystatechange = function () {
            if (4 == idContent.readyState) {
                if (200 == idContent.status) {
                    let result = idContent.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(result);
                    displayIdContent(result);

                }
            }

        };
        idContent.send();

        function displayIdContent(json) {
            let titleGroup = document.getElementById("titleGroup");
            titleGroup.innerHTML = "";
            let aurthorGroup = document.getElementById("aurthorGroup");
            aurthorGroup.innerHTML = "";
            let contentGroup = document.getElementById("contentGroup");
            contentGroup.innerHTML = "";
            let imgGroup = document.getElementById("imgGroup");
            imgGroup.innerHTML = "";

            let idHid = document.getElementById("uId");
            idHid.innerHTML = "";

            let obj = json[0];
            let id = obj.id;
            let h1 = obj.h1;
            let span = obj.span;
            let img = obj.img;
            let a = obj.a;
            let p = obj.p;

            titleGroup.innerHTML += "<label for=\"sName\" class=\"col-xs-3 control-label\">主题：</label><input type=\"text\" name=\"uTitle\" class=\"form-control input-sm duiqi\" id=\"uTitle\"value=\"" + h1 + "\" style=\"width: 500px!important\" placeholder=\"\">";
            aurthorGroup.innerHTML += "<label for=\"sName\" class=\"col-xs-3 control-label\">作者：</label><input type=\"text\" name=\"uAurthor\" class=\"form-control input-sm duiqi\" id=\"uAuthor\"value=\"" + span + "\" style=\"width: 500px!important\" placeholder=\"\">";
            contentGroup.innerHTML += "<label for=\"sOrd\" class=\"col-xs-3 control-label\">内容：</label><textarea name=\"uContent\" class=\"form-control input-sm duiqi\" id=\"uContent\"name=\"ccontent\" placeholder=\"\"style=\"height: 100px;width: 500px!important\">" + p + "</textarea>";

            if (img == "") {
                imgGroup.innerHTML += "<label for=\"sOrd\" class=\"col-xs-3 control-label\">封面：</label><input type=\"file\" class=\"form-control input-sm duiqi\" id=\"uImg\" name=\"uImg\" placeholder=\"\" onchange=\"change('ucimg','uImg')\" ><img src=\"\" name=\"ucimg\" id=\"ucimg\" style=\"width:200px;height:200px;margin-top: 10px;visibility: hidden;\" />";
            } else {
                imgGroup.innerHTML += "<label for=\"sOrd\" class=\"col-xs-3 control-label\">封面：</label><img src=\"<%=path %>/" + img + "\" class=\"form-control input-sm duiqi\" id=\"qImg\" style=\"width: 200px;height: 200px;float:left;margin-left:1px!important\"><input style=\"float: left;margin-left:80px!important\" type=\"file\" class=\"form-control input-sm duiqi\" id=\"uImg\"name=\"uImg\" placeholder=\"\" onchange=\"change('ucimg','uImg')\"><img src=\"\" name=\"ucimg\" id=\"ucimg\" style=\"width:200px;height:200px;margin-left: -200px;margin-top:40px;visibility: hidden;float:left;\" />";
            }


            idHid.innerHTML += " <input type=\"hidden\" name=\"uId\" id=\"uId\" value=\"" + id + "\"><input type=\"hidden\" value=\"" + img + "\" name=\"oldimg\">";


            updateSelect(a);

        }


    }


    function updateSelect(flSelect) {
        //创建异步对象
        let flContent;
        if (window.XMLHttpRequest) {
            flContent = new XMLHttpRequest();
        } else {
            try {
                flContent = new ActiveXObject("Msxm12.XMLHTTP");
            } catch (e) {
                flContent = new ActiveXObject("Microsoft.XMLHTTP");

            }
        }

        // 下拉框
        flContent.open("GET", "<%=path %>/index?method=fiveTitle", true);

        // 下拉框
        flContent.onreadystatechange = function () {
            if (4 == flContent.readyState) {
                if (200 == flContent.status) {
                    let result = flContent.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(result);
                    displayUFLContent(result);

                }
            }
        };
        flContent.send();

        function displayUFLContent(json) {
            let fl = document.getElementById("flGroup");
            fl.innerHTML = "";

            let len = json.length;
            var p = "<label for=\"sName\" class=\"col-xs-3 control-label\">分类：</label><select class=\"form-control input-sm duiqi\" id=\"uFL\" name=\"uFL\" style=\"width: 105px!important;\">";

            for (let i = 0; i < len; i++) {

                let obj = json[i];
                let id = obj.id;
                let title = obj.title;
                let a = obj.a;
                if (flSelect.match(a)) {
                    p += "<option value=\"" + a + "\" name=\"" + id + "\" selected>" + title + "</option>";
                } else {
                    p += "<option value=\"" + a + "\" name=\"" + id + "\">" + title + "</option>";
                }
            }
            p += "</select>"
            fl.innerHTML += p;
        }
    }

</script>
<%--add下拉框--%>
<script>

    function addSelect() {
        //创建异步对象

        let flContent;
        if (window.XMLHttpRequest) {
            flContent = new XMLHttpRequest();

        } else {
            try {
                flContent = new ActiveXObject("Msxm12.XMLHTTP");


            } catch (e) {
                flContent = new ActiveXObject("Microsoft.XMLHTTP");

            }
        }


        // 下拉框
        flContent.open("GET", "<%=path %>/index?method=fiveTitle", true);

        // 下拉框
        flContent.onreadystatechange = function () {
            if (4 == flContent.readyState) {
                if (200 == flContent.status) {
                    let result = flContent.responseText;
                    // typeof显示数据类型
                    //类型转换 object
                    result = JSON.parse(result);
                    // alert(result);
                    displayFLContent(result);

                }
            }

        };
        flContent.send();

        function displayFLContent(json) {
            let fl = document.getElementById("fl");
            fl.innerHTML = "";


            let len = json.length;
            var p = "<label for=\"sName\" class=\"col-xs-3 control-label\">分类：</label><select class=\"form-control input-sm duiqi\" id=\"sFL\" name=\"sFL\" style=\"width: 105px!important;\"><option value=\"\">--请选择--</option>";


            for (let i = 0; i < len; i++) {

                let obj = json[i];
                let id = obj.id;
                let title = obj.title;
                let a = obj.a;
                p += "<option value=\"" + a + "\" name=\"" + id + "\">" + title + "</option>";


                // <option value="2" name="2"> 乡土经济</option>
                // <option value="3" name="3"> 乡贤名士</option>
                // <option value="4" name="4"> 乡土习俗</option>
                // <option value="5" name="5"> 文化遗产</option>


            }
            p += "</select>"
            fl.innerHTML += p;

        }
    }


</script>

<%--预览图--%>
<script>
    //使用IE条件注释来判断是否IE6，通过判断userAgent不一定准确
    if (document.all) document.write('<!--[if lte IE 6]><script type="text/javascript">window.ie6= true<\/script><![endif]-->');
    // var ie6 = /msie 6/i.test(navigator.userAgent);//不推荐，有些系统的ie6 userAgent会是IE7或者IE8
    function change(picId,fileId) {
        var pic = document.getElementById(picId);
        var file = document.getElementById(fileId);
        if(window.FileReader){//chrome,firefox7+,opera,IE10+
            oFReader = new FileReader();
            oFReader.readAsDataURL(file.files[0]);
            oFReader.onload = function (oFREvent) {pic.src = oFREvent.target.result;pic.style.visibility = "visible";};
        }
        else if (document.all) {//IE9-//IE使用滤镜，实际测试IE6设置src为物理路径发布网站通过http协议访问时还是没有办法加载图片
            file.select();
            file.blur();//要添加这句，要不会报拒绝访问错误（IE9或者用ie9+默认ie8-都会报错，实际的IE8-不会报错）
            var reallocalpath = document.selection.createRange().text//IE下获取实际的本地文件路径
            //if (window.ie6) pic.src = reallocalpath; //IE6浏览器设置img的src为本地路径可以直接显示图片
            //else { //非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现，IE10浏览器不支持滤镜，需要用FileReader来实现，所以注意判断FileReader先
            pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
            pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==';//设置img的src为base64编码的透明图片，要不会显示红xx
            pic.style.visibility = "visible";
            // }
        }
        else if (file.files) {//firefox6-
            if (file.files.item(0)) {
                url = file.files.item(0).getAsDataURL();
                pic.src = url;
                pic.style.visibility = "visible";
            }
        }
    }

</script>
</body>
</html>
