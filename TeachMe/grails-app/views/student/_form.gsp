<%@ page import="teachme.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="student.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${studentInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'activeRate', 'error')} required">
	<label for="activeRate">
		<g:message code="student.activeRate.label" default="Active Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="activeRate" type="number" value="${studentInstance.activeRate}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="student.courses.label" default="Courses" />
		
	</label>
	<g:select name="courses" from="${teachme.Course.list()}" multiple="multiple" optionKey="id" size="5" value="${studentInstance?.courses*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'teachers', 'error')} ">
	<label for="teachers">
		<g:message code="student.teachers.label" default="Teachers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.teachers?}" var="t">
    <li><g:link controller="teacher" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="teacher" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'teacher.label', default: 'Teacher')])}</g:link>
</li>
</ul>


</div>

