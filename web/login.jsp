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
    <meta charset="utf-8">
    <title>login</title>
</head>
<body>
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
    <form action="<%=request.getContextPath()%>/admin" method="post">
        用户名：<input type="text" name="name" id="name" value="<%
        Object name = request.getAttribute("name");
        if (name != null){
            System.out.print(name);
        }
        %>"/><br/>
        密码：<input type="password" name="pwd" id="pwd"/><br/>
        <input type="submit" value="登陆" />
    </form>

</body>
<script>

    let name = document.getElementById("name").value;
    if (name == "") {
        document.getElementById("name").focus();
    } else {
        document.getElementById("pwd").focus();
    }
</script>
</html>
