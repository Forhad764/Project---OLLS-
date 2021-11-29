<!DOCTYPE html>
{% load static %}
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>OLLS | Land Data Form </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="{% static 'plugins/fontawesome-free/css/all.min.css' %}">
  <link rel="stylesheet" href="{% static 'css/select2.min.css' %}">
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
        <a href="Dashboard" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

   
<!----------------------------------
    <!-- Right navbar links ->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start ->
            <div class="media">
              <img src="../../dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
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
              <img src="{% static 'agency/dist/img/user8-128x128.jpg' %}" alt="User Avatar" class="img-size-50 img-circle mr-3">
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
              <img src="{% static 'agency/dist/img/user3-128x128.jpg' %}" alt="User Avatar" class="img-size-50 img-circle mr-3">
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

    </ul>

    ---------------------------------------------->
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <!-- Main Sidebar Container ---------------------------------------------->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="home" class="brand-link">
    <img src="{% static 'dist/img/Site_Logo2.png' %}" alt="OLLS Logo" class="brand-image img-circle elevation-3"
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
          <a href="Profile" class="d-block">{{ user.first_name  }} {{user.last_name}}</a>
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
                <a href="Dashboard" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Landowner Dashboard </p>
                </a>
              </li>
             
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Clients
                <span class="right badge badge-danger"></span>
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="landowner_projects" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                
                <!--span class="right badge badge-danger">Pending</span-->
                Submitted projects
              </p>
            </a>
          </li>
          
          
          <li class="nav-item ">
            <a href="landownerForm" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Form

              </p>
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
<!-- /.sidebar ----------------------------------------------------------------->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Land Data Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Land Data Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Enter Data</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <!--form role="form"-->
              <form action="Land_Data_submit" role="form" method="POST" enctype="multipart/form-data" autocomplete="off">
                {% csrf_token %}
                <div class="card-body">
                <div class="col-sm-6">
                      <div class="form-group">
                        <label>NID</label>
                        <input type="text" id="user_nid" value="{{ user_nid }}" class="form-control" placeholder="{{ user_nid }}" disabled>
                        <input type="hidden" id="user_nid" value="{{ user_nid }}" class="form-control" placeholder="{{ user_nid }}" name="user_nid">
                      </div>
                    </div>
                    <!--------------------------category selection old ------------------------------------------------>
                    <!--
                    <div class="col-sm-6">
                      <!-- select ->
                      <div class="form-group">
                        <label>Select Category</label>
                        <select class="custom-select" id="category" name="category">
                          <option value="Rice Farming">Rice Farming</option>
                          <option value="Fisheries">Fisheries</option>
                          <option value="Poultry">Poultry</option>
                          <option value="Goat Farming">Goat Farming</option>
                          <option value="Cow Farming">Cow Farming</option>
                          <option value="Vegetables Farming">Vegetables Farming</option>
                        </select>
                      </div>
                    </div>

                    <!--------------------------category selection end old ------------------------------------------------>

                    <!--------------------------category selection new ------------------------------------------------>
                    <style>
        .mul-select{
            width: 100%;

        }
    </style>
    <div class="container-fluid h-100 bg-light text-dark">
        <div class="row justify-content-center align-items-center">
            <h1>Select Category</h1>    
        </div>
        <br>
        <div class="row justify-content-center align-items-center h-100">
            <div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
                <div class="form-group">
                    <select class="mul-select" multiple="true"  autocomplete="off"  id="category" name="category">
                          <option value="Rice-Farming">Rice Farming</option>
                          <option value="Fisheries">Fisheries</option>
                          <option value="Poultry">Poultry</option>
                          <option value="Goat-Farming">Goat Farming</option>
                          <option value="Cow-Farming">Cow Farming</option>
                          <option value="Vegetables-Farming">Vegetables Farming</option>
                    </select>
                </div> 
           </div>
        </div>
    </div>

    <!---------------------------------------------------------------------------->
    <!--------
    {% for value, text in form.providers.field.choices %}
  <div class="ui slider checkbox">
    <input id="id_providers_{{ forloop.counter0 }}" name="{{ form.providers.name }}" type="checkbox" value="{{ value }}"{% if value in checked_providers %} checked="checked"{% endif %}>
    <label>{{ text }}</label>
  </div>
{% endfor %}
---------->

