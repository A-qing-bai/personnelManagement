<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>
</fieldset>
<fieldset class="layui-elem-field layui-field-title">
    <legend>用户查询</legend>
    <div class="layui-field-box">
        <form class="layui-form" action="#" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名：</label>
                <div class="layui-input-inline">
                    <input type="text" name="name" placeholder="请输入" autocomplete="off" class="layui-input" >
                </div>
                <button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
            </div>
        </form>
    </div>
    <div class="layui-field-box">
        <table id="user" lay-filter="test"></table>
    </div>
</fieldset>
<script type="text/html" id="emo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="/js/jquery-3.4.1.min.js"></script>
<script src="/layui/layui.js"></script>
<script>
    layui.use(['table','element','layer','form'], function () {
        var element = layui.element;
        var table = layui.table;
        var form = layui.form;
        var layer = layui.layer;

        x(table, '#user', '/admin/selectAll');

        //监听提交
        form.on('submit(formDemo)', function(data){
            x(table, '#user', '/admin/selectByName/'+data.field.name);
            return false;
        });

        table.on('tool(test)', function (obj) {
            var data = obj.data;
            var layEvent = obj.event;

            if (layEvent === 'detail') { //查看
                layer.open({
                    type: 2,
                    content: '/admin/selectById/'+data.id+'/1',
                    shade: [0.8, '#393D49'],
                    area: ['300px', '260px'],
                    resize:false
                });
            }

            if (layEvent === 'edit') {
                layer.open({
                    type: 2,
                    content: '/admin/selectById/'+data.id+'/2',
                    shade: [0.8, '#393D49'],
                    area: ['300px', '400px'],
                    resize:false,
                    closeBtn: 2,
                    scrollbar: false,
                    cancel: function(index, layero){
                        x(table, '#user', '/admin/selectAll');
                    }
                });
            }

            if (layEvent === 'del') { //删除
                layer.confirm('真的删除行么', function (index) {
                    obj.del();
                    if (!layer.close(index)) {
                        layer.open({
                            type: 2,
                            content: '/admin/delete/'+data.id,
                            shade: [0.8, '#393D49'],
                            area: ['300px', '400px'],
                            resize:false,
                            closeBtn: 2,
                            scrollbar: false,
                            cancel: function(index, layero){
                                x(table, '#user', '/admin/selectAll');
                            }
                        });
                    }
                });
            }
        });

    });

    function x(table, elem, url) {
        table.render({
            elem: elem
            , height: 330
            , url: url //数据接口
            , limit: 10
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'id', title: 'ID', width: 100, sort: true, fixed: 'left'}
                , {field: 'account', title: '账号', width: 240}
                , {field: 'passwd', title: '密码', width: 240}
                , {field: 'name', title: '名称', width: 240}
                , {field: 'time', title: '创建日期', width: 240, templet : function(value){
                        return layui.util.toDateString(value.time);
                    }}
                , {fixed: 'right', width: 200, align: 'center', toolbar: '#emo'}
            ]]
        });
    }
</script>
</body>
</html>
