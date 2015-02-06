
<%@ page import="tekdays.SponsorShip" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sponsorShip.label', default: 'SponsorShip')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sponsorShip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sponsorShip" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sponsorShip">
			
				<g:if test="${sponsorShipInstance?.event}">
				<li class="fieldcontain">
					<span id="event-label" class="property-label"><g:message code="sponsorShip.event.label" default="Event" /></span>
					
						<span class="property-value" aria-labelledby="event-label"><g:link controller="tekEvent" action="show" id="${sponsorShipInstance?.event?.id}">${sponsorShipInstance?.event?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sponsorShipInstance?.sponsor}">
				<li class="fieldcontain">
					<span id="sponsor-label" class="property-label"><g:message code="sponsorShip.sponsor.label" default="Sponsor" /></span>
					
						<span class="property-value" aria-labelledby="sponsor-label"><g:link controller="sponsor" action="show" id="${sponsorShipInstance?.sponsor?.id}">${sponsorShipInstance?.sponsor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sponsorShipInstance?.contributionType}">
				<li class="fieldcontain">
					<span id="contributionType-label" class="property-label"><g:message code="sponsorShip.contributionType.label" default="Contribution Type" /></span>
					
						<span class="property-value" aria-labelledby="contributionType-label"><g:fieldValue bean="${sponsorShipInstance}" field="contributionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sponsorShipInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="sponsorShip.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${sponsorShipInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sponsorShipInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="sponsorShip.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${sponsorShipInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sponsorShipInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sponsorShipInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
