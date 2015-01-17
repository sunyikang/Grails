
<%@ page import="teachme.Teacher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-teacher" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list teacher">
			
				<g:if test="${teacherInstance?.courses}">
				<li class="fieldcontain">
					<span id="courses-label" class="property-label"><g:message code="teacher.courses.label" default="Courses" /></span>
					
						<g:each in="${teacherInstance.courses}" var="c">
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.major}">
				<li class="fieldcontain">
					<span id="major-label" class="property-label"><g:message code="teacher.major.label" default="Major" /></span>
					
						<span class="property-value" aria-labelledby="major-label"><g:fieldValue bean="${teacherInstance}" field="major"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="teacher.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${teacherInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="teacher.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="student" action="show" id="${teacherInstance?.owner?.id}">${teacherInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.successTeachingRate}">
				<li class="fieldcontain">
					<span id="successTeachingRate-label" class="property-label"><g:message code="teacher.successTeachingRate.label" default="Success Teaching Rate" /></span>
					
						<span class="property-value" aria-labelledby="successTeachingRate-label"><g:fieldValue bean="${teacherInstance}" field="successTeachingRate"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:teacherInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${teacherInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
