package tekdays

class TekEvent {
	
	String name
	String city
	TekUser organizer 
	String venue
	Date startDate 
	Date endDate 
	String description
	
	String toString() {
		"$name, $city"
	}
	
	static hasMany = [	volunteers: TekUser, 
						respondents: String, 
						sponsorships: SponsorShip,
						tasks: Task,
						messages: TekMessage]
	
    static constraints = {
		name()
		city()
		description( maxSize: 5000 )
		organizer()
		venue()
		startDate()
		endDate()
		volunteers nullable: true
		respondents nullable: true
		sponsorships nullable: true
		tasks nullable: true
		messages nullable: true
    }
}