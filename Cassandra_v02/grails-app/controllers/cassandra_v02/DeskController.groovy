package cassandra_v02



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DeskController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Desk.list(params), model:[deskInstanceCount: Desk.count()]
    }

    def show(Desk deskInstance) {
        respond deskInstance
    }

    def create() {
        respond new Desk(params)
    }

    @Transactional
    def save(Desk deskInstance) {
        if (deskInstance == null) {
            notFound()
            return
        }

        if (deskInstance.hasErrors()) {
            respond deskInstance.errors, view:'create'
            return
        }

		// yikang: whenever save to Hibernate, save to Cassandra
		//deskInstance.cassandra.save()
		
        deskInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'desk.label', default: 'Desk'), deskInstance.id])
                redirect deskInstance
            }
            '*' { respond deskInstance, [status: CREATED] }
        }
    }

    def edit(Desk deskInstance) {
        respond deskInstance
    }

    @Transactional
    def update(Desk deskInstance) {
        if (deskInstance == null) {
            notFound()
            return
        }

        if (deskInstance.hasErrors()) {
            respond deskInstance.errors, view:'edit'
            return
        }

        deskInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Desk.label', default: 'Desk'), deskInstance.id])
                redirect deskInstance
            }
            '*'{ respond deskInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Desk deskInstance) {

        if (deskInstance == null) {
            notFound()
            return
        }

        deskInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Desk.label', default: 'Desk'), deskInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'desk.label', default: 'Desk'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
