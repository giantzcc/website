<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/19
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/demo.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/slicebox.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/custom.css"/>"/>
    <script type="text/javascript" src="<c:url value="/js/modernizr.custom.46884.js"/>"></script>
</head>
<body>
<div>

    <div class="wrapper">
        <center>
            <ul id="sb-slider" class="sb-slider">
                <c:forEach items="${picUrls}" var="Url">
                    <li>
                        <img class="pic_size" src="<c:url value="/image/1.jpg"/>" datasrc="<c:url value="/${Url}"/>"/>
                    </li>
                </c:forEach>
            </ul>
        </center>
        <div id="shadow" class="shadow"></div>

        <div id="nav-arrows" class="nav-arrows">
            <a href="#">Next</a>
            <a href="#">Previous</a>
        </div>

    </div>
    <div class="footer-banner" style="width:728px; margin:30px auto"></div>
</div>
<script type="text/javascript" src="<c:url value="/js/jquery.slicebox.js"/>"></script>
<script type="text/javascript">
    jQuery(document).ready(
            function () {
                $(".sb-slider img").eq(0).attr("src",$(".sb-slider img").eq(0).attr("datasrc"))
                var Page = (function () {
                    var $navArrows = $('#nav-arrows').hide(),
                            $shadow = $('#shadow').hide(),
                            slicebox = $('#sb-slider').slicebox({
                                onReady: function () {

                                    $navArrows.show();
                                    $shadow.show();

                                },
                                orientation: 'r',
                                cuboidsRandom: true
                            }),

                            init = function () {

                                initEvents();

                            },
                            initEvents = function () {
                                pindex = 0;
                                count=$(".sb-slider img").length;
                                // add navigation events
                                $navArrows.children(':first').on('click', function () {
                                    pindex++;
                                    $(".sb-slider img").eq(pindex%count).attr("src",$(".sb-slider img").eq(pindex%count).attr("datasrc"))
                                    slicebox.next();
                                    return false;
                                });

                                $navArrows.children(':last').on('click', function () {
                                    pindex--;
                                    $(".sb-slider img").eq(pindex%count).attr("src",$(".sb-slider img").eq(pindex%count).attr("datasrc"))
                                    slicebox.previous();
                                    return false;
                                });
                            };

                    return {init: init};

                })();
                Page.init();
            });
</script>
</body>
</html>