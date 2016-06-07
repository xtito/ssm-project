<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@include file="/inc.jsp" %>
<!DOCTYPE html>

<%--
  
  User: Zy
  Date: 2016/6/7
  Time: 22:37
--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title></title>
</head>
<body>

<div class="main-body">
    <div class="con-layout">
        <form action="${ctx}/mvc/user/manager/update" method="post">
            <input type="hidden" name="uuid" value="${requestScope.user.uuid}" />
            <table>
                <tr>
                    <td><label for="name">姓名：</label></td>
                    <td><input type="text" id="name" name="userName" value="${requestScope.user.userName}" /></td>
                </tr>
                <tr>
                    <td><label for="gender">性别：</label></td>
                    <td><input type="text" id="gender" name="gender" value="${requestScope.user.gender}" /></td>
                </tr>
                <tr>
                    <td><label for="birthday">出生日期：</label></td>
                    <td><input type="text" id="birthday" name="birthday" value="${requestScope.user.birthday}" /></td>
                </tr>
                <tr>
                    <td><label for="address">地址：</label></td>
                    <td><input type="text" id="address" name="address" value="${requestScope.user.address}" /></td>
                </tr>
                <tr>
                    <td><button type="submit">更新</button></td>
                </tr>
            </table>
        </form>
    </div>
</div>

</body>
</html>
