<!DOCTYPE html>
<%@ page import="org.apache.shiro.SecurityUtils" %>
<html>
	<head>
		<meta name="layout" content="main"/>
	</head>
	<body>
		<!-- Revolution slider full width starts -->
				<div class="r-slider">
					<div class="bannercontainer">
						<div class="banner">
							
							<ul>
							
								
								<!-- Slide #1 starts -->
								<li data-transition="zoomin" data-slotamount="5" >
									<img src="${resource(dir: 'brave/img/rev-slider', file: '3.jpg')}"   alt=""  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">
								

									<!-- Layer 1 -->
									<div class="tp-caption b-small-bold-grey lft fadeout"
										data-x="center" data-hoffset="0"
										data-y="25" data-voffset="0"
										data-speed="500"
										data-start="200"
										style="z-index: 2;">Los mejores hosts
									</div>

									<!-- Layer 2 -->
									<div class="tp-caption b-big-bold black lft fadeout"
										data-x="center" data-hoffset="0"
										data-y="60" data-voffset="0"
										data-speed="500"
										data-start="700"
										style="z-index: 2;">Cientos de casas
									</div>									
								
									<!-- Layer 3 -->
									<div class="tp-caption lfb fadeout"
										data-x="10" data-hoffset="0"
										data-y="160" data-voffset="0"
										data-speed="1000"
										data-start="1000"
										style="z-index: 2;"><img src="${resource(dir: 'brave/img/rev-slider', file: 'girl1.png')}" alt="" />
									</div>	

									<!-- Layer 4 -->
									<div class="tp-caption lfb fadeout"
										data-x="200" data-hoffset="0"
										data-y="170" data-voffset="0"
										data-speed="1000"
										data-start="1300"
										style="z-index: 2;"><img src="${resource(dir: 'brave/img/rev-slider', file: 'girl2.png')}" alt="" />
									</div>

									<!-- Layer 5 -->
									<div class="tp-caption lfb fadeout"
										data-x="400" data-hoffset="0"
										data-y="160" data-voffset="0"
										data-speed="1000"
										data-start="1600"
										style="z-index: 2;"><img src="${resource(dir: 'brave/img/rev-slider', file: 'girl3.png')}" alt="" />
									</div>

									<!-- Layer 6 -->
									<div class="tp-caption lfb fadeout"
										data-x="600" data-hoffset="0"
										data-y="160" data-voffset="0"
										data-speed="1000"
										data-start="1900"
										style="z-index: 2;"><img src="${resource(dir: 'brave/img/rev-slider', file: 'girl4.png')}" alt="" />
									</div>

									<!-- Layer 7 -->
									<div class="tp-caption lfb fadeout"
										data-x="800" data-hoffset="0"
										data-y="160" data-voffset="0"
										data-speed="1000"
										data-start="2200"
										style="z-index: 2;"><img src="${resource(dir: 'brave/img/rev-slider', file: 'girl5.png')}" alt="" />
									</div>									
								</li>
								<!-- Slide #1 ends -->
								
								<!-- Slide #2 starts -->
								
								<li data-transition="fadefromright">
									<img src="${resource(dir: 'brave/img/rev-slider', file: 'transparent.png')}" class="bg-color" alt=""/>
									
									<!-- Layer 1 -->
									<div class="tp-caption b-big-bold white lfb fadeout"
										data-x="center" data-hoffset="0"
										data-y="20" data-voffset="0"
										data-speed="1000"
										data-start="800"
										data-splitin="chars"
										data-splitout="chars"
										data-elementdelay="0.1"
										data-endelementdelay="0.1"
										data-endspeed="300"
										style="z-index: 2;">Utiliza nuestra app
									</div>		

									<!-- Layer 2 -->
									<div class="tp-caption lfb fadeout"
										data-x="center" data-hoffset="0"
										data-y="100" data-voffset="0"
										data-speed="1000"
										data-start="2300"
										style="z-index: 2;"><img src="${resource(dir: 'brave/img/rev-slider', file: 'iphone1.png')}" alt="" />
									</div>	

									<!-- Layer 3 -->
									<div class="tp-caption lfb fadeout"
										data-x="center" data-hoffset="-250"
										data-y="140" data-voffset="0"
										data-speed="1000"
										data-start="2600"
										style="z-index: 1;"><img src="${resource(dir: 'brave/img/rev-slider', file: 'iphone2.png')}" alt="" />
									</div>	

									<!-- Layer 4 -->
									<div class="tp-caption lfb fadeout"
										data-x="center" data-hoffset="250"
										data-y="140" data-voffset="0"
										data-speed="1000"
										data-start="2800"
										style="z-index: 1;"><img src="${resource(dir: 'brave/img/rev-slider', file: 'iphone2.png')}" alt="" />
									</div>									
									
								</li>
								
								<!-- Slide #2 ends -->
								
								<!-- Slide #3 starts -->
								<li data-transition="slidedown">
									<img src="${resource(dir: 'brave/img/rev-slider', file: 'transparent.png')}" style="background-color:#fafafa" alt=""/>
									
									<!-- Layer 1 -->
									<div class="tp-caption b-medium-back bg-yellow lft fadeout"
										data-x="center" data-hoffset="0"
										data-y="70" data-voffset="0"
										data-speed="1000"
										data-start="100"
										style="z-index: 2;">Para el fin de semana
									</div>
									
									<!-- Layer 2 -->
									<div class="tp-caption b-big-bold black skewfromleft fadeout"
										data-x="center" data-hoffset="0"
										data-y="130" data-voffset="0"
										data-speed="1000"
										data-start="800"
										data-splitin="chars"
										data-splitout="chars"
										data-elementdelay="0.07"
										data-endelementdelay="0.07"
										data-endspeed="300"
										style="z-index: 2;">A veces los lugares más increibles están cerca de casa
									</div>
									
									<!-- Layer 3 -->
									<div class="tp-caption b-small-para black lfb text-center"
										data-x="center"
										data-y="200"
										data-speed="800"
										data-start="2300"
										style="z-index: 8">Viaja por todo el país. <br /> Disfruta tu estadia.
									</div>
									
									<!-- Layer 4 -->
									<div class="tp-caption b-button lfb text-center"
										data-x="center"
										data-y="270"
										data-speed="800"
										data-start="2800"
										style="z-index: 8">
										<a href="index.html#" class="bg-color rounded-1">Reserva ya</a>
									</div>									
									
								</li>
								<!-- Slide #3 ends -->
								
								<!-- Slide #4 starts  -->
								<li data-transition="slotslide-horizontal" data-slotamount="5" >
								
									<!-- MAIN IMAGE -->
									<img src="${resource(dir: 'brave/img/rev-slider', file: '3.jpg')}"   alt=""  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">


									<!-- LAYER NR. 1 -->
									<div class="tp-caption b-big-thin-transparent white skewfromleft"
										data-x="580"
										data-y="50"
										data-speed="800"
										data-start="800"
										data-easing="Power4.easeOut"
										data-endspeed="300"
										data-endeasing="Power1.easeIn"
										data-captionhidden="on"
										style="z-index: 7">EXPLORA
									</div>

									<!-- LAYER NR. 2 -->
									<div class="tp-caption b-big-thin-transparent white skewfromleft"
										data-x="580"
										data-y="110"
										data-speed="800"
										data-start="1200"
										data-easing="Power4.easeOut"
										data-endspeed="300"
										data-endeasing="Power1.easeIn"
										data-captionhidden="on"
										style="z-index: 7">EL
									</div>

									<!-- LAYER NR. 3 -->
									<div class="tp-caption b-big-thin-transparent white skewfromleft"
										data-x="580"
										data-y="170"
										data-speed="800"
										data-start="1600"
										data-easing="Power4.easeOut"
										data-endspeed="300"
										data-endeasing="Power1.easeIn"
										data-captionhidden="on"
										style="z-index: 7">MUNDO
									</div>

									<!-- LAYER NR. 4 -->
									<div class="tp-caption b-big-thin-transparent white skewfromleft"
										data-x="580"
										data-y="230"
										data-speed="800"
										data-start="2000"
										data-easing="Power4.easeOut"
										data-endspeed="300"
										data-endeasing="Power1.easeIn"
										data-captionhidden="on"
										style="z-index: 7">YA !!!
									</div>

									<!-- LAYER NR. 7 -->
									<div class="tp-caption lfb"
										data-x="left" data-hoffset="20"
										data-y="center" data-voffset="0"
										data-speed="600"
										data-start="400"
										data-autoplay="true"
										data-autoplayonlyfirsttime="true"
										data-nextslideatend="true"
										style="z-index: 8"><iframe src='https://www.youtube.com/watch?v=k4tkrJ563b0;' width='540' height='333' style='width:540px;height:333px;border:0px;box-shadow:0px 0px 5px rgba(0,0,0,0.4);'></iframe>
									</div>
								</li>
								<!-- Slide #4 ends -->

								<!-- Slide #5 starts -->
								<li data-transition="boxslide" data-slotamount="5">
								
									<img src="${resource(dir: 'brave/img/rev-slider', file: '1.jpg')}" alt="" />
									
									<!-- Layer 1 -->
									<div class="tp-caption b-big-bold black skewfromrightshort"
										data-x="20"
										data-y="80"
										data-speed="500"
										data-start="800"
										style="z-index: 4">Quedate
									</div>

									<!-- Layer 2 -->
									<div class="tp-caption b-medium-thin-grey skewfromleftshort"
										data-x="310"
										data-y="95"
										data-speed="500"
										data-start="900"
										style="z-index: 5">
										
									</div>

									<!-- Layer 3 -->
									<div class="tp-caption b-medium-thin-grey skewfromrightshort"
										data-x="20"
										data-y="148"
										data-speed="300"
										data-start="1000"
										style="z-index: 6">con
									</div>

									<!-- Layer 4 -->
									<div class="tp-caption b-big-bold black skewfromleftshort"
										data-x="115"
										data-y="132"
										data-speed="300"
										data-start="1100"
										style="z-index: 7">nosotros
									</div>

									<!-- Layer 5 -->
									<div class="tp-caption b-small-para black skewfromleftshort"
										data-x="20"
										data-y="200"
										data-speed="500"
										data-start="1300"
										style="z-index: 8">
									</div>
									
									<!-- Layer 6 -->
									<div class="tp-caption lft"
										data-x="420"
										data-y="90"
										data-speed="800"
										data-start="1700"
										style="z-index: 8"><img src="${resource(dir: 'brave/img/rev-slider', file: 'brave.png')}" alt="" />
									</div>	

									<!-- Layer 7 -->
									<div class="tp-caption b-medium-back bg-red lfr"
										data-x="700" data-hoffset="0"
										data-y="90"
										data-speed="700"
										data-start="2000"
										style="z-index: 7">MUCHAS CASAS
									</div>

									<!-- Layer 8 -->
									<div class="tp-caption b-medium-back bg-green lfr"
										data-x="700" data-hoffset="0"
										data-y="150"
										data-speed="700"
										data-start="2300"
										style="z-index: 7">Soló lo mejor
									</div>	

									<!-- Layer 9 -->
									<div class="tp-caption b-medium-back bg-lblue lfr"
										data-x="700" data-hoffset="0"
										data-y="210"
										data-speed="700"
										data-start="2600"
										style="z-index: 7">Todo aquí
									</div>	

									<!-- Layer 10 -->
									<div class="tp-caption b-medium-back bg-yellow lfr"
										data-x="700" data-hoffset="0"
										data-y="270"
										data-speed="700"
										data-start="2900"
										style="z-index: 7">Con precios increibles!
									</div>										
									
								</li>
								<!-- Slide #5 ends -->	
								
							</ul>
							
						</div>
					</div>
				</div>
				<!-- Revolution slider full width ends -->
