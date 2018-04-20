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
    <title>Open-Clinic: Configuration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no" name="viewport"/>

    <!-- Bootstrap Styles-->
    <link href="<c:url value= "resources/css/bootstrap.min.css"/>" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="<c:url value="resources/css/font-awesome.min.css"/>" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="<c:url value="resources/css/ionicons.min.css"/>" rel="stylesheet" />

    <link rel="stylesheet" href="<c:url value="resources/css/AdminLTE.min.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/css/blue.css"/>">
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

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="../../index2.html"><b>OPEN</b>Clinic</a>
    </div>
    <div class="message" style="color:red">
        <c:if test="${logout != null}">
            <span><b>${logout}</b></span>
        </c:if>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Log in as Super Admin</p>

        <form action="${pageContext.request.contextPath}/login" method="post">
            <div class="errormessage" style="color:red">
                <c:if test="${errorMessage != null}">
                    <span><b>${errorMessage}</b></span>
                </c:if>
                <c:if test="${message != null}">
                    <span><b>${message}</b></span>
                </c:if>
            </div>
            <div class="form-group has-feedback">

                <input type="text" name="username" class="form-control" placeholder="Username">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <%--<div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> Remember Me
                        </label>
                    </div>--%>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Log In</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
    </div>
    <!-- /.login-box-body -->
</div>

<!-- /.login-box -->
<!-- ./wrapper -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<!-- Bootstrap Js -->
<script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
<!-- iCheck -->
<script src="<c:url value="resources/js/icheck.min.js"/>"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>

</html>