<!---
<div class="custom-control custom-checkbox mb-3">
      <input type="checkbox" class="custom-control-input" id="customCheck" name="Rice Farming">
      <label class="custom-control-label" for="customCheck">Rice Farming</label>
      </br>
      <input type="checkbox" class="custom-control-input" id="customCheck" name="Poultry">
      <label class="custom-control-label" for="customCheck">Poultry</label>
    </div>
    <input type="checkbox" id="defaultCheck" name="example2">
    <label for="defaultCheck">Default checkbox</label>
    <br>


     
    
                    <!--------------------------category selection new end ------------------------------------------------>

                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Enter Title</label>
                        <input type="text" class="form-control" placeholder="Enter ..." id="Land_title" name="Land_title"autocomplete="off" required>
                      </div>
                    </div>

                    <div class="col-sm-6">
                      <!-- select -->
                      <div class="form-group">
                        <label>Select district</label>
                        <select class="custom-select" id="Location" name="Location"autocomplete="off" required>
                          <option>Dhaka</option>
                          <option>Chattagram</option>
                          <option>Rajshahi</option>
                          <option>Khulna</option>
                          <option>Barisal</option>
                          <option>Sylhet</option>
                          <option>Rangpur</option>
                          <option>Mymensingh</option>
                        </select>
                      </div>
                    </div>
                    <!---------------------------Details_addr--------------------------->
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Enter location details </label>
                        <input type="text" class="form-control" placeholder="Enter land address in details" id="detail_addr" name="detail_addr" autocomplete="off" required>
                      </div>
                    </div>

                    <!-----------------------------------------------------Soil Type------------>
                    <div class="col-sm-6">
                      <!-- select -->
                      <div class="form-group">
                        <label>Select Soil Type</label>
                        <select class="custom-select" id="Soil_type" name="Soil_type" autocomplete="off" required>
                        <option>Floodplain_soil</option>
                        <option>Sandy_soil</option>
                        <option>Loam_Soil</option>
                        <option>Clayey_Soil</option>
                        
                        </select>
                      </div>
                    </div>
                    <!-------------------Soid Type end------------------------------------------->

                    <div class="form-group">
                    <label for="exampleInputFile"> Select Land Image </label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file"  accept="image/*" class="custom-file-input" id="Land_img" name="Land_img"autocomplete="off" required>
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputFile"> Select Khotian Image </label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" accept="image/*" class="custom-file-input" id="Khotian_img" name="Khotian_img"autocomplete="off" required>
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputFile"> Select Dolil Image </label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" accept="image/*" class="custom-file-input" id="Dolil_img" name="Dolil_img"autocomplete="off" required>
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      
                    </div>
                  </div>

                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Enter Area</label>
                        <input type="text" class="form-control" placeholder="Enter Area in Square feet" id="Land_Area" name="Land_Area"autocomplete="off" required>
                      </div>
                    </div>

                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Enter Expected Amount</label>
                        <input type="text" class="form-control" placeholder="Enter monthly amount in TK" id="monthly_charge" name="monthly_charge" autocomplete="off" required>
                      </div>
                    </div>

                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Enter Time Duration</label>
                        <input type="text" class="form-control" placeholder="Year" id="Year" name="year" autocomplete="off" >
                        <input type="text" class="form-control" placeholder="Month" id="Month" name="month" autocomplete="off" required>
                      </div>
                    </div>

                   
                    </div>

              <!--    <div class="form-group">
                    <label for="exampleInputFile">File input</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="exampleInputFile">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text" id="">Upload</span>
                      </div>
                    </div>
                  </div>
-->
<div class="checkbox">
  <label> Enter latitude </label>
  <input type="text"   name="map_latitude " id="map_latitude" required>
  <label>Enter longitude </label>
  <input type="text"   name="map_longitude" id="map_longitude" required> 
  </div>
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="Check" required>
                    <label class="form-check-label" for="exampleCheck1">Agreed with all terms & conditions.</label>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
             <h1> {{data_inserted}} </h1>
            </div>
            <!-- /.card -->

           

          </div>
          <!--/.col (left) -->
          <!-- right column ---------------------------------------------------->
         
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2019-2020 <a href="home">OLLS.com</a>.</strong> All rights
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
<script src="{% static 'jquery/jquery.min.js' %}"></script>
<!-- Bootstrap 4 -->
<script src="{% static 'bootstrap/js/bootstrap.bundle.min.js' %}"></script>
<script src="{% static 'bootstrap/js/bootstrap.min.js' %}"></script>
<script src="{% static 'bootstrap/js/select2.min.js' %}"></script>
<!-- bs-custom-file-input -->
<script src="{% static 'bs-custom-file-input/bs-custom-file-input.min.js' %}"></script>
<!-- javascript App -->
<script src="{% static 'dist/js/adminlte.min.js' %}"></script>
<!-- javascript -->
<script src="{% static 'dist/js/demo.js' %}"></script>
<script type="text/javascript">
$(document).ready(function () {
  bsCustomFileInput.init();
});

          $(document).ready(function(){
              $(".mul-select").select2({
                      id : "category[]",
                      name: "category[]",
                      placeholder: "select ",
                       //placeholder
                      tags: true,
                      tokenSeparators: ['/',',',';'," "] ,
                      

                  });
              });
      
</script>
<h5></h5>
</body>
</html>