<div class="main-block">
				
				
			
				<div class="container">
					
					<br />
					<div class="text-center">
						<h3><span class="color">EarthBnb</span>. La mejor opción para encontrar hospedaje. <span class="color">Literal!!</span>.</h3>
						<p>No importa a donde viajes, con EarthBnb encontrarás hospedaje en cualquier lugar de México, donde vayas te acompañamos.</p>
					</div>
					
					<div class="divider-1"></div>
					
					<!-- Image Box #3 Starts -->
		
					<div class="img-box-3 text-center">
						<div class="row">
							<div class="col-md-3 col-sm-6">
								<!-- Image Box #3 Item -->
								<div class="img-box-3-item">
									<div class="img-box-3-icon bg-red">
										<a href="index.html#"><img src="${resource(dir: 'brave/img/flat-icons', file: '10.png')}" alt="" class="img-responsive" /></a>
									</div>
									<h4><g:link controller="home" action="index"></g:link></h4>
									<div class="bor bg-red"></div>
									<p>Sin restricción de horario y completamente gratis</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<!-- Image Box #3 Item -->
								<div class="img-box-3-item">
									<div class="img-box-3-icon bg-lblue">
										<g:link controller="reservacion" action="explorar"><img src="${resource(dir: 'brave/img/flat-icons', file: '3.png')}" alt="" class="img-responsive" /></g:link>
									</div>
									<h4><g:link controller="reservacion">Galeria de Casas</g:link></h4>
									<div class="bor bg-lblue"></div>
									<p>Si lo tuyo es lo visual busca un lugar para hosperdarte desde nuestra galeria.</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<!-- Image Box #3 Item -->
								<div class="img-box-3-item">
									<div class="img-box-3-icon bg-green">
										<g:link controller="auth" action="login"><img src="${resource(dir: 'brave/img/flat-icons', file: '17.png')}" alt="" class="img-responsive" /></g:link>
									</div>
									<h4><g:link controller="auth" action="login">Registrate</g:link></h4>
									<div class="bor bg-green"></div>
									<p>Inicia sesión o abre una cuenta con 2 clicks.</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<!-- Image Box #3 Item -->
								<div class="img-box-3-item">
									<div class="img-box-3-icon bg-blue">
										<a href="index.html#"><img src="${resource(dir: 'brave/img/flat-icons', file: '20.png')}" alt="" class="img-responsive" /></a>
									</div>
									<h4><a href="index.html#">Reserva</a></h4>
									<div class="bor bg-blue"></div>
                                                                        <p>Estas un minuto de distancia a tus mejores vacaciones.<br>Reserva ya!</p>
								</div>
							</div>
						</div>	
					</div>
					
					<!-- Image Box #3 Ends -->
					
					
					<br />
					
					
				</div>
				
				<br /><br />
				
				<div class="quote-two">
					<!-- Container -->
					<div class="container">
						<!-- Quote Two Content -->
						<div class="quote-two-content">
							<span>&#8220;</span>
							<div class="owl-carousel" data-items="1" data-auto-play="true" data-pagination="true" data-single-item="true">
								<!-- Item -->
								<div class="item">
									<h3>At vero eos et accusamus et iusto odio dignissimos ducimus indignation qui blanditiis praesentium voluptatum.</h3>
									- Helon Thomas
								</div>
								<div class="item">
									<h3>Indignation qui blanditiis praesentium voluptatum at vero eos et accusamus et iusto odio dignissimos ducimus.</h3>
									- Helon Peter
								</div>
								<div class="item">
									<h3>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized.</h3>
									- John Mark 
								</div>
							</div>
						</div>
					</div>					
				</div>
				
				<br />
								
			</div>                                                                                
	</body>
</html>
