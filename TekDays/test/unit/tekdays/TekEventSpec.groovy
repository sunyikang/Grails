package tekdays

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(TekEvent)
class TekEventSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test toString function"() {
		when: "a entity has name and city"
			def user2 = new TekUser(
				fullName: 'John Deere',
				userName: 'tractorman',
				password: 't0ps3cr3t',
				email: 'john.deere@porkproducers.org',
				website: 'www.perl.porkproducers.org',
				bio: '''John is a top notch Perl programmer and a pretty
								good hand around the farm. If he can't program it he can plow it!'''
				)
			
			def event1 = new TekEvent(
				name: 'Gateway Code Camp',
				city: 'Saint Louis, MO',
				organizer: [fullName: 'John Deere'] as TekUser,
				//organizer: [fullName: 'John Doe'] as TekUser,
				//organizer: 'John Doe',
				venue: 'TBD',
				startDate: new Date('11/21/2013'),
				endDate: new Date('11/21/2013'),
				description: '''This conference will bring coders from
								across platforms, languages, and industries together for an exciting day
								of tips, tricks, and tech! Stay sharp! Stay at the top of your game! 
								But, don't stay home! Come an join us this fall for the first annual 
								Gateway Code Camp.'''
				)
			
			println "test TekEvent:"
			println event1.organizer
			
		then: "the toString function will combine them"
		 	event1.toString() == 'Gateway Code Camp, Saint Louis, MO'
			//event1.countByCity('Austin, MN') == 0
			event1.city == 'Saint Louis, MO'
    }
}
