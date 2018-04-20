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
                    <a href="#" class="active-menu">
                        <i class="fa fa-university" aria-hidden="true"></i>
                        <span>Setup Medical Institution</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i> Add Medical Institution</a></li>
                        <li><a href="<c:url value="/viewInstitution"/>"><i class="fa fa-eye" aria-hidden="true"></i> View Institution</a></li>
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
                Setup Medical Institution
            </h1>
            <ol class="breadcrumb">
                <li><a href="<c:url value="/"/>"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="<c:url value="/"/>"></i> Dashboard</a></li>
                <li class="active">Add Institution</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
                <div class="row">
                    <div class="col-sm-12 col-xs-12">
                        <div class="panel panel-default chartJs">
                            <div class="panel-heading">
                                <div class="card-title">
                                    <div class="title">Add New Medical Institution</div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <form action="<c:url value="#"/>" method="post">

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="institutionType">Institution Type</label>
                                            <select class="form-control" id="institutionType">
                                                <c:forEach items="${institutionTypeList}" var="type">
                                                    <option>${type.type_Name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <input type="text" name="institutionName" class="form-control" id="institutionName" placeholder="Institution Name">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="text" name="mobileNumber" class="form-control" id="mobileNumber" placeholder="Mobile Number">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <input type="text" id="autocomplete" class="form-control" placeholder="Enter your address" onfocus="geolocate()"/>
                                            <!--textarea cols="30" rows="2" name="address" class="form-control" id="address" placeholder="Address"-->
                                        </div>

                                    </div>
                                    <div class="form-row">

                                        <div class="form-group col-md-3">
                                            <input type="text" name="street_number" class="form-control" id="street_number" placeholder="Street No" disabled="true"/>
                                        </div>
                                        <div class="form-group col-md-9">
                                            <input type="text" name="route" class="form-control" id="route" placeholder="Street Name" disabled="true"/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-3">
                                            <input type="text" name="city" class="form-control" id="locality" placeholder="City" disabled="true"/>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="text" name="state" class="form-control" id="administrative_area_level_1" placeholder="State" disabled="true">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="text" name="latitude" class="form-control" id="latitude" placeholder="Latitude" disabled="true">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="text" name="longitude" class="form-control" id="longitude" placeholder="Longitude" disabled="true">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <input type="text" name="zip-code" class="form-control" id="postal_code" placeholder="Zip Code" disabled="true"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="text" name="country" class="form-control" id="country" placeholder="Country" disabled="true"/>
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
<script>
    // This example displays an address form, using the autocomplete feature
    // of the Google Places API to help users fill in the information.

    // This example requires the Places library. Include the libraries=places
    // parameter when you first load the API. For example:
    // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

    var placeSearch, autocomplete;
    var componentForm = {
        street_number: 'short_name',
        route: 'long_name',
        locality: 'long_name',
        administrative_area_level_1: 'short_name',
        country: 'long_name',
        postal_code: 'short_name'
    };

    function initAutocomplete() {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
            /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
            {types: ['geocode']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete.addListener('place_changed', fillInAddress);
    }

    function fillInAddress() {
        // Get the place details from the autocomplete object.
        var place = autocomplete.getPlace();

        for (var component in componentForm) {
            document.getElementById(component).value = '';
            document.getElementById(component).disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
            var addressType = place.address_components[i].types[0];
            if (componentForm[addressType]) {
                var val = place.address_components[i][componentForm[addressType]];
                document.getElementById(addressType).value = val;
            }
        }
    }

    // Bias the autocomplete object to the user's geographical location,
    // as supplied by the browser's 'navigator.geolocation' object.
    function geolocate() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var geolocation = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };
                var circle = new google.maps.Circle({
                    center: geolocation,
                    radius: position.coords.accuracy
                });
                autocomplete.setBounds(circle.getBounds());
            });
        }
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCFdyqno_PbeGyF2sd4J4nak79qMkuU_Wk&libraries=places&callback=initAutocomplete"
        async defer></script>
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
