<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="default" />
        <g:set var="entityName" value="${message(code: 'fieldTest.label', default: 'FieldTest')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-fieldTest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-fieldTest" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.fieldTest}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.fieldTest}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.fieldTest}" method="PUT">
                <g:hiddenField name="version" value="${this.fieldTest?.version}" />
                <fieldset class="form">

                    %{--<f:all bean="fieldTest"/>--}%

                    %{--<f:field bean="fieldTest" property="name"/>--}%
                    %{--<f:field property="password">--}%
                        %{--<g:passwordField name="password" value=""/>--}%
                    %{--</f:field>--}%

                    %{--<f:field bean="fieldTest" property="salary"/>--}%
                    %{--<f:field bean="fieldTest" property="dateOfBirth"/>--}%


                    <f:with bean="fieldTest">
                        <f:field property="name"/>
                        %{--<f:widget property="name"/>--}%

                        <f:field property="password">
                            <g:passwordField name="password" value=""/>
                        </f:field>

                        <f:field property="salary"/>
                        <f:field property="dateOfBirth"/>
                    </f:with>

                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>