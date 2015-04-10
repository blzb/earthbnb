<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="page-heading-two">
            <div class="container">
                <h2><g:message code="default.list.label" args="[entityName]" /></h2>
                <div class="breads">
                    <g:link class="list" action="index" class="btn btn-default"><g:message code="default.list.label" args="[entityName]" /></g:link>
                    <g:link class="create" action="create" class="btn btn-default"><g:message code="default.new.label" args="[entityName]" /></g:link>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="container">
            <div class="ecommerce">
                <div class="row">
                    <div class="col-md-12 col-sm-8 ">
                            <!-- Shopping items content -->
                        <div class="shopping-content">
                            <g:if test="\${flash.message}">
                                <div class="message" role="status">\${flash.message}</div>
                            </g:if>

                            <hr>
                            <div class="shopping-ohistory">
                                    <!-- Recent Purchaes Table -->
                                <div class="table-responsive">

                                    <table  class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
                        allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
                        props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true) }
                        Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
                        props.eachWithIndex { p, i ->
                            if (i < 6) {
                                if (p.isAssociation()) { %>
                                                <th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
                                                    <%      } else { %>
                                                    <g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
                                                    <%  }   }   } %>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
                                                <tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
                                                    <%  props.eachWithIndex { p, i ->
            if (i == 0) { %>
                                                    <td><g:link action="edit" id="\${${propertyName}.id}">\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</g:link></td>
                                                    <%      } else if (i < 6) {
                if (p.type == Boolean || p.type == boolean) { %>
                                                    <td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
                                                    <%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
                                                    <td><g:formatDate date="\${${propertyName}.${p.name}}" /></td>
                                                    <%          } else { %>
                                                    <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
                                                    <%  }   }   } %>
                                                </tr>
                                            </g:each>
                                        </tbody>
                                    </table>
                                    <div class="pagination">
                                        <g:paginate total="\${${propertyName}Count ?: 0}" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <br>
            </div>
        </div>                                
        <div id="list-${domainClass.propertyName}" class="content scaffold-list" role="main">

        </div>
    </body>
</html>
