
<%@ page import="teachme.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="student.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${studentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="student.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${studentInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.activeRate}">
				<li class="fieldcontain">
					<span id="activeRate-label" class="property-label"><g:message code="student.activeRate.label" default="Active Rate" /></span>
					
						<span class="property-value" aria-labelledby="activeRate-label"><g:fieldValue bean="${studentInstance}" field="activeRate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.courses}">
				<li class="fieldcontain">
					<span id="courses-label" class="property-label"><g:message code="student.courses.label" default="Courses" /></span>
					
						<g:each in="${studentInstance.courses}" var="c">
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.teachers}">
				<li class="fieldcontain">
					<span id="teachers-label" class="property-label"><g:message code="student.teachers.label" default="Teachers" /></span>
					
						<g:each in="${studentInstance.teachers}" var="t">
						<span class="property-value" aria-labelledby="teachers-label"><g:link controller="teacher" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
