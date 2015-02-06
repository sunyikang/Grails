
<%@ page import="tekdays.TekMessage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tekMessage.label', default: 'TekMessage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tekMessage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tekMessage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="subject" title="${message(code: 'tekMessage.subject.label', default: 'Subject')}" />
					
						<g:sortableColumn property="content" title="${message(code: 'tekMessage.content.label', default: 'Content')}" />
					
						<th><g:message code="tekMessage.parent.label" default="Parent" /></th>
					
						<th><g:message code="tekMessage.event.label" default="Event" /></th>
					
						<th><g:message code="tekMessage.auther.label" default="Auther" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tekMessageInstanceList}" status="i" var="tekMessageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tekMessageInstance.id}">${fieldValue(bean: tekMessageInstance, field: "subject")}</g:link></td>
					
						<td>${fieldValue(bean: tekMessageInstance, field: "content")}</td>
					
						<td>${fieldValue(bean: tekMessageInstance, field: "parent")}</td>
					
						<td>${fieldValue(bean: tekMessageInstance, field: "event")}</td>
					
						<td>${fieldValue(bean: tekMessageInstance, field: "auther")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tekMessageInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
