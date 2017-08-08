<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/inc.jsp"%>
<html>
<head>
    <title>打印测试</title>
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
        }

        .p-body {
            width: 21cm;
            height: 29.7cm;
            /*border: 1px solid red;*/
        }

        .p-table {
            width: 100%;
            border-collapse: collapse;

        }

        .p-table tbody tr td {
            height: 40px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>

<c:forEach begin="1" end="11" varStatus="i">
    <div class="p-body" style="page-break-after: always;">
        <div>
            <table class="p-table">
                <tbody>
                <c:forEach begin="1" end="10" varStatus="j">
                    <tr>
                        <td>体检科目${i.index}-${j.index}</td>
                        <td>排序号${i.index}-${j.index}</td>
                        <td>体检描述${i.index}-${j.index}</td>
                        <td>详细信息${i.index}-${j.index}</td>
                        <td>备注${i.index}-${j.index}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</c:forEach>


<object id="WebBrowser" width="0" height="0" classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></object>

</body>
</html>
<script type="text/javascript">
    function printPage() {
        var info = "${requestScope.info}";
        if (info == null || info == "" || info == undefined) {
            var userAgent = navigator.userAgent;
            if (userAgent.indexOf("MSIE") > -1) {
                document.getElementById("WebBrowser").Execwb(7, 1);
            } else {
                window.print();
            }
        } else {
            alert(info);
        }
    }

    printPage();
</script>
