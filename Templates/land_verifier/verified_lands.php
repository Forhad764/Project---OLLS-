<!DOCTYPE html>
{% load static %}
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>OLLS | Projects </title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{% static 'plugins/fontawesome-free/css/all.min.css' %}">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{% static 'plugins/overlayScrollbars/css/OverlayScrollbars.min.css' %}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{% static 'dist/css/adminlte.min.css' %}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="Dashboard" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

   

    



  </nav>
  <!-- /.navbar -->
 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="home" class="brand-link">
      <img src="{% static 'dist/img/Site_Logo2.png' %} " alt="OLLS Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Online Land</br>Leasing System</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
    </br>
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{Profile_data}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ user.first_name }} {{user.last_name}}</a>

          </br>
          <form  action="Logout" method="POST">
            {% csrf_token %}
          <button  type="submit"  class="btn btn-primary btn-block">Logout</button>
          </form>
        </div>
        
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              
              <li class="nav-item">
                <a href="Dashboard" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Verified Lands </p>
                </a>
              </li>
            </ul>
          </li>

          <!------------------------------
          <li class="nav-item">
            <a href="gallery" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Available Lands
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
          </li>

          ------------------------------------------------------>
          <!--li class="nav-item">
            <a href="clients_applied_projects" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
              
                <span class="right badge badge-danger">Pending</span>
                Applied </br> projects
              </p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href="clients_paid_projects" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
              
                <span class="right badge badge-danger"></span>
                paid </br> projects
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <!--
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                 Options
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">6</span>
              </p>
            </a>
            ->
              <li class="nav-item">
                <a href="Projects" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>land Informations</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="landowner_contacts" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Landowner contacts</p>
                </a>
              </li-->
          
          <li class="nav-header">LABELS</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Important</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-warning"></i>
              <p>Warning</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>Informational</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    
  </aside>
<!-- /.sidebar -->
<!---------------------------------------------------------------------------------------------------->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark"> Previous Projects history </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">history </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
       
       
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          
              
              <!-- /.col -->
            
            <!-- /.row -->

            <!-- TABLE: LATEST ORDERS -->
          <!---------------------------------Projects------------------------------------------------------------------>
          <section class="col-lg-7 connectedSortable">
<div class="card-header">

<!-- TABLE: LATEST ORDERS -->
<div class="card">
  <div class="card-header border-transparent">
    <h3 class="card-title"></h3>

    <div class="card-tools">
      <button type="button" class="btn btn-tool" data-card-widget="collapse">
        <i class="fas fa-minus"></i>
      </button>
      <button type="button" class="btn btn-tool" data-card-widget="remove">
        <i class="fas fa-times"></i>
      </button>
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body p-0">
    <div class="table-responsive">
      <table class="table m-0">
        <thead>
        <tr>
          <th>Project ID</th>
          <th>status</th>
          <th>status </br>verification</th>
          <th>Land size</th>
          <th>Comment</th>
           <!--th> Popularity </th> -->
        </tr>
        </thead>
        <tbody>
        {% for data in Verified_lands %}
        <tr>
          <td><a href="#">{{ data.project_id_id }}</a></td>
          <td>{{data.status_ver}}</td>
          
        
          <td>
        {{ data.loc_ver }}</td>
        <td>
        {{ data.land_size_ver }}</td>
        <td>
        {{ data.land_ver_com}}</td>
          
          </tr>
        
        {% endfor %}
        
        <!--
        <tr>
          <td><a href="pages/examples/invoice.html">OR7429</a></td>
          <td>iPhone 6 Plus</td>
          <td><span class="badge badge-danger">Delivered</span></td>
          <td>
            <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
          </td>
        </tr>
        <tr>
          <td><a href="pages/examples/invoice.html">OR7429</a></td>
          <td>Samsung Smart TV</td>
          <td><span class="badge badge-info">Processing</span></td>
          <td>
            <div class="sparkbar" data-color="#00c0ef" data-height="20">90,80,-90,70,-61,83,63</div>
          </td>
        </tr>
        <tr>
          <td><a href="pages/examples/invoice.html">OR1848</a></td>
          <td>Samsung Smart TV</td>
          <td><span class="badge badge-warning">Pending</span></td>
          <td>
            <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
          </td>
        </tr>
        <tr>
          <td><a href="pages/examples/invoice.html">OR7429</a></td>
          <td>iPhone 6 Plus</td>
          <td><span class="badge badge-danger">Delivered</span></td>
          <td>
            <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
          </td>
        </tr>
        <tr>
          <td><a href="pages/examples/invoice.html">OR9842</a></td>
          <td>Call of Duty IV</td>
          <td><span class="badge badge-success">Shipped</span></td>
          <td>
            <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
          </td>
        </tr>
        ----------->
        </tbody>
      </table>
    </div>
    <!-- /.table-responsive -->
  </div>
  <!-- /.card-body -->
  <div class="card-footer clearfix">
    <a href="Project" class="btn btn-sm btn-info float-left">Place New Order </a>
    <!--a href="javascript:void(0)" class="btn btn-sm btn-secondary float-right">View All Orders</a-->
  </div>
  <!-- /.card-footer -->
</div>
</div>
</section>
<!----------------------------------Projects end------------------------------------------------------------->
          <!-- /.col -->

          <div class="col-md-4">
            <!-- Info Boxes Style 2 -->
            
            <!-- /.info-box -->
            
            <!-- /.info-box -->
            
            <!-- /.info-box -->
            
            <!-- /.info-box -->

            <!-- /.card -->

            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2020-2021 <a href="home">OllS.COM</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 1.0.0
    </div>
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="{% static 'plugins/jquery/jquery.min.js' %}"></script>
<!-- Bootstrap -->
<script src="{% static 'plugins/bootstrap/js/bootstrap.bundle.min.js' %}"></script>
<!-- overlayScrollbars -->
<script src="{% static 'plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js' %}"></script>
<!-- AdminLTE App -->
<script src="{% static 'dist/js/adminlte.js' %}"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="{% static 'dist/js/demo.js' %}"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="{% static 'plugins/jquery-mousewheel/jquery.mousewheel.js' %}"></script>
<script src="{% static 'plugins/raphael/raphael.min.js' %}"></script>
<script src="{% static 'plugins/jquery-mapael/jquery.mapael.min.js' %}"></script>
<script src="{% static 'plugins/jquery-mapael/maps/usa_states.min.js' %}"></script>
<!-- ChartJS -->
<script src="{% static 'plugins/chart.js/Chart.min.js' %}"></script>

<!-- PAGE SCRIPTS -->
<script src="{% static 'dist/js/pages/dashboard2.js' %}"></script>
</body>
</html>
