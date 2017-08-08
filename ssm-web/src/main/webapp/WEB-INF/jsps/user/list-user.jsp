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
    <link rel="stylesheet" href="${ctx}/css/webuploader.css" />
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

        .progress {
            height: 20px;
            margin-bottom: 20px;
            overflow: hidden;
            background-color: #f5f5f5;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
            box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
        }

        .progress-bar.active, .progress.active .progress-bar {
            -webkit-animation: progress-bar-stripes 2s linear infinite;
            -o-animation: progress-bar-stripes 2s linear infinite;
            animation: progress-bar-stripes 2s linear infinite;
        }

        .progress-striped .progress-bar {
            background-image: linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);
            background-size: 40px 40px;
            -webkit-background-size: 40px 40px;
        }

        .progress-bar {
            float: left;
            width: 0;
            height: 100%;
            font-size: 12px;
            line-height: 20px;
            color: #fff;
            text-align: center;
            background-color: #337ab7;
            -webkit-box-shadow: inset 0 -1px 0 rgba(0,0,0,.15);
            box-shadow: inset 0 -1px 0 rgba(0,0,0,.15);
            -webkit-transition: width .6s ease;
            -o-transition: width .6s ease;
            transition: width .6s ease;
        }

    </style>


    <%--<script type="text/javascript">
        $(document).ready(function() {

            // 加载文件上传插件
            var uploader = WebUploader.create({
                auto: false, // 选完文件后，是否自动上传
                swf: '${ctx}/js/Uploader.swf', // swf文件路径
                server: '${ctx}/mvc/user/manager/upload', // 文件接收服务端
                pick: '#picker', // 选择文件的按钮。可选  内部根据当前运行是创建，可能是input元素，也可能是flash.
                // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
                resize: false
            });


            // 当有文件被添加进队列的时候
            uploader.on('fileQueued', function (file) {
                var $list = $("#the_list");
                var html = "<div id='" + file.id + "' class='file-item'>" +
                        "   <h4 class='file-info'>" + file.name + "</h4>" +
                        "   <p class='file-state'>等待上传...</p>" +
                        "</div>";
                $list.append(html);
            });


            // 文件上传过程中创建进度条实时显示。
            uploader.on('uploadProgress', function (file, percentage) {
                var $li = $('#' + file.id);
                var $percent = $li.find('.progress .progress-bar');

                // 避免重复创建
                if (!$percent.length) {
                    var html = "<div class='progress progress-striped active'>"   +
                            "   <div class='progress-bar' role='progressbar' style='width: 0'></div>" +
                            "</div>";
                    $li.append(html);
                    $percent = $li.find('.progress-bar');
                }

                $li.find('p.file-state').text('上传中');

                $percent.css('width', percentage * 100 + '%');

            });

            uploader.on('uploadSuccess', function (file) {
                var $file = $('#' + file.id);
                var $state = $file.find('p.file-state');
                $state.text('已上传');
            });

            uploader.on('uploadError', function (file) {
                alert('uploadError');
                var $file = $('#' + file.id);
                var $state = $file.find('p.file-state');
                $state.text('上传出错');
            });

            uploader.on('uploadComplete', function (file) {
                var $file = $('#' + file.id);
                var $state = $file.find('.progress');
                $state.fadeOut();
            });

            $("#ctr_but").on("click", function() {
                if ($(this).hasClass('disabled')) {
                    return false;
                }
                uploader.upload();
            });
        });
    </script>--%>
</head>
<body>

    <div class="main-body">
        <div class="con-layout">
            <div id="uploader" class="wu-example">
                <!--用来存放文件信息-->
                <div id="the_list" class="uploader-list"></div>
                <div class="buts">
                    <div id="picker">选择文件</div>
                    <button id="ctr_but" class="p-but w120">开始上传</button>
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
