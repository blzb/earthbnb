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
         <div class="page-heading-two">
            <div class="container">
                <h2>Mis reservaciones</h2>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="container">
            <div class="ecommerce">
                <div class="row">
                    <div class="col-md-12 col-sm-8 ">
                            <!-- Shopping items content -->
                        <div class="shopping-content">
                            <div class="shopping-ohistory">
                                    <!-- Recent Purchaes Table -->
                                <div class="table-responsive">

                                    <table  class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <td>
                                                    Fecha Inicio
                                                </td>
                                                <td>
                                                    Fecha Fin
                                                </td>
                                                <td>
                                                    Pagado
                                                </td>
                                                <td>
                                                    Propiedad
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <g:each in="${usuario.reservas}">
                                                <tr>
                                                    <td>${it.fechaInicio}</td>
                                                    <td>${it.fechaFin}</td>
                                                    <td>${it.pagado? 'pagado':'pendiente'}</td>
                                                    <td>
                                                        <g:link action="detail" id="${it.casa.id}" class="btn btn-default">
                                                            Ver propiedad
                                                        </g:link>
                                                    </td>
                                                </tr>
                                            </g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
