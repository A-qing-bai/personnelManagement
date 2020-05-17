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
<form class="layui-form" action="/admin/insert" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">账号</label>
        <div class="layui-input-block">
            <input type="text" name="account" placeholder="请输入" autocomplete="off" class="layui-input"
                   value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input type="text" name="passwd" placeholder="请输入" autocomplete="off" class="layui-input"
                   value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" name="name" placeholder="请输入" autocomplete="off" class="layui-input" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户类型</label>
        <div class="layui-input-block">
            <select name="status" lay-verify="">
                <option value="1">超级管理员</option>
                <option value="2">管理员</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">创建日期</label>
        <div class="layui-input-block">
            <input type="text" name="time" id="time" placeholder="请输入" autocomplete="off" class="layui-input" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
        </div>
    </div>
</form>
<script src="/layui/layui.js"></script>
<script src="/js/jquery-3.4.1.min.js"></script>
<script>
    layui.use(['laydate','form'], function () {
        var laydate = layui.laydate;
        var form = layui.form;

        form.render();
        laydate.render({
            elem: '#time'
            , type: 'date'
        });
    });
</script>
</body>
</html>