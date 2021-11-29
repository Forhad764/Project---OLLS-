
<!DOCTYPE php>
{% load static %}
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>OLLS | Invoice</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{% static 'plugins/fontawesome-free/css/all.min.css' %}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{% static 'dist/css/adminlte.min.css' %}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="home" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM ->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links ->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu ->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start ->
            <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End ->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start ->
            <div class="media">
              <img src="../../dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End ->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start ->
            <div class="media">
              <img src="../../dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End ->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu ->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li-->
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
                  <p>Client Dashboard </p>
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
          <li class="nav-item">
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
            -->
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
              </li>
          
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
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Invoice</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Invoice</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="callout callout-info">
              
              <h5><i class="fas fa-info"></i> Note:</h5>
              This page has been enhanced for printing. Click the print button at the bottom of the invoice to test.
            </div>


            <!-- Main content -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12">
                  <h4>
                    <i class="fas fa-globe"></i> OLLS.COM
                    <small class="float-right">Date: {{date}} </small>
                  </h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row invoice-info">
                <div class="col-sm-4 invoice-col">
                  From
                  <address>
                    <strong>OllS.COM</strong><br>
                    Road:2/B<br>
                    South Khulshi, Chittagong<br>
                    Phone: +8801879978907<br>
                    Email: admin@olls.com
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  To
                  <address>
                   {% for d in user_details %}
                    <strong>{{ d.full_name }}</strong><br>
                    NID:{{ d.nid }}<br>
                    
                    Phone:{{ d.phone_num }} <br>
                    <!--div class="image"->
          <img src="{{Profile_data}}" class="img-circle elevation-2" alt="User Image">
        <!--/div-->
                  {% endfor %}
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  <b>Invoice :</b><br>
                  <br>
                  <b>Order ID:</b>
                  {{ app_id}}
                  <br>
                  
                  <b>Payment Due:</b> 300 TK <br>
                  
                  {% for d in user_details %}
                  <b>Account:</b> {{d.user_id}}
                  {% endfor %}
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <!--th>Id</th-->
                        <th>Project</th>
                        
                        <th>Description</th>
                        <th>Expected amount</th>
                        <th>Subtotal</th>
                      </tr>
                    </thead>
                    <tbody>
                    <tr>
                   
                      <!--td>{{ project_id}} </td-->
                      
                      <td>{{ d }}</td>
                     
                      <td>{{detail_addr}}</td>
                     <td> {{ monthly_charge }} </td>
                      <td>300 TK</td>
                     
                    </tr>
                    
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <!-- accepted payments column -->
                <div class="col-6">
                  <p class="lead">Payment Methods:</p>
                  <img src="{% static 'dist/img/credit/bkash.png' %} " alt="Bkash">
                  <img src="{% static 'dist/img/credit/rocket.png' %}" alt="Rocket">
                  <img src="{% static 'dist/img/credit/bank.png' %}" alt="Bank Transfer">
                  <!--img src="../../dist/img/credit/paypal2.png" alt="Paypal"-->

                  <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;">
                    Bkash & Rocket No: 01879978907</br>
                    
                    For bank transfer: </br>
                    A/C No:BA025464654,EBL bank</br>
                    Please add order ID from invoice as reference.
                  </p>
                </div>
                <!-- /.col -->
                <div class="col-6">
                  <p class="lead">Amount Due: {{date}}</p>

                  <div class="table-responsive">
                    <table class="table">
                      <tr>
                        <th style="width:50%">Subtotal:</th>
                        <td>300 TK</td>
                      </tr>
      
                      <tr>
                        <th>Total:</th>
                        <td>300 TK </td>
                      </tr>
                    </table>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                 <!--Invoice_print-->  
                 <!--a href="Invoice_print" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Print</a-->
                 <!--a href="Invoice_print"  target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Print  </a-->   
                  
                        <form href="list_data" action="list_data" method="post"class="btn btn-default">
                          {% csrf_token %}
                            <input type="hidden" name="request_id" value="{{app_id}}">
                            <input type="hidden" name="monthly_charge" value="{{monthly_charge}}">
                            <input type="hidden" name="detail_addr" value="{{detail_addr}}">
                           

                            <button type="submit"  class="btn btn-primary">                                                    
                              
                            Print</button>
                            <script type="text/javascript"> 

                                window.addEventListener("load", window.print());

                            </script>
                        </form>
                   
                        
                        <form href="list_data" action="list_data" method="post"class="btn btn-default">
                          {% csrf_token %}
                            <input type="hidden" name="request_id" value="{{app_id}}">
                <a type="button" class="btn btn-success float-right" href="payment"><i class="far fa-credit-card"></i> Submit
                    Payment
                </a>
                  <!--button type="button" href="Invoice_print" class="btn btn-primary float-right" style="margin-right: 5px;">
                    <i class="fas fa-download"></i> Generate PDF
                  </button-->
                </div>
              </div>
            </div>
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer no-print">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="http://OLLS.com">OLLS.com</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{% static 'plugins/jquery/jquery.min.js' %}"></script>
<!-- Bootstrap 4 -->
<script src="{% static 'plugins/bootstrap/js/bootstrap.bundle.min.js' %}"></script>
<!-- AdminLTE App -->
<script src="{% static 'dist/js/adminlte.min.js' %}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{% static 'dist/js/demo.js' %}"></script>
<!--script type="text/javascript"> 

  window.addEventListener("load", window.print());

</script-->
</body>
</html>
