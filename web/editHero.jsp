<%--
  Created by IntelliJ IDEA.
  User: huangzijian888
  Date: 2019-04-20
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>更新英雄</title>
</head>
<body>
<div style="margin:50px auto; width:300px">
    <form action="updateHero" method="post">
    名字:&nbsp;&nbsp;
    <input type="text" name="name" value="${hero.name}">
    <br><br>
    血量:&nbsp;&nbsp;
    <input type="text" name="hp" value="${hero.hp}"><br><br>
    伤害:&nbsp;&nbsp;<input type="text" name="damage" value="${hero.damage}"><br>
    <input type="hidden" name="id" value="${hero.id}">
    <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
