<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/9
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String path = request.getContextPath();

%>

<!--弹出修改用户窗口-->
<form method="post" action="<%=path %>/contentupdate" >
    <div class="modal fade" id="reviseSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">修改内容</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form class="form-horizontal">
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">主题：</label>
                                <div class="col-xs-8 ">
                                    <input type="email" class="form-control input-sm duiqi" id="sName" value="${c_id.h1}"
                                           placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">作者：</label>
                                <div class="col-xs-8 ">
                                    <input type="email" class="form-control input-sm duiqi" id="sName" value="${c_id.span}"
                                           placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sLink" class="col-xs-3 control-label">时间：</label>
                                <div class="col-xs-8 ">
                                    <input type="" class="form-control input-sm duiqi" id="sLink" value="${c_id.uploadtime}"
                                           placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sOrd" class="col-xs-3 control-label">内容：</label>
                                <div class="col-xs-8">
                                    <input type="" class="form-control input-sm duiqi" id="sOrd" value="${c_id.p}"
                                           placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sOrd" class="col-xs-3 control-label">封面：</label>
                                <div class="col-xs-8">
                                    <input type="" class="form-control input-sm duiqi" id="sOrd" value="${c_id.img}"
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
</form>
</body>
</html>
