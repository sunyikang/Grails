<%@ page import="cassandra_v02.Chair" %>



<div class="fieldcontain ${hasErrors(bean: chairInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="chair.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="brand" required="" value="${chairInstance?.brand}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chairInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="chair.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" type="number" value="${chairInstance.height}" required=""/>

</div>

