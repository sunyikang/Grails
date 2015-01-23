// data coming from: http://grails.asia/grails-tutorial-for-beginners-playing-with-groovy-language/

class TestProgram {
	static void main(args) {
		println( "Hello World" )
		
		//Type
		def a1 = new Object()
		a1 = 10
		println(a1)
		
		//String
		def firstName = 'John'
		def lastName = 'Doe'
		def a = 3
		def b = 7
		println "${lastName}, ${firstName}"
		println "a + b = ${a + b}"
		println '${lastName}, ${firstName}'
		println 'a + b = ${a + b}'
		
		//List
		def list = [10, "Apple", new Double(3.44)]
		list << "Banana"
		println(list)
		def alist = [10,11,12,13,14,15,16,17,18,19,20]
		println alist.findAll{it % 2 == 0}
		alist = [1,2,3,4,5]
		println alist.collect{it * 10}
		alist = ["Apple", "Basketball", "Championship"]
		println alist*.length()
		
		//Map
		def emptyMap = [:]
		def mapWithValues = [fruit:'Apple',  veggie:'Carrot']
		alist = [fruit:'Apple', 'veggie':'Carrot']
		alist['car'] = 'Sedan'
		alist.put('book', 'Novels')
		alist << [pet:'Dog']
		println alist['fruit']
		println alist.'veggie'
		println alist.get('car')
		println alist.get('book')
		println alist.get('pet')
		
		//Loop
		5.times {
			println "Hello"
		}
		['cat', 'dog', 'hamster'].each { name ->
			println name
		}
		(6..10).each { number ->
			println number
		}
		[fruit:'Apple', veggie:'Carrot', car:'Sedan'].each { key, value ->
			println "${key} = ${value}"
		}
		
		//Custom
		def i=10		//--> it doesn't support runtime loop scope change.
		i.times {
			println "give me 5 times\n"
			i--
			println i
		}
		
		//List&Map
		List<String> things = ["Hello", "Groovy", "World"]
		
	}
}
