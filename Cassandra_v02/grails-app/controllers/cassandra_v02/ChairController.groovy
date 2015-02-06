package cassandra_v02



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ChairController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Chair.list(params), model:[chairInstanceCount: Chair.count()]
    }

    def show(Chair chairInstance) {
        respond chairInstance
    }

    def create() {
        respond new Chair(params)
    }

    @Transactional
    def save(Chair chairInstance) {
        if (chairInstance == null) {
            notFound()
            return
        }

        if (chairInstance.hasErrors()) {
            respond chairInstance.errors, view:'create'
            return
        }

        chairInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chair.label', default: 'Chair'), chairInstance.id])
                redirect chairInstance
            }
            '*' { respond chairInstance, [status: CREATED] }
        }
    }

    def edit(Chair chairInstance) {
        respond chairInstance
    }

    @Transactional
    def update(Chair chairInstance) {
        if (chairInstance == null) {
            notFound()
            return
        }

        if (chairInstance.hasErrors()) {
            respond chairInstance.errors, view:'edit'
            return
        }

        chairInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Chair.label', default: 'Chair'), chairInstance.id])
                redirect chairInstance
            }
            '*'{ respond chairInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Chair chairInstance) {

        if (chairInstance == null) {
            notFound()
            return
        }

        chairInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Chair.label', default: 'Chair'), chairInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chair.label', default: 'Chair'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
