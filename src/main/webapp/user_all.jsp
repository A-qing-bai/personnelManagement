<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>
</fieldset>
<fieldset class="layui-elem-field layui-field-title">
    <legend>用户查询</legend>
    <div class="layui-field-box">
        <table id="user" lay-filter="test"></table>
    </div>
</fieldset>
<script type="text/html" id="emo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    layui.use('table', function () {
        var table = layui.table;
        table.on('tool(test)', function (obj) {
            var data = obj.data;
            var layEvent = obj.event;

            if (layEvent === 'detail') { //查看
                window.location = "admin_select.jsp?id=" + data.uId + "&i=1";
            }

            if (layEvent === 'edit') {
                window.location = "admin_select.jsp?id=" + data.uId + "&type=update&i=1";
            }

            if (layEvent === 'del') { //删除
                layer.confirm('真的删除行么', function (index) {
                    obj.del();
                    console.log(layer.close(index));
                    if (!layer.close(index)) {
                        window.location = "../UsersServlet?do=delete&id=" + data.uId;
                    }
                });
            }
        });
    });
</script>
<script src="/js/jquery-3.4.1.min.js"></script>
<script src="/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;
    });
    layui.use('table', function () {
        var table = layui.table;
        x(table, '#user', '/admin/selectAll');
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
