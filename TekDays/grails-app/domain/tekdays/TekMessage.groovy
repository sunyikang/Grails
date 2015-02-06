package tekdays

class TekMessage {

	String subject
	String content
	TekMessage parent
	TekEvent event
	TekUser auther
	
    static constraints = {
		subject blank: false
		content blank: true, maxSize: 5000
		parent nullable: true
		event nullable: true
		auther nullable: false
    }
	static belongsTo = TekEvent
}
