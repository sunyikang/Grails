package teachme

class Teacher {

	String name
	String major
	int successTeachingRate

	String ToString() {
		"${name}"
	}
	
	static belongsTo = [owner : Student]
	static hasMany = [courses : Course]
	
    static constraints = {
    }
}
