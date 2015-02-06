<%@ page import="cassandra_v02.Desk" %>



<div class="fieldcontain ${hasErrors(bean: deskInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="desk.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="brand" required="" value="${deskInstance?.brand}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: deskInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="desk.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" type="number" value="${deskInstance.height}" required=""/>

</div>

