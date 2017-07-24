<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/23
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>${article.title}</title>
    <style type="text/css">
        .labelinfo h3{
            color: red;
        }
    </style>
</head>
<body class="labelinfo">
    <h2>${article.title}</h2>
    ${article.content}
    <h3>${article.posttime}</h3>
    <h3>摘自:${article.sourcesite}</h3>
    <h3>原文链接:${article.originurl}</h3>
</body>
</html>
