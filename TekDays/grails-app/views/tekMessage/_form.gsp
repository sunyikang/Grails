<%@ page import="tekdays.TekMessage" %>



<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="tekMessage.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${tekMessageInstance?.subject}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="tekMessage.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="5000" required="" value="${tekMessageInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'parent', 'error')} ">
	<label for="parent">
		<g:message code="tekMessage.parent.label" default="Parent" />
		
	</label>
	<g:select id="parent" name="parent.id" from="${tekdays.TekMessage.list()}" optionKey="id" value="${tekMessageInstance?.parent?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'event', 'error')} ">
	<label for="event">
		<g:message code="tekMessage.event.label" default="Event" />
		
	</label>
	<g:select id="event" name="event.id" from="${tekdays.TekEvent.list()}" optionKey="id" value="${tekMessageInstance?.event?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'auther', 'error')} required">
	<label for="auther">
		<g:message code="tekMessage.auther.label" default="Auther" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="auther" name="auther.id" from="${tekdays.TekUser.list()}" optionKey="id" required="" value="${tekMessageInstance?.auther?.id}" class="many-to-one"/>

</div>

