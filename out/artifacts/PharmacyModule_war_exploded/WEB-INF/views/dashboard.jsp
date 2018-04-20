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
                    <p>${full_name}</p>
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
                        <li><a href="<c:url value="viewInstitution"/>"><i class="fa fa-eye" aria-hidden="true"></i> View Institution</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-thermometer-full" aria-hidden="true"></i><span>Setup Institution Type</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<c:url value="addInstitutionType"/>"><i class="fa fa-plus-square" aria-hidden="true"></i> Add New Institution Type</a></li>
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
                Dashboard
            </h1>
            <ol class="breadcrumb">
                <li><a href="<c:url value="/"/>"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <section class="col-lg-6 connectedSortable">
                    <div class="box box-primary">
                        <div class="box-header">
                            <i class="fa fa-bell-o"></i>

                            <h3 class="box-title">Notifications</h3>

                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">

                        </div>

                    </div>
                </section>
                <section class="col-lg-6 connectedSortable">
                    <!-- quick email widget -->
                    <div class="col-6">
                        <div class="box box-info">
                            <div class="box-header">
                                <i class="fa fa-envelope"></i>

                                <h3 class="box-title">Quick Email</h3>
                                <!-- tools box -->
                                <div class="pull-right box-tools">
                                    <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip"
                                            title="Remove">
                                        <i class="fa fa-times"></i></button>
                                </div>
                                <!-- /. tools -->
                            </div>
                            <div class="box-body">
                                <form action="#" method="post">
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="emailto" placeholder="Email to:">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="subject" placeholder="Subject">
                                    </div>
                                    <div>
                  <textarea class="textarea" placeholder="Message"
                            style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                    </div>
                                </form>
                            </div>
                            <div class="box-footer clearfix">
                                <button type="button" class="pull-right btn btn-default" id="sendEmail">Send
                                    <i class="fa fa-arrow-circle-right"></i></button>
                            </div>
                        </div>
                    </div>

                </section>
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
