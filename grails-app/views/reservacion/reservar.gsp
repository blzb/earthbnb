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
        <meta name="layout" content="main"/>
    </head>
    <body>
        <div class="page-heading-two">
            <div class="container">
                <h2>Reservar</h2>
            </div>
            <div class="container">
                <div class="ecommerce">
                    <div class="row">
                        <div class="col-md-12 col-sm-8">
                            <div class="shopping-content">
                                <div class="shopping-checkout">
                                    <g:form class="form-horizontal" role="form" action="guardar" id="${casa.id}" >
                                        <div class="form-group">
                                            <label for="titulo" class="col-md-2 control-label">
                                                Fecha Llegada
                                                <span class="required-indicator">*</span>
                                            </label>
                                            <div class="col-md-5">
                                                
                                                <input type="text" name="fechaInicio" required="" value="" class="form-control" placeHolder="DD/MM/YYYY">

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="titulo" class="col-md-2 control-label">
                                                Fecha salida
                                                <span class="required-indicator">*</span>
                                            </label>
                                            <div class="col-md-5">
                                                <input type="text" name="fechaFin" required="" value="" class="form-control" placeHolder="DD/MM/YYYY">

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="titulo" class="col-md-2 control-label">
                                                # de Tarjeta    
                                                <span class="required-indicator">*</span>
                                            </label>
                                            <div class="col-md-5">
                                                <input type="text" name="tarjeta" required="" value="" class="form-control"  placeHolder="0000-0000-0000-0000">

                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <div class="col-md-offset-2 col-md-6">
                                                <button type="submit" class="btn btn-color">Reservar</button>
                                                <button type="reset" class="btn btn-default">Cancelar</button>
                                            </div>
                                        </div>
                                    </g:form>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
