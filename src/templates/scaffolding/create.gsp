<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="page-heading-two">
            <div class="container">
                <h2><g:message code="default.create.label" args="[entityName]" /></h2>
                <div class="breads">
                    <g:link class="list" action="index" class="btn btn-default"><g:message code="default.list.label" args="[entityName]" /></g:link>
                    <g:link class="create" action="create" class="btn btn-default"><g:message code="default.new.label" args="[entityName]" /></g:link>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="container">

<!-- Actual content -->
            <div class="ecommerce">
                <div class="row">
                    <div class="col-md-12 col-sm-8">
                            <!-- Shopping items content -->
                        <div class="shopping-content">
                            <div class="shopping-checkout">
                                    <!-- Heading -->
            <g:if test="\${flash.message}">
                <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${${propertyName}}">
                <ul class="errors" role="alert">
                    <g:eachError bean="\${${propertyName}}" var="error">
                        <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                        </g:eachError>
                        </ul>
                    </g:hasErrors>
                        <hr>
                                <g:form class="form-horizontal" role="form" url="[resource:${propertyName}, action:'save']" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
                                    <g:render template="form"/>
                                    <hr>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-6">
                                            <button type="submit" class="btn btn-color">\${message(code: 'default.button.create.label', default: 'Create')}</button>
                                            <button type="reset" class="btn btn-default">Reset</button>
                                        </div>
                                    </div>
                                </g:form>
                            </div>
                        </div>
                        <br>
                    </div>

                </div>
            </div>
        </div>        
</body>
</html>
