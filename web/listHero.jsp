<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: huangzijian888
  Date: 2019-04-18
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>

<script>
    $(function(){
        $("a").addClass("btn btn-default btn-xs");

    });

</script>

<head>
    <title>英雄列表</title>
</head>
<body>
<table style="width: 90%;margin: 44px auto" class="table table-striped table-bordered table-hover  table-condensed" align='center' border='1' cellspacing='0'>
    <tr>
        <td>id</td>
        <td>名字</td>
        <td>血量</td>
        <td>伤害</td>
        <td>编辑</td>
        <td>删除</td>
    </tr>
    <c:forEach items="${heroes}" var="hero" varStatus="st">
    <tr>
        <td>${hero.id}</td>
        <td>${hero.name}</td>
        <td>${hero.hp}</td>
        <td>${hero.damage}</td>
        <td><a href="editHero?id=${hero.id}">edit</a></td>
        <td><a href="deleteHero?id=${hero.id}">delete</a></td>
    </tr>
    </c:forEach>
    </tr>
</table>
<nav
>
    <ul class="pager">
        <li><a href="?start=0">首 页</a></li>
        <li><a href="?start=${pre}">上一页</a></li>
        <li><a href="?start=${next}">下一页</a></li>
        <li><a href="?start=${last}">末 页</a></li>
    </ul>
</nav>
</body>
</html>
