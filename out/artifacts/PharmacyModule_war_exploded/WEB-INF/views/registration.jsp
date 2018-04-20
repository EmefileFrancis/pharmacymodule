<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: SP
  Date: 10/26/2017
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="resources/images/favicon.png"/>">
    <title>Home</title>
    <!-- MaterialDesign Icons -->

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="resources/css/bootstrap.min.css"/> " rel="stylesheet">
    <!-- This page CSS -->
    <!-- chartist CSS -->
    <link href="<c:url value="resources/css/chartist.min.css" />" rel="stylesheet">
    <link href="<c:url value="resources/css/chartist-plugin-tooltip.css" />" rel="stylesheet">
    <!--c3 CSS -->
    <link href="<c:url value="resources/css/c3.min.css"/> " rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="resources/css/style.css"/> " rel="stylesheet">
    <!-- Dashboard 1 Page CSS -->
    <link href="<c:url value="resources/css/dashboard.css"/> " rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="<c:url value="resources/css/default-dark.css"/> " rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="fix-header fix-sidebar card-no-border">
<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">Admin Pro</p>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <header class="topbar">
        <nav class="navbar top-navbar navbar-expand-md navbar-light">
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    <!-- Logo icon --><b>
                    <img src="<c:url value="resources/images/logo-icon.png"/>" alt="homepage" class="dark-logo" />
                </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span>
                            <img src="<c:url value="resources/images/logo-text.png"/>" alt="homepage" class="dark-logo" />
                        </span>
                </a>
            </div>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <div class="navbar-collapse">
                <!-- ============================================================== -->
                <!-- toggle and nav items -->
                <!-- ============================================================== -->
                <ul class="navbar-nav mr-auto">
                    <!-- This is  -->
                    <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                </ul>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
                <ul class="navbar-nav my-lg-0">
                    <!-- ============================================================== -->
                    <!-- Search -->
                    <!-- ============================================================== -->
                    <li class="nav-item hidden-xs-down search-box"> <a class="nav-link hidden-sm-down waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                        <div>
                            <h3 class="card-title m-b-5"><span class="lstick"></span>Welcome, Super Admin.</h3>
                        </div>
                    </li>

                </ul>
            </div>
        </nav>
    </header>
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <aside class="left-sidebar">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav">
                    <li> <a class="waves-effect waves-dark" href="index.html" aria-expanded="false"><i class="mdi mdi-light mdi-hospital-building"></i><span class="hide-menu">Setup Medical Institution</span></a></li>
                    <li> <a class="waves-effect waves-dark" href="pages-profile.html" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">Setup Institution Type</span></a></li>
                    <li> <a class="waves-effect waves-dark" href="table-basic.html" aria-expanded="false"><i class="mdi mdi-table"></i><span class="hide-menu">Stepup Practitioner</span></a></li>
                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor">Register</h3>
                </div>
                <!--div class="col-md-7 align-self-center">
                    <a href="https://wrappixel.com/templates/adminpro" class="btn waves-effect waves-light btn-danger pull-right hidden-sm-down"> Upgrade to Pro</a>
                </div-->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Sales overview chart -->
            <!-- ============================================================== -->
            <div class="row">

                    <form action="<c:url value="#"/>" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <input type="text" name="username" class="form-control" id="username" placeholder="Username">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" name="password" class="form-control" id="password1" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <input type="text" name="password" class="form-control" id="password" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <input type="text" name="firstName" class="form-control" id="firstName" placeholder="First Name">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Last Name">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <input type="text" name="email" class="form-control" id="email" placeholder="Mobile Number">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" name="mobileNumber" class="form-control" id="mobileNumber" placeholder="Mobile Number">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <input type="textarea" name="address" class="form-control" id="address" placeholder="Address">
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <input type="text" name="city" class="form-control" id="city" placeholder="City">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" name="state" class="form-control" id="state" placeholder="State">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <select class="form-control" id="practitioner">
                                    <c:forEach items="${practitioners}" var="practitioner">
                                        <option>${practitioner.mp_name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <select class="form-control" id="institution">
                                    <option>Doctor</option>
                                    <option>Nurse</option>
                                    <option>Pharmacist</option>
                                </select>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary"/>
                    </form>

            </div>

        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer"> © 2017 Admin Pro by Special Project </footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<!-- Bootstrap popper Core JavaScript -->
<script src="<c:url value="resources/js/popper.min.js"/>"></script>
<script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="<c:url value="resources/js/perfect-scrollbar.jquery.min.js"/>"></script>
<!--Wave Effects -->
<script src="<c:url value="resources/js/waves.js"/>"></script>
<!--Menu sidebar -->
<script src="<c:url value="resources/js/sidebarmenu.js"/>"></script>
<!--Custom JavaScript -->
<script src="<c:url value="resources/js/custom.min.js"/>"></script>
<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->
<script src="<c:url value="resources/js/chartist.min.js"/>"></script>
<script src="<c:url value="resources/js/chartist-plugin-tooltip.min.js"/>"></script>
<!--c3 JavaScript -->
<script src="<c:url value="resources/js/d3.min.js"/>"></script>
<script src="<c:url value="resources/js/c3.min.js"/>"></script>
<!-- Chart JS -->
<script src="<c:url value="resources/js/dashboard.js"/>"></script>
</body>
</html>
