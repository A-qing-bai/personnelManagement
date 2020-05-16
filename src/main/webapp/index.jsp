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
        <div class="layui-logo">人事管理</div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    ${admin.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" onclick="address('user_show');">基本资料</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="login.jsp">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black" style="margin-top: 49px;">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="test" lay-shrink="all">
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd onclick="address('user_all');"><a href="javascript:;">用户查询</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">添加用户</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">部门管理</a>
                    <dl class="layui-nav-child">
                        <dd onclick="address('user_all');"><a href="javascript:;">部门查询</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">添加部门</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">修改部门</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">职位管理</a>
                    <dl class="layui-nav-child">
                        <dd onclick="address('user_all');"><a href="javascript:;">职位查询</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">添加职位</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">修改职位</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">职位管理</a>
                    <dl class="layui-nav-child">
                        <dd onclick="address('user_all');"><a href="javascript:;">职位查询</a></dd>
                        <dd onclick=""><a href="javascript:;" onclick="">添加职位</a></dd>
                        <dd onclick=""><a href="javascript:;" onclick="">修改职位</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">员工管理</a>
                    <dl class="layui-nav-child">
                        <dd onclick="address('user_all');"><a href="javascript:;">员工查询</a></dd>
                        <dd onclick=""><a href="javascript:;" onclick="">添加员工</a></dd>
                        <dd onclick=""><a href="javascript:;" onclick="">修改员工</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">公告管理</a>
                    <dl class="layui-nav-child">
                        <dd onclick="address('user_all');"><a href="javascript:;">公告查询</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">添加公告</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">修改公告</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">下载中心</a>
                    <dl class="layui-nav-child">
                        <dd onclick="address('user_all');"><a href="javascript:;">文档查询</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">上传文档</a></dd>
                        <dd onclick="address('user_all');"><a href="javascript:;" onclick="">下载文档</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <!-- 主体内容 -->
    <div class="layui-body" id="LAY_app_body">
        <div class="layadmin-tabsbody-item layui-show">
            <iframe src="/user_show.jsp" frameborder="0" class="layadmin-iframe"></iframe>
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
    function address(address){
        $("iframe").attr("src","/"+address+".jsp");
    }

</script>
</body>
</html>