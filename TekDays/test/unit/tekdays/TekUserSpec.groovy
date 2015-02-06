package tekdays

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(TekUser)
class TekUserSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
		when: "have a tekuser"
			def user2 = new TekUser(
				fullName: 'John Deere',
				userName: 'tractorman',
				password: 't0ps3cr3t',
				email: 'john.deere@porkproducers.org',
				website: 'www.perl.porkproducers.org',
				bio: '''John is a top notch Perl programmer and a pretty
							good hand around the farm. If he can't program it he can plow it!'''
				)
			
		then: "test it"
			user2.userName == 'tractorman'
			//def userx = TekUser.findByFullName('John Deere')
			//userx != null
    }
}
