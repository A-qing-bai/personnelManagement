<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 14556
  Date: 2020/5/16
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>
<form class="layui-form"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
    <div class="layui-form-item">
        <label class="layui-form-label">账号</label>
        <div class="layui-input-block">
            <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input" value="${a.account}" readonly>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input" value="${a.name}" readonly>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户类型</label>
        <div class="layui-input-block">
            <c:if test="${a.status == 1}">
                <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input" value="超级管理员" readonly>
            </c:if>
            <c:if test="${a.status != 1}">
                <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input" value="管理员" readonly>
            </c:if>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">创建日期</label>
        <div class="layui-input-block">
            <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input" value="${a.time}" readonly>
        </div>
    </div>
</form>
<script src="/layui/layui.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form;

    });
</script>
</body>
</html>