import cassandra_v02.*

class BootStrap {

    def init = { servletContext ->
		
		def p = new Desk(
				brand: 'Autodesk',
				height: 12 ).save()
    }
	
    def destroy = {
    }
}
