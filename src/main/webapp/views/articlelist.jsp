<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/22
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/Articlelist.css"/>"/>
</head>
<body class="bootstrap-admin-with-small-navbar">
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="text-muted bootstrap-admin-box-title">热点文章</div>
                </div>
                <div class="bootstrap-admin-panel-content">
                    <c:forEach items="${articleinfos}" var="info">
                        <div class="alert alert-success">
                            <a href="<c:url value="/article/detail/${info.id}"/>" target="_blank">
                                <strong>${info.title}</strong>
                                <span class="badge pull-right" style="border-radius: 10px;">${info.posttime}</span>
                            </a>
                        </div>
                    </c:forEach>
                </div>
                <center>
                <div class="pagination pagination-large">
                    <ul>
                        <li><a href="<c:url value="/article/${typeid}/${pageInfo.prePages}"/>">«</a></li>
                            <c:forEach var="page" items="${pageInfo.pages}">
                                <li><a href="<c:url value="/article/${typeid}/${page}"/>">${page}</a></li>
                            </c:forEach>
                        <li><a href="<c:url value="/article/${typeid}/${pageInfo.nextPages}"/>">»</a></li>
                    </ul>
                </div>
                </center>
            </div>
        </div>
    </div>
</div>
</body>
</html>
