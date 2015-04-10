<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
        <meta name="layout" content="main">
    </head>
    <body>
        <div class="main-block real-estate">

<!-- property search big form -->
            <div class="re-big-form">
                <div class="container">
                    <h2>Encuentra el lugar de tus sueños</h2>
                    <!-- Nav tab style 2 starts -->
                    <div class="nav-tabs-two">
                            <!-- Nav tabs -->
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-1" data-toggle="tab">Disponibles</a></li>
                        </ul>
                        <!-- Tab content -->
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="tab-1">

                                <g:form role="form" action="explorar">
                                    <div class="row">
											<div class="col-md-3 col-sm-6">
												<div class="form-group">
													<label for="input-11">Elige una ciudad</label>
													<select id="input-11" class="form-control" name="ciudad">
														<option selected="" value="all">Cualquiera</option>
                                                    <g:each in="${ciudades}">
                                                        <option value="${it.id}">${it.nombre}</option>
                                                    </g:each>
                                                </select>
                                            </div>
                                        </div>                                        
                                        <div class="col-md-3 col-sm-6">
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-color"><i class="fa fa-search"></i>&nbsp; Buscar</button>
                                            </div>
                                        </div>
                                    </div>
                                </g:form> 									
                            </div>								
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">

<!-- Actual content -->
                <div class="rs-property">
                    <br>
                    <!-- Block heading two -->
                    <div class="block-heading-two">
                        <h3><span>En esta ciudad</span></h3>
                    </div>
                    <g:each in="${casas}" status="i" var="casa">
                        <g:if test="${((i)%3) == 0}">
                            <div class="row">
                            </g:if>
                            <div class="col-md-4 col-sm-4">
                                                                                            <!-- Real estate property item -->
                                <div class="property-item">
                                    <div class="img-container">
                                            <!-- Product Image -->
                                        <img class="img-responsive" src="/brave/img/real-estate/small/${(casa.id%6)+1}.jpg" alt="">
                                        <span class="hover-top bg-color">${casa.tipoAlojamiento}</span>
                                        <span class="hover-bottom bg-red">${casa.tipoHabitacion}</span>
                                    </div>
                                    <!-- product title -->
                                    <h4><a href="#">${casa.titulo}</a></h4>
                                    <!-- product details -->
                                    <div class="property-details">
                                        <g:link action="detail" id="${casa.id}"  class="ecom pull-right">Mas informacion</g:link>
                                        <!-- price -->
                                        <span class="price pull-left">${casa.precio}</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>                                                    
                            <g:if test="${(i%3) == 2}">
                            </div>
                        </g:if>

                    </g:each>
                </div>												

                <hr>
            </div>

        </div>    </body>
</html>
