<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/18
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>周晨程的个人网站</title>
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/bootstrap-responsive.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/style-metro.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/style-responsive.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/default.css"/>" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="<c:url value="/css/uniform.default.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/jquery.gritter.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/daterangepicker.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/css/fullcalendar.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/jqvmap.css"/>" rel="stylesheet" type="text/css" media="screen"/>
    <link href="<c:url value="/css/jquery.easy-pie-chart.css"/>" rel="stylesheet" type="text/css" media="screen"/>
    <script src="<c:url value="/js/jquery-1.10.1.min.js"/>" type="text/javascript"></script>
    <link rel="shortcut icon" href="<c:url value="/image/favicon.jpg"/>" />
</head>
<body class="page-header-fixed">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="container-fluid">
            <!-- BEGIN LOGO -->
            <a class="brand" href="index.html">
                <img src="<c:url value="/image/logo.png"/>" alt="logo"/>
            </a>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <img src="<c:url value="/image/menu-toggler.png"/>" alt=""/>
            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav pull-right">
                <!-- BEGIN NOTIFICATION DROPDOWN -->
                <li class="dropdown" id="header_notification_bar">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-warning-sign"></i>
                        <span class="badge">6</span>
                    </a>
                    <ul class="dropdown-menu extended notification">
                        <li>
                            <p>You have 14 new notifications</p>
                        </li>
                        <li>
                            <a href="#">
                                <span class="label label-success"><i class="icon-plus"></i></span>
                                New user registered.
                                <span class="time">Just now</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="label label-important"><i class="icon-bolt"></i></span>
                                Server #12 overloaded.
                                <span class="time">15 mins</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="label label-warning"><i class="icon-bell"></i></span>
                                Server #2 not respoding.
                                <span class="time">22 mins</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="label label-info"><i class="icon-bullhorn"></i></span>
                                Application error.
                                <span class="time">40 mins</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="label label-important"><i class="icon-bolt"></i></span>
                                Database overloaded 68%.
                                <span class="time">2 hrs</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="label label-important"><i class="icon-bolt"></i></span>
                                2 user IP blocked.
                                <span class="time">5 hrs</span>
                            </a>
                        </li>
                        <li class="external">
                            <a href="#">See all notifications <i class="m-icon-swapright"></i></a>
                        </li>
                    </ul>
                </li>
                <!-- END NOTIFICATION DROPDOWN -->
                <!-- BEGIN INBOX DROPDOWN -->
                <li class="dropdown" id="header_inbox_bar">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-envelope"></i>
                        <span class="badge">5</span>
                    </a>
                    <ul class="dropdown-menu extended inbox">
                        <li>
                            <p>You have 12 new messages</p>
                        </li>
                        <li>
                            <a href="inbox.html?a=view">
                                <span class="photo"><img src="<c:url value="/image/avatar2.jpg"/>" alt=""/></span>
                                <span class="subject">
								<span class="from">Lisa Wong</span>
								<span class="time">Just Now</span>
								</span>
                                <span class="message">
								Vivamus sed auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>
                            </a>
                        </li>
                        <li>
                            <a href="inbox.html?a=view">
                                <span class="photo"><img src="./<c:url value="/image/avatar3.jpg"/>" alt=""/></span>
                                <span class="subject">
								<span class="from">Richard Doe</span>
								<span class="time">16 mins</span>
								</span>
                                <span class="message">
								Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>
                            </a>
                        </li>
                        <li>
                            <a href="inbox.html?a=view">
                                <span class="photo"><img src="./<c:url value="/image/avatar1.jpg"/>" alt=""/></span>
                                <span class="subject">
								<span class="from">Bob Nilson</span>
								<span class="time">2 hrs</span>
								</span>
                                <span class="message">
								Vivamus sed nibh auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>
                            </a>
                        </li>
                        <li class="external">
                            <a href="inbox.html">See all messages <i class="m-icon-swapright"></i></a>
                        </li>
                    </ul>
                </li>
                <!-- END INBOX DROPDOWN -->
                <!-- BEGIN TODO DROPDOWN -->
                <li class="dropdown" id="header_task_bar">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-tasks"></i>
                        <span class="badge">5</span>
                    </a>
                    <ul class="dropdown-menu extended tasks">
                        <li>
                            <p>You have 12 pending tasks</p>
                        </li>
                        <li>
                            <a href="#">
								<span class="task">
								<span class="desc">New release v1.2</span>
								<span class="percent">30%</span>
								</span>
                                <span class="progress progress-success ">
								<span style="width: 30%;" class="bar"></span>
								</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
								<span class="task">
								<span class="desc">Application deployment</span>
								<span class="percent">65%</span>
								</span>
                                <span class="progress progress-danger progress-striped active">
								<span style="width: 65%;" class="bar"></span>
								</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
								<span class="task">
								<span class="desc">Mobile app release</span>
								<span class="percent">98%</span>
								</span>
                                <span class="progress progress-success">
								<span style="width: 98%;" class="bar"></span>
								</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
								<span class="task">
								<span class="desc">Database migration</span>
								<span class="percent">10%</span>
								</span>
                                <span class="progress progress-warning progress-striped">
								<span style="width: 10%;" class="bar"></span>
								</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
								<span class="task">
								<span class="desc">Web server upgrade</span>
								<span class="percent">58%</span>
								</span>
                                <span class="progress progress-info">
								<span style="width: 58%;" class="bar"></span>
								</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
								<span class="task">
								<span class="desc">Mobile development</span>
								<span class="percent">85%</span>
								</span>
                                <span class="progress progress-success">
								<span style="width: 85%;" class="bar"></span>
								</span>
                            </a>
                        </li>
                        <li class="external">
                            <a href="#">See all tasks <i class="m-icon-swapright"></i></a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- END TOP NAVIGATION MENU -->
        </div>
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar nav-collapse collapse">
        <!-- BEGIN SIDEBAR MENU -->
        <ul class="page-sidebar-menu">
            <li>
                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                <div class="sidebar-toggler hidden-phone"></div>
                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
            </li>
            <li>
                <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                <form class="sidebar-search">
                    <div class="input-box">
                        <a href="javascript:;" class="remove"></a>
                        <input type="text" placeholder="Search..."/>
                        <input type="button" class="submit" value=" "/>
                    </div>
                </form>
                <!-- END RESPONSIVE QUICK SEARCH FORM -->
            </li>
            <li class="start active ">
                <a href="index.html">
                    <i class="icon-home"></i>
                    <span class="title">Dashboard</span>
                    <span class="selected"></span>
                </a>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-cogs"></i>
                    <span class="title">漫画</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <c:forEach items="${cartoonInfo}" var="item">
                        <li>
                            <a href="javascript:;">
                                ${item.key}
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <c:forEach items="${item.value}" var="piece">
                                    <li>
                                        <a href="<c:url value="/cartoon/${item.key}/${piece.episode}"/>">
                                            第${piece.episode}话 ${piece.title}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                    </c:forEach>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-bookmark-empty"></i>
                    <span class="title">博文收录</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <c:forEach items="${articleTypes}" var="type">
                        <li>
                            <a href="<c:url value="/article/${type.id}/0"/>">
                                ${type.typeName}</a>
                        </li>
                    </c:forEach>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-table"></i>
                    <span class="title">Form Stuff</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="form_layout.html">
                            Form Layouts</a>
                    </li>
                    <li>
                        <a href="form_samples.html">
                            Advance Form Samples</a>
                    </li>
                    <li>
                        <a href="form_component.html">
                            Form Components</a>
                    </li>
                    <li>
                        <a href="form_wizard.html">
                            Form Wizard</a>
                    </li>
                    <li>
                        <a href="form_validation.html">
                            Form Validation</a>
                    </li>
                    <li>
                        <a href="form_fileupload.html">
                            Multiple File Upload</a>
                    </li>
                    <li>
                        <a href="form_dropzone.html">
                            Dropzone File Upload</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-briefcase"></i>
                    <span class="title">Pages</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="page_timeline.html">
                            <i class="icon-time"></i>
                            Timeline</a>
                    </li>
                    <li>
                        <a href="page_coming_soon.html">
                            <i class="icon-cogs"></i>
                            Coming Soon</a>
                    </li>
                    <li>
                        <a href="page_blog.html">
                            <i class="icon-comments"></i>
                            Blog</a>
                    </li>
                    <li>
                        <a href="page_blog_item.html">
                            <i class="icon-font"></i>
                            Blog Post</a>
                    </li>
                    <li>
                        <a href="page_news.html">
                            <i class="icon-coffee"></i>
                            News</a>
                    </li>
                    <li>
                        <a href="page_news_item.html">
                            <i class="icon-bell"></i>
                            News View</a>
                    </li>
                    <li>
                        <a href="page_about.html">
                            <i class="icon-group"></i>
                            About Us</a>
                    </li>
                    <li>
                        <a href="page_contact.html">
                            <i class="icon-envelope-alt"></i>
                            Contact Us</a>
                    </li>
                    <li>
                        <a href="page_calendar.html">
                            <i class="icon-calendar"></i>
                            Calendar</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-gift"></i>
                    <span class="title">Extra</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="extra_profile.html">
                            User Profile</a>
                    </li>
                    <li>
                        <a href="extra_lock.html">
                            Lock Screen</a>
                    </li>
                    <li>
                        <a href="extra_faq.html">
                            FAQ</a>
                    </li>
                    <li>
                        <a href="inbox.html">
                            Inbox</a>
                    </li>
                    <li>
                        <a href="extra_search.html">
                            Search Results</a>
                    </li>
                    <li>
                        <a href="extra_invoice.html">
                            Invoice</a>
                    </li>
                    <li>
                        <a href="extra_pricing_table.html">
                            Pricing Tables</a>
                    </li>
                    <li>
                        <a href="extra_image_manager.html">
                            Image Manager</a>
                    </li>
                    <li>
                        <a href="extra_404_option1.html">
                            404 Page Option 1</a>
                    </li>
                    <li>
                        <a href="extra_404_option2.html">
                            404 Page Option 2</a>
                    </li>
                    <li>
                        <a href="extra_404_option3.html">
                            404 Page Option 3</a>
                    </li>
                    <li>
                        <a href="extra_500_option1.html">
                            500 Page Option 1</a>
                    </li>
                    <li>
                        <a href="extra_500_option2.html">
                            500 Page Option 2</a>
                    </li>
                </ul>
            </li>
            <li>
                <a class="active" href="javascript:;">
                    <i class="icon-sitemap"></i>
                    <span class="title">3 Level Menu</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="javascript:;">
                            Item 1
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="#">Sample Link 1</a></li>
                            <li><a href="#">Sample Link 2</a></li>
                            <li><a href="#">Sample Link 3</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            Item 1
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="#">Sample Link 1</a></li>
                            <li><a href="#">Sample Link 1</a></li>
                            <li><a href="#">Sample Link 1</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            Item 3
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-folder-open"></i>
                    <span class="title">4 Level Menu</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="icon-cogs"></i>
                            Item 1
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-user"></i>
                                    Sample Link 1
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="#"><i class="icon-remove"></i> Sample Link 1</a></li>
                                    <li><a href="#"><i class="icon-pencil"></i> Sample Link 1</a></li>
                                    <li><a href="#"><i class="icon-edit"></i> Sample Link 1</a></li>
                                </ul>
                            </li>
                            <li><a href="#"><i class="icon-user"></i> Sample Link 1</a></li>
                            <li><a href="#"><i class="icon-external-link"></i> Sample Link 2</a></li>
                            <li><a href="#"><i class="icon-bell"></i> Sample Link 3</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="icon-globe"></i>
                            Item 2
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="#"><i class="icon-user"></i> Sample Link 1</a></li>
                            <li><a href="#"><i class="icon-external-link"></i> Sample Link 1</a></li>
                            <li><a href="#"><i class="icon-bell"></i> Sample Link 1</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-folder-open"></i>
                            Item 3
                        </a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-user"></i>
                    <span class="title">Login Options</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="login.html">
                            Login Form 1</a>
                    </li>
                    <li>
                        <a href="login_soft.html">
                            Login Form 2</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-th"></i>
                    <span class="title">Data Tables</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="table_basic.html">
                            Basic Tables</a>
                    </li>
                    <li>
                        <a href="table_responsive.html">
                            Responsive Tables</a>
                    </li>
                    <li>
                        <a href="table_managed.html">
                            Managed Tables</a>
                    </li>
                    <li>
                        <a href="table_editable.html">
                            Editable Tables</a>
                    </li>
                    <li>
                        <a href="table_advanced.html">
                            Advanced Tables</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-file-text"></i>
                    <span class="title">Portlets</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="portlet_general.html">
                            General Portlets</a>
                    </li>
                    <li>
                        <a href="portlet_draggable.html">
                            Draggable Portlets</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-map-marker"></i>
                    <span class="title">Maps</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="maps_google.html">
                            Google Maps</a>
                    </li>
                    <li>
                        <a href="maps_vector.html">
                            Vector Maps</a>
                    </li>
                </ul>
            </li>
            <li class="last ">
                <a href="charts.html">
                    <i class="icon-bar-chart"></i>
                    <span class="title">Visual Charts</span>
                </a>
            </li>
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>
    <div class="page-content">
        <div class="container-fluid">
            <jsp:include page="/views/${content}.jsp"></jsp:include>
        </div>
    </div>
</div>
<script src="<c:url value="/js/bootstrap.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/js/app.js"/>" type="text/javascript"></script>
<script>
    jQuery(document).ready(function () {
        App.init(); // initlayout and core plugins
    });
</script>
</body>
</html>
