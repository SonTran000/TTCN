<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Write Your Blog</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/rangeslider.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 bg-white" role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="home.jsp" class="text-black mb-0">To Do<span class="text-primary"> SOMETHING</span>  </a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="home.jsp">Home</a></li>
                <li class="active"><a href="writeblog.jsp">Blog</a></li>
                <li><a href="contact.jsp">Contact</a></li>

                <li class="ml-xl-3 login"><a href="login.jsp"><span class="border-left pl-xl-4"></span>Log In</a></li>
                <li><a href="register.jsp">Register</a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
	  
    </header>

	<div class="site-blocks-cover overlay" style="background-image: url(images/wall.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-12">
            
            
            <div class="row justify-content-center mb-4">
              <div class="col-md-8 text-center">
                <h1 class="" data-aos="fade-up">Write Blog</h1>
                <p data-aos="fade-up" data-aos-delay="100">Each of new ideas can make a miracle.</p>
			  </div>
            </div>

            <div class="form-search-wrap" data-aos="fade-up" data-aos-delay="200">
              <form method="post">
                <div class="row align-items-center">
                  <div class="col-lg-12 mb-4 mb-xl-0 col-xl-4">
					<div class="wrap-icon">
						<span class="icon icon-search2"></span>
						<input type="text" class="form-control rounded" placeholder="What are you looking for?">
					</div>
                  </div>
                 <!-- <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                    <div class="wrap-icon">
                      <span class="icon icon-room"></span>
                      <input type="text" class="form-control rounded" placeholder="Location">
                    </div>
                    
                  </div>-->
                  <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                    <div class="select-wrap">
                      <span class="icon"><span class="icon-keyboard_arrow_down"></span></span>
                      <select class="form-control rounded" name="" id="">
                        <option value="">All Categories</option>
                        <option value="">Education</option>
                        <option value="">Books &amp;  Magazines</option>
                        <option value="">Cook</option>
                        <option value="">Travels</option>
                        <option value="">Lifestyles</option>
                        <option value="">Others</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-12 col-xl-2 ml-auto text-right">
                    <input type="submit" class="btn btn-primary btn-block rounded" value="Search">
                  </div>
                  
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>
    </div>  
    
    <!--<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>About Us</h1>
                <p class="mb-0">Choose product you want</p>
              </div>
            </div>

            
          </div>
        </div>
      </div>
    </div> --> 

    <!--<div class="site-section">
      <div class="container">
        <!--<div class="row">

          <!--<div class="col-md-8">

            <!--<div class="row mb-3 align-items-stretch">

              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <img src="images/img_1.jpg" alt="Image" class="img-fluid rounded">
                  <h2 class="font-size-regular"><a href="#" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div> 
              </div>
              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <img src="images/img_2.jpg" alt="Image" class="img-fluid rounded">
                  <h2 class="font-size-regular"><a href="#" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div> 
              </div>
              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <img src="images/img_3.jpg" alt="Image" class="img-fluid rounded">
                  <h2 class="font-size-regular"><a href="#" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div>
              </div>


              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <img src="images/img_4.jpg" alt="Image" class="img-fluid rounded">
                  <h2 class="font-size-regular"><a href="#" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div> 
              </div>
              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <img src="images/img_2.jpg" alt="Image" class="img-fluid rounded">
                  <h2 class="font-size-regular"><a href="#" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div> 
              </div>
              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <img src="images/img_3.jpg" alt="Image" class="img-fluid rounded">
                  <h2 class="font-size-regular"><a href="#" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div>
              </div>

              
            </div>-->


            <!--<div class="col-12 text-center mt-5">
              <p class="custom-pagination">
                <span>1</span>
                <a href="#">2</a>
                <a href="#">3</a>
                <span>...</span>
                <a href="#">20</a>
              </p>
            </div>
          </div>-->

          <!--<div class="col-md-3 ml-auto">
            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Search</h3>
              <form action="#" method="post">
                <div class="form-group d-flex">
                  <input type="text" class="form-control" placeholder="Search keyword and hit enter...">
                </div>
              </form>
            </div>

            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Popular Posts</h3>
              <ul class="list-unstyled">
                <li class="mb-2"><a href="#">Lorem ipsum dolor sit amet</a></li>
                <li class="mb-2"><a href="#">Quaerat rerum voluptatibus veritatis</a></li>
                <li class="mb-2"><a href="#">Maiores sapiente veritatis reprehenderit</a></li>
                <li class="mb-2"><a href="#">Natus eligendi nobis</a></li>
              </ul>
            </div>

            <!--<div class="mb-5">
              <h3 class="h5 text-black mb-3">Recent Comments</h3>
              <ul class="list-unstyled">
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Lorem ipsum dolor sit amet</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Quaerat rerum voluptatibus veritatis</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Maiores sapiente veritatis reprehenderit</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Natus eligendi nobis</a></li>
              </ul>
            </div>-->
			
          </div>
          
        </div>
      </div>
    </div>
	
	<div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-7 mb-5"  data-aos="fade">

            

            <form action="#" class="p-5 bg-white">
             

              <!--<div class="row form-group">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label class="text-black" for="fname">First Name</label>
                  <input type="text" id="fname" class="form-control">
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="lname">Last Name</label>
                  <input type="text" id="lname" class="form-control">
                </div>
              </div>-->

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Title</label> 
                  <input type="email" id="email" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                
               <div class="col-md-12">
                  <label class="text-black" for="subject">Category</label>
				  <div class="select-wrap">
                      <span class="icon"><span class="icon-keyboard_arrow_down"></span></span>
                      <select class="form-control rounded" name="" id="">
                        <option value="">All Categories</option>
                        <option value="">Education</option>
                        <option value="">Books &amp;  Magazines</option>
                        <option value="">Cook</option>
                        <option value="">Travels</option>
                        <option value="">Lifestyles</option>
                        <option value="">Others</option>
                      </select>
                    </div>
                  <!--<input type="subject" id="subject" class="form-control">-->
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="message">Content</label> 
                  <textarea name="message" id="message" cols="50" rows="20" class="form-control" placeholder="Write your idea in here..."></textarea>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Send Message" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>

  
            </form>
          </div>
          <div class="col-md-5"  data-aos="fade" data-aos-delay="100">
            
            <div class="p-4 mb-3 bg-white">
              <p class="mb-0 font-weight-bold">Address</p>
              <p class="mb-4">92 St. Nguyen Luong Bang, Lien Chieu Dist, Da Nang City, Vietnam</p>

              <p class="mb-0 font-weight-bold">Phone</p>
              <p class="mb-4"><a href="#">+84 123 456 789</a></p>

              <p class="mb-0 font-weight-bold">Email Address</p>
              <p class="mb-0"><a href="#">Team3nguoi@gmail.com</a></p>

            </div>
            
            <!--<div class="p-4 mb-3 bg-white">
              <h3 class="h5 text-black mb-3">More Info</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa ad iure porro mollitia architecto hic consequuntur. Distinctio nisi perferendis dolore, ipsa consectetur? Fugiat quaerat eos qui, libero neque sed nulla.</p>
              <p><a href="#" class="btn btn-primary px-4 py-2 text-white">Learn More</a></p>
            </div>-->

          </div>
        </div>
      </div>
    </div>

    <div class="newsletter bg-primary py-5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <h2>Newsletter</h2>
            <p>Tell to us, what do you need.</p>
          </div>
          <div class="col-md-6">
            
            <form class="d-flex">
              <input type="text" class="form-control" placeholder="Email">
              <input type="submit" value="Subscribe" class="btn btn-white"> 
            </form>
          </div>
        </div>
      </div>
    </div>
    
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-6">
                <h2 class="footer-heading mb-4">About</h2>
                <p>What we know is a drop, what we don’t know is an ocean!</p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Navigations</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <form action="#" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Search products..." aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>