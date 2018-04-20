<%@include file="/WEB-INF/views/template/header.jsp"%>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="<c:url value="resources/images/user2-160x160.jpg"/>" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Alexander Pierce</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-university" aria-hidden="true"></i>
                        <span>Setup Medical Institution</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<c:url value="addInstitution"/>"><i class="fa fa-plus-square" aria-hidden="true"></i> Add Medical Institution</a></li>
                        <li><a href="<c:url value="/viewInstitution"/>"><i class="fa fa-eye" aria-hidden="true"></i> View Institution</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#" class="active-menu">
                        <i class="fa fa-thermometer-full" aria-hidden="true"></i><span>Setup Institution Type</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i> Add New Institution Type</a></li>
                        <li><a href="pages/UI/icons.html"><i class="fa fa-eye" aria-hidden="true"></i> View Institution Types</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-briefcase" aria-hidden="true"></i> <span>Setup Practitioner</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<c:url value="addPractitioner"/>"><i class="fa fa-plus-square" aria-hidden="true"></i>Add New Practitioner</a></li>
                        <li><a href="pages/forms/advanced.html"><i class="fa fa-eye" aria-hidden="true"></i>View Practitioners</a></li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Setup Institution Type
            </h1>
            <ol class="breadcrumb">
                <li><a href="<c:url value="superconfig"/>"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="<c:url value="superconfig"/>"></i> Dashboard</a></li>
                <li class="active">Add Institution Type</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="panel panel-default chartJs">
                        <div class="panel-heading">
                            <div class="card-title">
                                <div class="title">Add New Institution Type</div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form action="<c:url value="#"/>" method="post">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <input type="text" name="institutionType" class="form-control" id="institutionType" placeholder="Institution Type">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <input type="submit" class="btn btn-primary"/>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">

        <strong>Copyright &copy; 2017 Open-Clinic</strong> All rights
        reserved.
    </footer>

</div>
<!-- ./wrapper -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<script src="<c:url value="resources/js/jquery-ui.min.js"/>"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap Js -->
<script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
<!-- Morris.js charts -->
<script src="<c:url value="resources/js/raphael.min.js"/>"></script>
<script src="<c:url value="resources/js/morris.min.js"/>"></script>
<!-- Sparkline -->
<script src="<c:url value="resources/js/morris/jquery.sparkline.min.js"/>"></script>
<!-- jvectormap -->
<script src="<c:url value="resources/js/jquery-jvectormap-1.2.2.min.js"/>"></script>
<script src="<c:url value="resources/js/jquery-jvectormap-world-mill-en.js"/>"></script>
<!-- jQuery Knob Chart -->
<script src="<c:url value="resources/js/jquery.knob.min.js"/>"></script>
<!-- daterangepicker -->
<script src="<c:url value="resources/js/moment.min.js"/>"></script>
<script src="<c:url value="resources/js/daterangepicker.js"/>"></script>
<!-- datepicker -->
<script src="<c:url value="resources/js/bootstrap-datepicker.min.js"/>"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<c:url value="resources/js/bootstrap3-wysihtml5.all.min.js"/>"></script>
<!-- Slimscroll -->
<script src="<c:url value="resources/js/jquery.slimscroll.min.js"/>"></script>
<!-- FastClick -->
<script src="<c:url value="resources/js/fastclick.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="resources/js/adminlte.min.js"/>"></script>
<!-- AdminLTE dashboard demo -->
<script src="<c:url value="resources/js/dashboard.js"/>"></script>
<!-- AdminLTE for demo purposes  -->
<script src="<c:url value="resources/js/Chart.js"/>"></script>
<script src="<c:url value="resources/js/dashboard2.js"/>"></script>
<script src="<c:url value="resources/js/demo.js"/>"></script>

</body>

</html>
