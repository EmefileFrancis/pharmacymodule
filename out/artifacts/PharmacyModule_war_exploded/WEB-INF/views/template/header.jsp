<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: SP
  Date: 10/27/2017
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Open-Clinic: Setup Medical Institution</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no" name="viewport"/>

    <!-- Bootstrap Styles-->
    <link href="<c:url value= "resources/css/bootstrap.min.css"/>" rel="stylesheet" />
    <!-- Bootstrap DataTables CSS -->
    <link href="<c:url value="resources/css/dataTables.bootstrap4.css"/>" rel="stylesheet">
    <!-- FontAwesome Styles-->
    <link href="<c:url value="resources/css/font-awesome.min.css"/>" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="<c:url value="resources/css/ionicons.min.css"/>" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="<c:url value="resources/css/jquery-jvectormap.css"/>" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value="resources/css/AdminLTE.min.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/css/_all-skins.min.css"/>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
<!-- Check if logged in -->
<c:if test="${is_superuser == null}">
    <c:redirect url="/login"/>
</c:if>
<div id="wrapper">
    <header class="main-header">

        <!-- Logo -->
        <a href="<c:url value="/"/>" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>O</b>PC</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>OPEN-</b>Clinic</span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                    <!-- Notifications: style can be found in dropdown.less -->
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                                            page and may cause design problems
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-red"></i> 5 new members joined
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user text-red"></i> You changed your username
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>

                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<c:url value="resources/images/user2-160x160.jpg"/>" class="user-image" alt="User Image">
                            <span class="hidden-xs">${username}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="<c:url value="resources/images/user2-160x160.jpg"/>" class="img-circle" alt="User Image">

                                <p>
                                    ${full_name} - role: Super Admin
                                    <small>Last Login: ${last_login}</small>
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-right">
                                    <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger btn-flat"><i class="fa fa-sign-out" aria-hidden="true"></i>Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

        </nav>
    </header>