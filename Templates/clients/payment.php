<!DOCTYPE html>
{% load static %}
<html>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
<title> OLLS | Payment </title>
</head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<body>

<div class="container">
<br>  <p class="text-center">Payment Gateway of <a href="Dashboard"> OLLS.com</a></p>
<hr>

<div class="row">
	<aside class="col-sm-4">
<p>Mobile Banking</p>

<article class="card">
<div class="card-body p-5">
<p> 
	<img src="{% static 'dist/img/credit/bkash.png' %} " alt="Bkash">
  <img src="{% static 'dist/img/credit/rocket.png' %}" alt="Rocket">
  
</p>
<!--p class="alert alert-success">Some text success or error</p-->

<form role="form">
<div class="form-group">
<label for="username">Send money with bkash / Rocket account</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i  class="fas fa-mobile-alt"></i></span>
	</div>
	<input type="text" class="form-control" name="username" placeholder="" required>
</div> <!-- input-group.// -->
</div> <!-- form-group.// -->

<div class="form-group">
<label for="phoneNumber">Phone number</label>

</div> <!-- form-group.// -->

<div class="row">
    
    <div class="col-sm-4">
        <div class="form-group">
            <label data-toggle="tooltip" title="" data-original-title="5 digits code on back side of the card">5-digit pin <i class="fa fa-question-circle"></i></label>
            <input class="form-control" required="" type="text" required>
        </div> <!-- form-group.// -->
    </div>
</div> <!-- row.// -->
<button class="subscribe btn btn-primary btn-block" type="button" onclick="myFunction()" > Confirm  </button>
</form>
</div> <!-- card-body.// -->
</article> <!-- card.// -->


	</aside> 
	
	<!-- col.// -->


<aside class="col-sm-4">
<p>Wire Transfer</p>

<article class="card">
<div class="card-body p-5">

<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
	<li class="nav-item">
		<a class="nav-link active" data-toggle="pill" href="#nav-tab-card">
		<i class="fa fa-credit-card"></i> Credit Card</a></li>
	<!--li class="nav-item">
		<a class="nav-link" data-toggle="pill" onclick="$function" href="#nav-tab-paypal">
		<i class="fab fa-paypal"></i>  Paypal</a></li>
	<li class="nav-item">
		<a class="nav-link" data-toggle="pill" href="#nav-tab-bank">
		<i class="fa fa-university"></i>  Bank Transfer</a></li-->
</ul>

<div class="tab-content">
<div class="tab-pane fade show active" id="nav-tab-card">
	<p class="alert alert-success">Some text success or error</p>
	<form role="form">
	<div class="form-group">
		<label for="username">Full name (on the card)</label>
		<input type="text" class="form-control" name="username" placeholder="" required="">
	</div> <!-- form-group.// -->

	<div class="form-group">
		<label for="cardNumber">Card number</label>
		<div class="input-group">
			<input type="text" class="form-control" name="cardNumber" placeholder="">
			<div class="input-group-append">
				<span class="input-group-text text-muted">
					<i class="fab fa-cc-visa"></i>   <i class="fab fa-cc-amex"></i>   
					<i class="fab fa-cc-mastercard"></i> 
				</span>
			</div>
		</div>
	</div> <!-- form-group.// -->

	<div class="row">
	    <div class="col-sm-8">
	        <div class="form-group">
	            <label><span class="hidden-xs">Expiration</span> </label>
	        	<div class="input-group">
	        		<input type="number" class="form-control" placeholder="MM" name="">
		            <input type="number" class="form-control" placeholder="YY" name="">
	        	</div>
	        </div>
	    </div>
	    <div class="col-sm-4">
	        <div class="form-group">
	            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
	            <input type="number" class="form-control" required="">
	        </div> <!-- form-group.// -->
	    </div>
	</div> <!-- row.// -->
	<button class="subscribe btn btn-primary btn-block" type="button" onclick="myFunction()"> Confirm  </button>
	</form>
</div> <!-- card-body.// -->
</article> <!-- card.// -->


	</aside> <!-- col.// -->

<!------------------------------------------------------------>
<aside class="col-sm-4">
	<p>Bank Transfer</p>

		<article class="card">
		<div class="card-body p-5">

			<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">

				<li class="nav-item">
					<a class="nav-link" data-toggle="pill" href="#nav-tab-bank">
						<i class="fa fa-university"></i>  Bank Transfer</a></li>
						<img src="{% static 'dist/img/credit/bank.png' %}" alt="Bank Transfer">
			</ul>
		


	<div class="tab-pane fade show active" id="nav-tab-card">
	<p>Bank accaunt details</p>
	<dl class="param">
  	<dt>BANK: </dt>
  	<dd> EBL BANK</dd>
	</dl>
	<dl class="param">
 	 <dt>Accaunt number: </dt>
 	 <dd> 12345678912345</dd>
	</dl>
	<dl class="param">
  	<dt>IBAN: </dt>
  	<dd> 123456789</dd>
	</dl>
	<p><strong>Note:</strong> Give project ID as reference </p>
</div> <!-- tab-pane.// -->
</div> <!-- tab-content .// -->

</div> <!-- card-body.// -->
</article> <!-- card.// -->


	</aside> <!-- col.// -->
<!------------------------------------------------------------>
</div> <!-- row.// -->

</div> 
<!--container end.//-->

<br><br>
<article class="bg-secondary mb-3">  
<div class="card-body text-center">

    <h3 class="text-white mt-3">OLLS</h3>
<p class="h5 text-white">A platform  <br> for your project </p>   <br>
<p><a class="btn btn-warning" target="_blank" href="home"> OLLS.com  
 <i class="fa fa-window-restore "></i></a></p>
</div>
<br><br>
</article>

<script>
function myFunction() {
	alert("Payment Completed");

}
</script>
</body>


</html>