{% load static %}
<!DOCTYPE php>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>OLLS - Start Your Project Today</title>
        <link rel="icon" type="image/x-icon" href="{% static 'assets/img/favicon.ico' %}" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="{% static 'css/styles.css' %}" rel="stylesheet" type="text/css" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
               <!-- <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="{% static 'assets/img/navbar-logo.svg' %}" alt="" /></a> -->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ml-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#team">Team</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li>
                        {% if user.is_authenticated %}
                        <li ><h4 style="background-color:powderblue;border-radius: 20px;"> Hi, {{ user.first_name}}</h4> </li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Dashboard">Dashboard</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Logout">Logout</a></li>
                        {% else %}
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Login">Login / Register</a></li>
                        <!--li class="nav-item"><a class="nav-link js-scroll-trigger" href="Register">Register</a></li-->
                        {% endif %}
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading" style="background-color:black ;border-radius: 20px;">Welcome To Our Online Land Leasing System!</div>
                <div class="masthead-heading text-uppercase"style="background-color:black ;border-radius: 20px;color:white;">OLLS</div>
                <div class="masthead-subheading"style="background-color:black ;border-radius: 20px;">Explore what  inside</div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>
            </div>
        </header>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Services</h2>
                    <!--<h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3> -->
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-credit-card  fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">Earnings</h4>
                        <p class="text-muted">Earn from unused lands by reaching to proper clients.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">Perfection</h4>
                        <p class="text-muted">Get perfect suggestion for lands landowners or, Clients based on your choice. </p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">Security</h4>
                        <p class="text-muted">Get proper security for your project.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Portfolio</h2>
                    <h3 class="section-subheading text-muted">Check all types of projects.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="{% static 'assets/img/portfolio/01-thumbnail.jpg' %}" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Rice Farming</div>
                                <div class="portfolio-caption-subheading text-muted">Project</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="{% static 'assets/img/portfolio/02-thumbnail.jpg' %}" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Fisheries</div>
                                <div class="portfolio-caption-subheading text-muted">Project</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="{% static 'assets/img/portfolio/03-thumbnail.jpg' %}" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Poultry Farming</div>
                                <div class="portfolio-caption-subheading text-muted">Project</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="{% static 'assets/img/portfolio/04-thumbnail.jpg' %}" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Goat Farming</div>
                                <div class="portfolio-caption-subheading text-muted">Project</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="{% static 'assets/img/portfolio/05-thumbnail.jpg' %}" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Cow Farming</div>
                                <div class="portfolio-caption-subheading text-muted">Project</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="{% static 'assets/img/portfolio/06-thumbnail.jpg' %}" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Vegetables</div>
                                <div class="portfolio-caption-subheading text-muted">Project</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">About</h2>
                    <h3 class="section-subheading text-muted">Check step by step.</h3>
                </div>
                <ul class="timeline">
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="{% static 'assets/img/about/1.jpg' %}" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>June 2020</h4>
                                <h4 class="subheading">Our Humble Beginnings</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">The dominant food crop of Bangladesh is rice, accounting for about 75 percent of agricultural land use (and 28 percent of GDP). Rice production increased every year.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="{% static 'assets/img/about/2.jpg' %}" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>July 2020</h4>
                                <h4 class="subheading">An Agency is Born</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">Generally a fishery is an entity engaged in raising or harvesting fish which is determined by some authority to be a fishery. </p></div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="{% static 'assets/img/about/3.jpg' %}" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>August 2020</h4>
                                <h4 class="subheading">Transition to poultry Service</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">The first step for starting poultry farming in Bangladesh is the selection of a suitable location.Buying land is the most expensive part of commercial poultry farming business. It would be better if you hire a varified land.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="{% static 'assets/img/about/4.jpg' %}" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>September 2020</h4>
                                <h4 class="subheading">Poultry farming Phase Two Expansion</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">There are numerous dairy cow breeds available throughout the world. You can choose any depending on your area, local facilities and your production purpose. </p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>
                                Be Part
                                <br />
                                Of Our
                                <br />
                                Story!
                            </h4>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <!-- Team-->
        <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Our Amazing Team</h2>
                    <h3 class="section-subheading text-muted">Helping hands in this project.</h3>
                </div>
                <div class="row">
                   
                    <div class="col-lg-4">
                        <div class="team-member">
                            <!-- <img class="mx-auto rounded-circle" src="{% static 'assets/img/team/1.jpg' %}" alt="" />
                            <h4>Kay Garland</h4>
                            <p class="text-muted">Lead Marketer</p>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                            -->
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="{% static 'assets/img/team/2.jpg' %}" alt="" />
                            <h4>Md.Forhad Hossain</h4>
                            <p class="text-muted">Lead Designer & Developer</p>
                         <!--   <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a> -->
                            <a class="btn btn-dark btn-social mx-2" href="https://www.facebook.com/crashed.over/"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://www.linkedin.com/in/Md-Forhad-hossain"><i class="fab fa-linkedin-in"></i></a>
                            <p class="text-muted">Supervised by</p>
                            <h4>Ms.Miftahul Jannat Mokarrama </h4>
                            
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                             <!--
                            <img class="mx-auto rounded-circle" src="{% static 'assets/img/team/3.jpg' %}" alt="" />
                            <h4>Diana Petersen</h4>
                            <p class="text-muted">Marketer</p>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                            -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">We're trying to provide best service to everyone.</p></div>
                </div>
            </div>
        </section>
        <!-- Clients-->
        <!--
        <div class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="{% static 'assets/img/logos/envato.jpg' %}" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="{% static 'assets/img/logos/designmodo.jpg' %}" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="{% static 'assets/img/logos/themeforest.jpg' %}" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="{% static 'assets/img/logos/creative-market.jpg' %}" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        -->
        
        <!-- Contact-->
        
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Contact Us</h2>
                    <h3 class="section-heading text-uppercase">Phone: 01879978907.</h3>
                </div>
                <!--
                <form id="contactForm" name="sentMessage" novalidate="novalidate">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control" id="name" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="email" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group mb-md-0">
                                <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number." />
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0">
                                <textarea class="form-control" id="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div id="success"></div>
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Send Message</button>
                    </div>
                </form>
                -->
            </div>
        </section>
        
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright © PCIU Final Project,2020</div>
                   <!-- <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    -->
                    <div class="col-lg-4 text-lg-right">
                        <a class="mr-3" href="#!">Privacy Policy</a>
                        <a href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Portfolio Modals-->
        <!-- Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="{% static 'assets/img/close-icon.svg' %}" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Rice Farming</h2>
                                    <p class="item-intro text-muted">Land project for Rice Farming.</p>
                                    <img class="img-fluid d-block mx-auto" src="{% static 'assets/img/portfolio/01-full.jpg' %}" alt="" />
                                    <p>Get all available varified lands information for rice farming </p>
                                    <ul class="list-inline">
                                        <li>Create account or login for details.</li>
                                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Register">Sign Up</a></li>
                                        <li>Client: Rice Farmers </li>
                                        <li>Category: Land Farming </li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="{% static 'assets/img/close-icon.svg' %}" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Fisheries</h2>
                                    <p class="item-intro text-muted">A fishery improvement project. </p>
                                    <img class="img-fluid d-block mx-auto" src="{% static 'assets/img/portfolio/02-full.jpg' %}" alt="" />
                                    <p>Get all available varified lands information for Fisheries.</p>
                                    <ul class="list-inline">
                                    <li>Create account or login for details.</li>
                                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Register">Sign Up</a></li>
                                        <li>Client: Fishermen. </li>
                                        <li>Category: Fisheries. </li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 3-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="{% static 'assets/img/close-icon.svg' %}" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Poultry Farming</h2>
                                    <p class="item-intro text-muted">A Poultry Farming improvement project.</p>
                                    <img class="img-fluid d-block mx-auto" src="{% static 'assets/img/portfolio/03-full.jpg' %}" alt="" />
                                    <p>Get all available varified lands information for Poultry Farming.</p>
                                    <ul class="list-inline">
                                        <li>Create account or login for details.</li>
                                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Register">Sign Up</a></li>
                                        <li>Client: Poultry Farmers. </li>
                                        <li>Category: Poultry Farming. </li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 4-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="{% static 'assets/img/close-icon.svg' %}" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Goat Farming</h2>
                                    <p class="item-intro text-muted">Get all available varified lands information for Goat Farming.</p>
                                    <img class="img-fluid d-block mx-auto" src="{% static 'assets/img/portfolio/04-full.jpg' %}" alt="" />
                                    <p>Goat farming is the raising and breeding of domestic goats. It is a branch of animal husbandry. Goats are raised principally for their meat, milk, fibre and skin. Goat farming can be very suited to production with other livestock such as sheep and cattle on low-quality grazing land.</p>
                                    <ul class="list-inline">
                                    <li>Create account or login for details.</li>
                                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Register">Sign Up</a></li>
                                        <li>Client: Goat Farmers. </li>
                                        <li>Category: Goat Farming. </li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 5-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="{% static 'assets/img/close-icon.svg' %}" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Cow Farming</h2>
                                    <p class="item-intro text-muted">Get all available varified lands information for Cow Farming.</p>
                                    <img class="img-fluid d-block mx-auto" src="{% static 'assets/img/portfolio/05-full.jpg' %}" alt="" />
                                    <p>.Cow farming has been part of agriculture for thousands of years. Historically it has been one part of small, diverse farms. In the last century or so larger farms concentrating on dairy production emerged. Large scale dairy farming is only viable where either a large amount of milk is required for production of more durable dairy products such as cheese, butter, etc.</p>
                                    <ul class="list-inline">
                                    <li>Create account or login for details.</li>
                                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Register">Sign Up</a></li>
                                        <li>Client: Cow Farmers. </li>
                                        <li>Category: Cow Farming. </li>
                                    </ul>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 6-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="{% static 'assets/img/close-icon.svg' %}" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Vegetables</h2>
                                    <p class="item-intro text-muted">Get all available varified lands information for planting vegetables.</p>
                                    <img class="img-fluid d-block mx-auto" src="{% static 'assets/img/portfolio/06-full.jpg' %}" alt="" />
                                    <p>Vegetables are parts of plants that are consumed by humans or other animals as food.Vegetable farming is the growing of vegetables for human consumption. The practice probably started in several parts of the world over ten thousand years ago, with families growing vegetables for their own consumption or to trade locally.</p>
                                    <ul class="list-inline">
                                    <li>Create account or login for details.</li>
                                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Register">Sign Up</a></li>
                                        <li>Client: Vegetable Farmers. </li>
                                        <li>Category: Vegetable Farming. </li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
       <!-- 
        <script src="{% static 'assets/mail/jqBootstrapValidation.js' %}"></script>
        <script src="{% static 'assets/mail/contact_me.js' %}"></script> 
        -->
        <!-- Core theme JS-->
        <script src="{% static 'js/scripts.js' %}"></script>
    </body>
</html>
