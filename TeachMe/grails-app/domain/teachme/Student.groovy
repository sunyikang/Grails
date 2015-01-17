package teachme

class Student {
	String name
	String location
	int	activeRate
	
	String ToString() {
		"${name}"
	}
	
	static hasMany = [courses : Course, teachers: Teacher]

    static constraints = {
		name()
		location(blank: true)
		activeRate()
    }
}
