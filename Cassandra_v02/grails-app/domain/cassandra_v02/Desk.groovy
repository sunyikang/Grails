package cassandra_v02

class Desk {

	/* yikang note:
	 * 
	 * By default the Hibernate plugin transparently adds an implicit id property of type Long to your domain class. 
	 * The Cassandra plugin adds an id property of type UUID. If you install both plugins, the id property will be 
	 * of type Long. So if you have a domain class with an auto-generated id (the default behaviour) and you want to 
	 * save it to both datastores, you should define a UUID id property as a Long won't really work for Cassandra. 
	 * You also need to set the id's generator attribute so that the Hibernate plugin can auto-generate a UUID. 
	 * Here is an example of persisting an entity to both datastores:
	 * 
	 * */
	String name
	String brand
	int height
	
	static mapwith = "cassandra"
	
    static constraints = {
    }
}
