<%@ page import="teachme.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="teacher.courses.label" default="Courses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teacherInstance?.courses?}" var="c">
    <li><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="course" action="create" params="['teacher.id': teacherInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'course.label', default: 'Course')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'major', 'error')} required">
	<label for="major">
		<g:message code="teacher.major.label" default="Major" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="major" required="" value="${teacherInstance?.major}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="teacher.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${teacherInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="teacher.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${teachme.Student.list()}" optionKey="id" required="" value="${teacherInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'successTeachingRate', 'error')} required">
	<label for="successTeachingRate">
		<g:message code="teacher.successTeachingRate.label" default="Success Teaching Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="successTeachingRate" type="number" value="${teacherInstance.successTeachingRate}" required=""/>

</div>

