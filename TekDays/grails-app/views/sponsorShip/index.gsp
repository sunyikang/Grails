
<%@ page import="tekdays.SponsorShip" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sponsorShip.label', default: 'SponsorShip')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sponsorShip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sponsorShip" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="sponsorShip.event.label" default="Event" /></th>
					
						<th><g:message code="sponsorShip.sponsor.label" default="Sponsor" /></th>
					
						<g:sortableColumn property="contributionType" title="${message(code: 'sponsorShip.contributionType.label', default: 'Contribution Type')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'sponsorShip.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'sponsorShip.notes.label', default: 'Notes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sponsorShipInstanceList}" status="i" var="sponsorShipInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sponsorShipInstance.id}">${fieldValue(bean: sponsorShipInstance, field: "event")}</g:link></td>
					
						<td>${fieldValue(bean: sponsorShipInstance, field: "sponsor")}</td>
					
						<td>${fieldValue(bean: sponsorShipInstance, field: "contributionType")}</td>
					
						<td>${fieldValue(bean: sponsorShipInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: sponsorShipInstance, field: "notes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sponsorShipInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
