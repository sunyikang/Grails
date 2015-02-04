<%@ page import="linkcassadrademo.Flower" %>



<div class="fieldcontain ${hasErrors(bean: flowerInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="flower.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${flowerInstance?.color}"/>

</div>

