<%@ page import="teachme.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="course.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${courseInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="course.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${courseInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="course.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${teachme.Student.list()}" optionKey="id" required="" value="${courseInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="course.students.label" default="Students" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="course.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${teachme.Teacher.list()}" optionKey="id" required="" value="${courseInstance?.teacher?.id}" class="many-to-one"/>

</div>

