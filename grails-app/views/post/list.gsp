<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="table" />
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-post" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>


    <g:render template="/template/shared/dataTable" model="[
            controller:'post',
            action:'filter',
            columns:[
                    [key:'id',value:'id'],
                    [key:'content',value:message(code:'post.content.label',default: 'content')],
                    [key:'user',value:message(code:'post.user.label',default: 'user')],
                    [key:'dateCreated',value:message(code:'post.dateCreated.label',default: 'dateCreated')],
            ]
    ]"/>


</div>
</body>
</html>