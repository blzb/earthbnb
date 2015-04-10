<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Home - Brave</title>
		<!-- Description, Keywords and Author -->
		<meta name="description" content="Your description">
		<meta name="keywords" content="Your,Keywords">
		<meta name="author" content="ResponsiveWebInc">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="${resource(dir: 'brave/css', file: 'bootstrap.min.css')}" rel="stylesheet">
		<!-- Font awesome CSS -->
		<link href="${resource(dir: 'brave/css', file: 'font-awesome.min.css')}" rel="stylesheet">
		<!-- Magnific Popup -->
		<link href="${resource(dir: 'brave/css', file: 'magnific-popup.css')}" rel="stylesheet">
                <link href="${resource(dir: 'brave/css', file: 'magnific-popup.css')}" rel="stylesheet">
		<!-- Owl carousel -->
		<link href="${resource(dir: 'brave/css', file: 'owl.carousel.css')}" rel="stylesheet">
		
		<!-- CSS for this page -->
		<!-- Revolution Slider -->
		<link href="${resource(dir: 'brave/css', file: 'settings.css')}" rel="stylesheet">
		
		<!-- Base style -->
		<link href="${resource(dir: 'brave/css/styles', file: 'style.css')}" rel="stylesheet">
                <link href="${resource(dir: 'brave/css/styles', file: 'real-estate.css')}" rel="stylesheet">
		<!-- Skin CSS -->
		<link href="${resource(dir: 'brave/css/styles', file: 'skin-lblue.css')}" rel="stylesheet" id="color_theme">
		
		<!-- Custom CSS. Type your CSS code in custom${resource(dir: 'brave/css', file: '.css')} file -->
		<link href="${resource(dir: 'brave/css', file: 'custom.css')}" rel="stylesheet">
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="index.html#">
	</head>
	
	<!-- Add class "boxed" along with body for boxed layout. -->
	<!-- Add "pattern-x" (1 to 5) for background patterns. -->
	<!-- Add "img-x" (1 to 5) for background images. -->
	<body>
	
		<!-- Outer Starts -->
		<div class="outer">
			
			<!-- Top bar starts -->
			<div class="top-bar">
				<div class="container">
				
					<!-- Contact starts -->
					<div class="tb-contact pull-left">
						<!-- Email -->
						<i class="fa fa-envelope color"></i> &nbsp; <a href="mailto:contact@domain.com">contact@domain.com</a>
						&nbsp;&nbsp;  
						<!-- Phone -->
						<i class="fa fa-phone color"></i> &nbsp; +1 (342)-(323)-4923
					</div>
					<!-- Contact ends -->
					
					
					<!-- Langauge starts -->
					<div class="tb-language dropdown pull-right">
						<a href="index.html#" data-target="#" data-toggle="dropdown"><i class="fa fa-globe"></i> English <i class="fa fa-angle-down color"></i></a>
						<!-- Dropdown menu with languages -->
						<ul class="dropdown-menu dropdown-mini" role="menu">
							<li><a href="index.html#">Hindi</a></li>
							<li><a href="index.html#">Tamil</a></li>
							<li><a href="index.html#">Kanada</a></li>
						</ul>
					</div>
					<!-- Language ends -->
					
					<!-- Search section for responsive design -->
					<div class="tb-search pull-left">
						<a href="index.html" class="b-dropdown"><i class="fa fa-search square-2 rounded-1 bg-color white"></i></a>
						<div class="b-dropdown-block">
							<form role="form">
								<!-- Input Group -->
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Type Something">
									<span class="input-group-btn">
										<button class="btn btn-color" type="button">Search</button>
									</span>
								</div>
							</form>
						</div>
					</div>
					<!-- Search section ends -->
					
					<!-- Social media starts -->
					<div class="tb-social pull-right">
						<div class="brand-bg text-right">
							<!-- Brand Icons -->
							<a href="index.html#" class="facebook"><i class="fa fa-facebook square-2 rounded-1"></i></a>
							<a href="index.html#" class="twitter"><i class="fa fa-twitter square-2 rounded-1"></i></a>
							<a href="index.html#" class="google-plus"><i class="fa fa-google-plus square-2 rounded-1"></i></a>
							<a href="index.html#" class="linkedin"><i class="fa fa-linkedin square-2 rounded-1"></i></a>
							<a href="index.html#" class="pinterest"><i class="fa fa-pinterest square-2 rounded-1"></i></a>
						</div>
					</div>
					<!-- Social media ends -->
					
					<div class="clearfix"></div>
				</div>
			</div>
			
			<!-- Top bar ends -->
			
			<!-- Header two Starts -->
			<div class="header-2">
			
				<!-- Container -->
				<div class="container">
					<div class="row">
						<div class="col-md-2">
							<!-- Logo section -->
							<div class="logo">
                                                            <img src="${resource(dir: 'brave/img', file: 'earthbnb.png')}" style="height: 40px;"/>
							</div>
						</div>
						<div class="col-md-9">
						
							<!-- Navigation starts.  -->
							<div class="navy">			
								<ul>
									<!-- Main menu -->
									<li><g:link controller="home" action="index">Nuestra Casa</g:link>										
									</li>																	
                                                                        <shiro:notAuthenticated>
									<li><g:link controller="auth" action="login">Login</g:link></li>
                                                                        </shiro:notAuthenticated>
                                                                        <shiro:authenticated>
                                                                        <li><g:link controller="auth" action="signOut">Logout</g:link></li>
                                                                        <shiro:hasRole name="Administrador">
                                                                        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                                                                            <li><g:link controller="${c.logicalPropertyName}">${c.logicalPropertyName}</g:link></li>
                                                                        </g:each>
                                                                        </shiro:hasRole>
                                                                        <shiro:hasRole name="UsuarioComun">
                                                                        <li><g:link controller="reservacion" action="explorar">encuentra tu hospedaje de hoy</g:link></li>
                                                                        </shiro:hasRole>                                                                        
                                                                        </shiro:authenticated>
									<li><a href="contact-us-one.html">Di Hola!!</a></li>
								</ul>
							</div>							
							<!-- Navigation ends -->
							
						</div>
						
						<div class="col-md-1">
							
							<!-- Search section -->
							<div class="head-search pull-right">
								<a href="index.html#" class="b-dropdown"><i class="fa fa-search square-2 rounded-1 bg-color white"></i></a>
								<div class="b-dropdown-block">
									<form role="form">
										<!-- Input Group -->
										<div class="input-group">
											<input type="text" class="form-control" placeholder="Type Something">
											<span class="input-group-btn">
												<button class="btn btn-color" type="button">Search</button>
											</span>
										</div>
									</form>
								</div>
							</div>
							<!-- Search section ends -->
							<div class="clearfix"></div>
							
						</div>
						
					</div>
				</div>
			</div>
	
			<!-- Header two ends -->
			
			<!-- Main content starts -->

			<g:layoutBody/>
			<!-- Main content ends -->
			
			<!-- Foot Starts -->
		
			<div class="foot">
				<!-- Container -->
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<!-- Foot Item -->
							<div class="foot-item">
								<!-- Heading -->
								<h5 class="bold"><i class="fa fa-user"></i>Hola!</h5>
								<p>No importa a donde viajes, con EarthBnb encontraras hospedaje
                                                                en cualquier lugar de México, donde vayas te acompañamos.</p>
								<div class="brand-bg">
									<!-- Social Media Icons -->
									<a href="index.html#" class="facebook"><i class="fa fa-facebook circle-3"></i></a>
									<a href="index.html#" class="twitter"><i class="fa fa-twitter circle-3"></i></a>
									<a href="index.html#" class="google-plus"><i class="fa fa-google-plus circle-3"></i></a>
									<a href="index.html#" class="linkedin"><i class="fa fa-linkedin circle-3"></i></a>
									<a href="index.html#" class="pinterest"><i class="fa fa-pinterest circle-3"></i></a>
								</div>
								<div class="subscribe-box">
									<h5 class="bold">Subscríbete :</h5>
									<!-- Form -->
									<form role="form">
										<!-- Input Group -->
										<div class="input-group">
											<input type="text" class="form-control" placeholder="ingresa tu email">
											<span class="input-group-btn">
												<button class="btn btn-color" type="button">Me suscribo</button>
											</span>
										</div>
									</form>
								</div>
							</div>
						</div>							
						<div class="col-md-6 col-sm-6">
							<!-- Foot Item -->
							<div class="foot-item">
								<!-- Heading -->
								<h5 class="bold"><i class="fa fa-building-o"></i>&nbsp;&nbsp;Tienes dudas? Contáctanos</h5>
								<!-- Foot Item Content -->
								<div class="foot-item-content address">
									<!-- Heading -->
									<h6 class="bold"><i class="fa fa-home"></i>&nbsp;&nbsp;EarthBnb Ltd</h6>
									<!-- Paragraph -->
									<p class="add">
									   Santo Lodito Piedas Cuchis<br />
									   Tejeringo El Chico - 535089.</p>
									<p class="tel"> <i class="fa fa-phone"></i> Tel : + (52) - 55 839 8393<br />
									<i class="fa fa-envelope"></i>  Mail : <a href="index.html#">hola@earthbnb.com</a><br />
									<i class="fa fa-calendar"></i> Business Hours : 9:30 - 5:30</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- Foot Ends -->
			
			<!-- Footer Starts -->
			
			<footer>
				<!-- Container -->
				<div class="container">
					<!-- Footer Content -->
						<!-- Paragraph -->
						<p class="pull-left">Copyright &copy; 2014 - <a href="index.html#">Your Site</a></p>
						<ul class="list-inline pull-right">
							<!-- List -->
							<li><a href="index.html">Home</a><li>
							<li><a href="http://ashobiz.asia/brave18/demo/service.html">Service</a></li>
							<li><a href="http://ashobiz.asia/brave18/demo/feature.html">Features</a></li>
							<li><a href="http://ashobiz.asia/brave18/demo/about-us.html">About</a></li>
							<li><a href="http://ashobiz.asia/brave18/demo/contact-us.html">Contact</a></li>
						</ul>
						<!-- Clearfix -->
						<div class="clearfix"></div>
				</div>
			</footer>
			
			<!-- Footer Ends -->
		
		</div>
		
		<!-- Outer Ends -->		
		
		<!-- Scroll to top -->
		<span class="totop"><a href="index.html#"><i class="fa fa-angle-up bg-color"></i></a></span>
		
		<!-- Javascript files -->
		<!-- jQuery -->
		<script src="${resource(dir: 'brave/js', file: 'jquery.js')}"></script>
		<!-- Bootstrap JS -->
		<script src="${resource(dir: 'brave/js', file: 'bootstrap.min.js')}"></script>
		<!-- Placeholders JS -->
		<script src="${resource(dir: 'brave/js', file: 'placeholders.js')}"></script>
		<!-- Magnific Popup -->
		<script src="${resource(dir: 'brave/js', file: 'jquery.magnific-popup.min.js')}"></script>
		<!-- Owl carousel -->
		<script src="${resource(dir: 'brave/js', file: 'owl.carousel.min.js')}"></script>
		<!-- Respond JS for IE8 -->
		<script src="${resource(dir: 'brave/js', file: 'respond.min.js')}"></script>
		<!-- HTML5 Support for IE -->
		<script src="${resource(dir: 'brave/js', file: 'html5shiv.js')}"></script>
		<!-- Main JS -->
		<script src="${resource(dir: 'brave/js', file: 'main.js')}"></script>
		
		<!-- Javascript for this page -->
		<!-- Revolution slider -->
		<script src="${resource(dir: 'brave/js', file: 'jquery.themepunch.tools.min.js')}"></script>
		<script src="${resource(dir: 'brave/js', file: 'jquery.themepunch.revolution.min.js')}"></script>		
		<!-- Waypoints -->
		<script src="${resource(dir: 'brave/js', file: 'waypoints.min.js')}"></script>
		<!-- jQuery CountTo -->
		<script src="${resource(dir: 'brave/js', file: 'jquery.countTo.js')}"></script>
		
		<script type="text/javascript">
			<!-- Counting code -->
			$(document).ready(function(){
				// Way Points With Count To()
				$('.number-count').waypoint(function(down){
					if(!$(this).hasClass('stop-counter'))
					{
						$(this).countTo();
						$(this).addClass('stop-counter');
					}
				}, { 
					offset: '90%' 
				});
			});		
		</script>
		
		<script type="text/javascript">
			jQuery(document).ready(function() {
				jQuery('.r-slider .banner').revolution({
					delay:7000,
					startheight:400,
					startwidth:1000,
					startWithSlide:0,
		 
					fullScreenAlignForce:"off",
					autoHeight:"off",
		 
					shuffle:"off",
		 
					onHoverStop:"on",
		 
					thumbWidth:100,
					thumbHeight:50,
					thumbAmount:3,
		 
					hideThumbsOnMobile:"on",
					hideNavDelayOnMobile:1500,
					hideBulletsOnMobile:"off",
					hideArrowsOnMobile:"off",
					hideThumbsUnderResoluition:0,
		 
					hideThumbs:10,
					hideTimerBar:"on",
		 
					keyboardNavigation:"on",
		 
					navigationType:"bullet",
					navigationArrows:"solo",
					navigationStyle:"round",
		 
					navigationHAlign:"center",
					navigationVAlign:"bottom",
		 
					soloArrowLeftHalign:"left",
					soloArrowLeftValign:"center",
					soloArrowLeftHOffset:20,
					soloArrowLeftVOffset:0,
		 
					soloArrowRightHalign:"right",
					soloArrowRightValign:"center",
					soloArrowRightHOffset:20,
					soloArrowRightVOffset:0,
		 
		 
					touchenabled:"on",
					swipe_velocity:"0.7",
					swipe_max_touches:"1",
					swipe_min_touches:"1",
					drag_block_vertical:"false",
		 
					stopAtSlide:-1,
					stopAfterLoops:-1,
					hideCaptionAtLimit:0,
					hideAllCaptionAtLilmit:0,
					hideSliderAtLimit:0,
		 
					dottedOverlay:"none",
		 
					spinned:"spinner4",
		 
					fullWidth:"off",
					forceFullWidth:"off",
					fullScreen:"off",
					fullScreenOffsetContainer:"#topheader-to-offset",
		 
				});
			});
		</script>
		
		<!-- Custom JS. Type your JS code in custom${resource(dir: 'brave/js', file: '.js')} file -->
		<script src="${resource(dir: 'brave/js', file: 'custom.js')}"></script>
		<script>
                    $('select, input, textarea').addClass('form-control')
                </script>
	</body>	
</html>
