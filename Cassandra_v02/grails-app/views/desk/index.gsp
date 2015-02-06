
<%@ page import="cassandra_v02.Desk" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'desk.label', default: 'Desk')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-desk" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-desk" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="brand" title="${message(code: 'desk.brand.label', default: 'Brand')}" />
					
						<g:sortableColumn property="height" title="${message(code: 'desk.height.label', default: 'Height')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${deskInstanceList}" status="i" var="deskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${deskInstance.id}">${fieldValue(bean: deskInstance, field: "brand")}</g:link></td>
					
						<td>${fieldValue(bean: deskInstance, field: "height")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${deskInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
