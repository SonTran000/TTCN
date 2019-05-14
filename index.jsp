<%@page import="model.User"%>
<%@page import="model.Post"%>
<%@page import="dao.PostDAO"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>How To Do Something</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800"
	rel="stylesheet">
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
	<%
		CategoryDAO cd = new CategoryDAO();
		PostDAO pd = new PostDAO();
		User u = new User();
		if (session.getAttribute("Users") != null) {
			u = (User) session.getAttribute("Users");
		}
	%>

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
					<h1 class="mb-0 site-logo">
						<a href="home.jsp" class="text-black mb-0">To Do<span
							class="text-primary"> Something</span>
						</a>
					</h1>
				</div>
				<div class="col-12 col-md-10 d-none d-xl-block">
					<nav class="site-navigation position-relative text-right"
						role="navigation">

						<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">

							<li class="active"><a href="home.jsp">Home</a></li>

							<li><a href="writeblog.jsp">Blog</a></li>
							<li><a href="contact.jsp">Contact</a></li>
							<%if (u != null){ %>	
							<li class="ml-xl-3 login"><a href="account.jsp"><span
									class="border-left pl-xl-4"></span><%=u.getusername()%></a></li>
									<%}%>
							<li><a href="home.jsp">Logout</a></li>

							<!--<li><a href="#" class="cta"><span class="bg-primary text-white rounded">+ Post an Ad</span></a></li>-->
						</ul>
					</nav>
				</div>


				<div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right"
					style="position: relative; top: 3px;">
					<a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
						class="icon-menu h3"></span></a>
				</div>

			</div>
			<!-- </div> -->

		</header>



		<div class="site-blocks-cover overlay"
			style="background-image: url(images/hero_2.jpg);" data-aos="fade"
			data-stellar-background-ratio="0.5">
			<div class="container">
				<div
					class="row align-items-center justify-content-center text-center">

					<div class="col-md-12">


						<div class="row justify-content-center mb-4">
							<div class="col-md-8 text-center">
								<h1 class="" data-aos="fade-up">The Large World In Your
									Hand</h1>
								<p data-aos="fade-up" data-aos-delay="100">You can find and
									do anything you want.</p>
								<p data-aos="fade-up" data-aos-delay="100">We Are Here To
									Help You.</p>
							</div>
						</div>

						<div class="form-search-wrap" data-aos="fade-up"
							data-aos-delay="200">
							<form method="post">
								<div class="row align-items-center">
									<div class="col-lg-12 mb-4 mb-xl-0 col-xl-4">
										<div class="wrap-icon">
											<span class="icon icon-search2"></span> <input type="text"
												class="form-control rounded"
												placeholder="What are you looking for?">
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
											<span class="icon"><span
												class="icon-keyboard_arrow_down"></span></span> <select
												class="form-control rounded" name="" id="">
												<option value="">All Categories</option>
												<%
													for (Category c : cd.getListCategory()) {
												%>
												<option value=""><%=c.getnamecate()%></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
									<div class="col-lg-12 col-xl-2 ml-auto text-right">
										<input type="submit" class="btn btn-primary btn-block rounded"
											value="Search">
									</div>

								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>

		<div class="site-section bg-light">
			<div class="container">

				<div class="overlap-category mb-5">
					<div class="row align-items-stretch no-gutters">
						<%
							for (Category c : cd.getListCategory()) {
						%>
						<div class="col-sm-6 col-md-4 mb-4 mb-lg-0 col-lg-2">
							<a href="post.jsp?category=<%=c.getidcate()%>"
								class="popular-category h-100"> <span class="icon"><span
									class="flaticon-innovation"></span></span> <span
								class="caption mb-2 d-block"><%=c.getnamecate()%></span>
							</a>
						</div>
						<%
							}
						%>
					</div>
				</div>

				<div class="row">
					<div class="col-12">
						<h2 class="h5 mb-4 text-black">New Posts</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-12  block-13">
						<div class="owl-carousel nonloop-block-13">
							<%
								for (Post p : pd.getListPostDate()) {
							%>
							<div class="d-block d-md-flex listing vertical">
								<a href="listings-single.html" class="img d-block"
									style="background-image: url('images/img_1.jpg')"></a>
								<div class="lh-content">
									<span class="category"><%=p.gettitle()%></span> <a href="#"
										class="bookmark"><span class="icon-heart"></span></a>
									<h3>
										<a href="detailpost.jsp?post=<%=p.getidpost()%>"><%=p.gettitle()%></a>
									</h3>
									<address><%=p.getdateup()%></address>
									<p class="mb-0">
										<span class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-secondary"></span> <span class="review">(3
											Reviews)</span>
									</p>
								</div>
							</div>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section" data-aos="fade">
			<div class="container">
				<div class="row justify-content-center mb-5">
					<div class="col-md-7 text-center border-primary">
						<h2 class="font-weight-light text-primary">Popular Posts</h2>
						<p class="color-black-opacity-5">Interesting!!!</p>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 mb-4 mb-lg-4 col-lg-4">

						<div class="listing-item">
							<div class="listing-image">
								<img src="images/img_1.jpg" alt="Image" class="img-fluid">
							</div>
							<div class="listing-item-content">
								<a href="#" class="bookmark" data-toggle="tooltip"
									data-placement="left" title="Bookmark"><span
									class="icon-heart"></span></a> <a class="px-3 mb-3 category"
									href="#">Car &amp; Vehicles</a>
								<h2 class="mb-1">
									<a href="#">Red Luxury Car</a>
								</h2>
								<span class="address">West Orange, New York</span>
							</div>
						</div>

					</div>
					<div class="col-md-6 mb-4 mb-lg-4 col-lg-4">

						<div class="listing-item">
							<div class="listing-image">
								<img src="images/img_2.jpg" alt="Image" class="img-fluid">
							</div>
							<div class="listing-item-content">
								<a href="#" class="bookmark"><span class="icon-heart"></span></a>
								<a class="px-3 mb-3 category" href="#">Real Estate</a>
								<h2 class="mb-1">
									<a href="#">House with Swimming Pool</a>
								</h2>
								<span class="address">West Orange, New York</span>
							</div>
						</div>

					</div>
					<div class="col-md-6 mb-4 mb-lg-4 col-lg-4">

						<div class="listing-item">
							<div class="listing-image">
								<img src="images/img_3.jpg" alt="Image" class="img-fluid">
							</div>
							<div class="listing-item-content">
								<a href="#" class="bookmark"><span class="icon-heart"></span></a>
								<a class="px-3 mb-3 category" href="#">Furniture</a>
								<h2 class="mb-1">
									<a href="#">Wooden Chair &amp; Table</a>
								</h2>
								<span class="address">West Orange, New York</span>
							</div>
						</div>

					</div>

					<div class="col-md-6 mb-4 mb-lg-4 col-lg-6">

						<div class="listing-item">
							<div class="listing-image">
								<img src="images/img_4.jpg" alt="Image" class="img-fluid">
							</div>
							<div class="listing-item-content">
								<a href="#" class="bookmark" data-toggle="tooltip"
									data-placement="left" title="Bookmark"><span
									class="icon-heart"></span></a> <a class="px-3 mb-3 category"
									href="#">Electronics</a>
								<h2 class="mb-1">
									<a href="#">iPhone X gray</a>
								</h2>
								<span class="address">West Orange, New York</span>
							</div>
						</div>

					</div>
					<div class="col-md-6 mb-4 mb-lg-4 col-lg-6">

						<div class="listing-item">
							<div class="listing-image">
								<img src="images/img_2.jpg" alt="Image" class="img-fluid">
							</div>
							<div class="listing-item-content">
								<a href="#" class="bookmark"><span class="icon-heart"></span></a>
								<a class="px-3 mb-3 category" href="#">Real Estate</a>
								<h2 class="mb-1">
									<a href="#">House with Swimming Pool</a>
								</h2>
								<span class="address">West Orange, New York</span>
							</div>
						</div>

					</div>


				</div>
			</div>
		</div>


		<div class="site-section bg-light">
			<div class="container">
				<div class="row mb-5">
					<div class="col-md-7 text-left border-primary">
						<h2 class="font-weight-light text-primary">Trending Today</h2>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-lg-6">

						<div class="d-block d-md-flex listing">
							<a href="listings-single.html" class="img d-block"
								style="background-image: url('images/img_2.jpg')"></a>
							<div class="lh-content">
								<span class="category">Real Estate</span> <a href="#"
									class="bookmark"><span class="icon-heart"></span></a>
								<h3>
									<a href="listings-single.html">House with Swimming Pool</a>
								</h3>
								<address>Don St, Brooklyn, New York</address>
								<p class="mb-0">
									<span class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-secondary"></span> <span class="review">(3
										Reviews)</span>
								</p>
							</div>
						</div>
						<div class="d-block d-md-flex listing">
							<a href="listings-single.html" class="img d-block"
								style="background-image: url('images/img_3.jpg')"></a>
							<div class="lh-content">
								<span class="category">Furniture</span> <a href="#"
									class="bookmark"><span class="icon-heart"></span></a>
								<h3>
									<a href="listings-single.html">Wooden Chair &amp; Table</a>
								</h3>
								<address>Don St, Brooklyn, New York</address>
								<p class="mb-0">
									<span class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-secondary"></span> <span class="review">(3
										Reviews)</span>
								</p>
							</div>
						</div>

						<div class="d-block d-md-flex listing">
							<a href="listings-single.html" class="img d-block"
								style="background-image: url('images/img_4.jpg')"></a>
							<div class="lh-content">
								<span class="category">Electronics</span> <a href="#"
									class="bookmark"><span class="icon-heart"></span></a>
								<h3>
									<a href="listings-single.html">iPhone X gray</a>
								</h3>
								<address>Don St, Brooklyn, New York</address>
								<p class="mb-0">
									<span class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-secondary"></span> <span class="review">(3
										Reviews)</span>
								</p>
							</div>
						</div>



					</div>
					<div class="col-lg-6">

						<div class="d-block d-md-flex listing">
							<a href="listings-single.html" class="img d-block"
								style="background-image: url('images/img_1.jpg')"></a>
							<div class="lh-content">
								<span class="category">Cars &amp; Vehicles</span> <a href="#"
									class="bookmark"><span class="icon-heart"></span></a>
								<h3>
									<a href="listings-single.html">Red Luxury Car</a>
								</h3>
								<address>Don St, Brooklyn, New York</address>
								<p class="mb-0">
									<span class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-secondary"></span> <span class="review">(3
										Reviews)</span>
								</p>
							</div>
						</div>

						<div class="d-block d-md-flex listing">
							<a href="listings-single.html" class="img d-block"
								style="background-image: url('images/img_2.jpg')"></a>
							<div class="lh-content">
								<span class="category">Real Estate</span> <a href="#"
									class="bookmark"><span class="icon-heart"></span></a>
								<h3>
									<a href="listings-single.html">House with Swimming Pool</a>
								</h3>
								<address>Don St, Brooklyn, New York</address>
								<p class="mb-0">
									<span class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-secondary"></span> <span class="review">(3
										Reviews)</span>
								</p>
							</div>
						</div>
						<div class="d-block d-md-flex listing">
							<a href="listings-single.html" class="img d-block"
								style="background-image: url('images/img_3.jpg')"></a>
							<div class="lh-content">
								<span class="category">Furniture</span> <a href="#"
									class="bookmark"><span class="icon-heart"></span></a>
								<h3>
									<a href="listings-single.html">Wooden Chair &amp; Table</a>
								</h3>
								<address>Don St, Brooklyn, New York</address>
								<p class="mb-0">
									<span class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-secondary"></span> <span class="review">(3
										Reviews)</span>
								</p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<div class="site-section bg-white">
			<div class="container">

				<div class="row justify-content-center mb-5">
					<div class="col-md-7 text-center border-primary">
						<h2 class="font-weight-light text-primary">Testimonials</h2>
					</div>
				</div>

				<div class="slide-one-item home-slider owl-carousel">
					<div>
						<div class="testimonial">
							<figure class="mb-4">
								<img src="images/person_1.jpg" alt="Image"
									class="img-fluid mb-3">
								<p>Albert Einstein</p>
							</figure>
							<blockquote>
								<p>&ldquo;The only source of knowledge is experience.&rdquo;</p>
							</blockquote>
						</div>
					</div>
					<div>
						<div class="testimonial">
							<figure class="mb-4">
								<img src="images/person_2.jpg" alt="Image"
									class="img-fluid mb-3">
								<p>Benjamin Franklin</p>
							</figure>
							<blockquote>
								<p>&ldquo;An investment in knowledge pays the best
									interest.&rdquo;</p>
							</blockquote>
						</div>
					</div>

					<div>
						<div class="testimonial">
							<figure class="mb-4">
								<img src="images/person_3.jpg" alt="Image"
									class="img-fluid mb-3">
								<p>Will Durant</p>
							</figure>
							<blockquote>
								<p>&ldquo;Knowledge is the eye of desire and can become the
									pilot of the soul.&rdquo;</p>
							</blockquote>
						</div>
					</div>

					<div>
						<div class="testimonial">
							<figure class="mb-4">
								<img src="images/person_4.jpg" alt="Image"
									class="img-fluid mb-3">
								<p>Barack Obama</p>
							</figure>
							<blockquote>
								<p>&ldquo;At the moment that we persuade a child, any child,
									to cross that threshold, that magic threshold into a library,
									we change their lives forever, for the better.&rdquo;</p>
							</blockquote>
						</div>
					</div>

				</div>
			</div>
		</div>



		<div class="site-section bg-light">
			<div class="container">
				<div class="row justify-content-center mb-5">
					<div class="col-md-7 text-center border-primary">
						<h2 class="font-weight-light text-primary">Our Blog</h2>
						<p class="color-black-opacity-5">See Our Daily News &amp;
							Updates</p>
					</div>
				</div>
				<div class="row mb-3 align-items-stretch">
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="h-entry">
							<img src="images/hero_1.jpg" alt="Image"
								class="img-fluid rounded">
							<h2 class="font-size-regular">
								<a href="#" class="text-black">Many People Selling Online</a>
							</h2>
							<div class="meta mb-3">
								by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span
									class="mx-1">&bullet;</span> <a href="#">News</a>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Natus eligendi nobis ea maiores sapiente veritatis reprehenderit
								suscipit quaerat rerum voluptatibus a eius.</p>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="h-entry">
							<img src="images/hero_1.jpg" alt="Image"
								class="img-fluid rounded">
							<h2 class="font-size-regular">
								<a href="#" class="text-black">Many People Selling Online</a>
							</h2>
							<div class="meta mb-3">
								by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span
									class="mx-1">&bullet;</span> <a href="#">News</a>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Natus eligendi nobis ea maiores sapiente veritatis reprehenderit
								suscipit quaerat rerum voluptatibus a eius.</p>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="h-entry">
							<img src="images/hero_1.jpg" alt="Image"
								class="img-fluid rounded">
							<h2 class="font-size-regular">
								<a href="#" class="text-black">Many People Selling Online</a>
							</h2>
							<div class="meta mb-3">
								by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span
									class="mx-1">&bullet;</span> <a href="#">News</a>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Natus eligendi nobis ea maiores sapiente veritatis reprehenderit
								suscipit quaerat rerum voluptatibus a eius.</p>
						</div>
					</div>

					<div class="col-12 text-center mt-4">
						<a href="#" class="btn btn-primary rounded py-2 px-4 text-white">View
							All Posts</a>
					</div>
				</div>
			</div>
		</div>


		<div class="newsletter bg-primary py-5">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6">
						<h2>Newsletter</h2>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
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
								<p>What we know is a drop, what we don’t know is an ocean.</p>
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
								<input type="text"
									class="form-control border-secondary text-white bg-transparent"
									placeholder="Search products..." aria-label="Enter Email"
									aria-describedby="button-addon2">
								<div class="input-group-append">
									<button class="btn btn-primary text-white" type="button"
										id="button-addon2">Search</button>
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
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved
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