package tekdays

/**
 * @author suny
 *
 */
class Sponsor {
	
	String name
	String website
	String description
	byte[] logo
	
	String toString() {
		return "$name"
	}
	
	static hasMany = [sponsorships: SponsorShip]

    static constraints = {
		name blank: false
		website blank: false
		description nullable: true, maxSize: 5000
		logo nullable: true, maxSize: 10000000
		sponsorships nullable: true
    }
}
