{% load static %}
<!DOCTYPE php>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>OLLS | Registration Page</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href=" {% static 'plugins/fontawesome-free/css/all.min.css' %} " Type="text/css"/>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" type="text/css"/>
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{% static 'plugins/icheck-bootstrap/icheck-bootstrap.min.css' %}" type="text/css"/>
  <!-- Theme style -->
  <link rel="stylesheet" href="{% static 'dist/css/adminlte.min.css' %}" type="text/css"/>
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet" type="text/css" />
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="http://localhost:8000"><b>OLLS</b> </a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new membership</p>

      <form action="Register" method="POST" enctype="multipart/form-data">
      {% csrf_token %}
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="First name" name="First_name" >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Last name" name="Last_name" >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="User name" name="User_name" >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="Email" name="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <!-----NID ---->
        <div class="input-group mb-3">
          <input type="number" name="NID" min="11111111" class="form-control" placeholder="NID (For smartcard use '0' in start)" Required autocomplete="off" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" maxlength = "13">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="bi bi-file-earmark-binary"></span>
            </div>
          </div>
        </div>
        <!-----phone number ---->
        <div class="input-group mb-3">
          <input type="number" min="0" name="phone_num" class="form-control" placeholder="Phone Number" Required autocomplete="off" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" maxlength = "11">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="bi bi-file-earmark-binary"></span>
            </div>
          </div>
        </div>


        <!-----image ---->
        <div class="input-group mb-3">
        <label for="img" Required>Select your image:</label>
        <input type="file" id="img" name="img" accept="image/*">
        
        </div>
        <!-----image end ---->
        <div class="input-group mb-3">
        <label for="Category">Choose category Type:</label>
         <select name="Category" id="category" >
        <!--<optgroup label="Category"> -->
        <option value="2">Land-Owners</option>
        <option value="3">client</option>
        <!--
        <option value="land_verifier">land_verifier</option>
        <option value="Doc-verifier">Doc-verifier</option>
        -->
        <!-- </optgroup> -->
         
         </select>
        </div>

        <div class="input-group mb-3">
          <input name="Password" type="password" class="form-control" placeholder="Password" autocomplete="off">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="Retype_password" type="password" class="form-control" placeholder="Retype password" autocomplete="off">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Register</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
      
      <!--Messages----------------------------> 
      <div>
      {% for message in messages %}
      <h3> {{message}} </h3>
      {% endfor %}
      </div>
<!--
      <div class="social-auth-links text-center">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          Sign up using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i>
          Sign up using Google+
        </a>

      </div>
      -->

      <a href="Login" class="text-center">I already have a membership</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="{% static 'plugins/jquery/jquery.min.js' %}"></script>
<!-- Bootstrap 4 -->
<script src="{% static 'plugins/bootstrap/js/bootstrap.bundle.min.js' %}"></script>
<!-- AdminLTE App -->
<script src="{% static 'dist/js/adminlte.min.js' %}"></script>
</body>
</html>
