<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@include file="/inc.jsp" %>
<!DOCTYPE html>

<%--
  
  User: Zy
  Date: 2016/6/7
  Time: 20:37
--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <script src="${ctx}/js/jquery-1.9.1.min.js"></script>
    <link rel="stylesheet" href="${ctx}/css/upload-plugin.css" />
    <script src="${ctx}/js/webuploader.js"></script>
    <script type="text/javascript">
        var BASE_URL = "${ctx}";
    </script>
    <script src="${ctx}/js/getting-started.js"></script>
    <title>用户列表</title>

    <style type="text/css">
        .main-body {
            width: 100%;
        }
        .con-layout {
            width: 1024px;
            margin: 0 auto;
        }
        .table {
            border-collapse:collapse;
            width: 100%;

        }
        .table tr td, .table tr th {
            border: 1px solid #000;
        }
    </style>

</head>
<body>

    <div class="main-body">
        <div class="con-layout">
            <div class="uploader-plugins">
                <div class="plugin">
                    <!--用来存放文件信息-->
                    <div id="the_list" class="uploader-list">
                        <p class="default-text">请选择要上传的文件</p>
                    </div>
                    <div class="buts">
                        <div id="picker" class="picker">选择文件</div>
                        <button id="ctr_but" class="but but-default ml20">开始上传</button>
                    </div>
                </div>
            </div>

            <table class="table">
                <thead>
                <tr>
                    <th>用户姓名</th>
                    <th>出生日期</th>
                    <th>性别</th>
                    <th>住址</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.users}" var="user">
                    <tr>
                        <td>${user.userName}</td>
                        <td>${user.birthday}</td>
                        <td>${user.gender == 1 ? '男' : user.gender == 2 ? '女' : '异常'}</td>
                        <td>${user.address}</td>
                        <td>
                            <a href="${ctx}/mvc/user/manager/update/ui?uuid=${user.uuid}">编辑</a>
                            <a href="${ctx}/mvc/user/manager/delete?uuid=${user.uuid}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
