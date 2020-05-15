<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Admin</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" href="/layui/css/admin.css">
</head>
<body class="layui-layout-body">
<c:if test="${empty admin}">
    <c:redirect url="/login.jsp"/>
</c:if>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">智能科技后台</div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    ${admin.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="#">基本资料</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="login.jsp">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="test" lay-shrink="all">
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">新闻管理</a>
                    <dl class="layui-nav-child">
                        <dd class="layui-this" onclick="new_all();"><a href="javascript:;">查看所有新闻</a></dd>
                        <dd onclick=""><a href="javascript:;" onclick="">新增新闻</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <!-- 主体内容 -->
    <div class="layui-body" id="LAY_app_body">
        <div class="layadmin-tabsbody-item layui-show">
            <iframe src="#" frameborder="0" class="layadmin-iframe"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        © 人事管理系统
    </div>
</div>
<script src="/layui/layui.js"></script>
<script src="/js/jquery-3.4.1.min.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;
    });
    function new_all(){
        $("iframe").attr("src","new_all.jsp");
    }

</script>
</body>
</html>