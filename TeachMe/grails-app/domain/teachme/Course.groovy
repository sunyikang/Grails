package teachme

class Course {
	String name
	String location
	Date startDate
	Student owner
	Teacher teacher
	
	static belongsTo = [ Student, Teacher ]
	static hasMany = [students : Student]
	
    static constraints = {
		name()
		location()
		startDate()
    }
}
