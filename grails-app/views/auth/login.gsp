<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <!-- Description, Keywords and Author -->
        <meta name="description" content="Your description">
        <meta name="keywords" content="Your,Keywords">
        <meta name="author" content="ResponsiveWebInc">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
        <link href="/brave/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font awesome CSS -->
        <link href="/brave/css/font-awesome.min.css" rel="stylesheet">		
        <!-- Custom CSS -->
        <link href="/brave/css/style-40.css" rel="stylesheet">

<!-- Favicon -->
        <link rel="shortcut icon" href="#">
    </head>
    <!-- Body -->
    <body>

                <!-- Form -->
        <g:form action="signIn">
                <!-- Ui-40 -->
            <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
            </g:if>
            <div class="ui-40">
                <div class="ui-head bg-black">
                        <!-- Heading -->
                    <h2>Entrar</h2>
                </div>
                <!-- Ui-block -->
                <div class="ui-block bg-white">
                        <!-- Icon -->
                    <div class="ui-icon">
                        <i class="fa fa-user black"></i>
                    </div>
                    <!-- Input box -->
                    <div class="ui-input">
                        <input type="text" class="form-control" placeholder="Usuario"  name="username" value="${username}" >
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="ui-block bg-white">
                    <div class="ui-icon">
                        <i class="fa fa-unlock-alt black"></i>
                    </div>
                    <div class="ui-input">
                        <input type="password" class="form-control" placeholder="Password" name="password" value="" >
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="bg-white">
                        <oauth:connect provider="twitter"  class="btn btn-info btn-lg btn-block" > <i class="fa fa-twitter-square"></i> Entrar con Twitter</oauth:connect>
                </div>
                <div class="clearfix"></div>
                <div class="bg-white">
                    <oauth:connect provider="facebook" class="btn btn-primary btn-lg btn-block"> <i class="fa fa-facebook-square"></i> Entrar con Facebook</oauth:connect>
                </div>

                <!-- Footer -->
                <div class="ui-foot bg-black">
                        <!-- Buttons -->
                    <button type="submit" class="ui-button">Entrar</button> 
                </div>
            </div>
        </g:form>




<!-- Bootstrap javascript links --->
<!-- Jquery file -->
        <script src="/brave/js/jquery-2.1.1.min.js"></script>
        <!-- Bottstrap min js file -->
        <script src="/brave/js/bootstrap.min.js"></script>
        <!-- placeholder file -->
        <script src="/brave/js/placeholders.js"></script>
        <!-- Html file -->
        <script src="/brave/js/html5shiv.js"></script>
        <!-- Respond file-->
        <script src="/brave/js/respond.min.js"></script>

    </body>
</html>
