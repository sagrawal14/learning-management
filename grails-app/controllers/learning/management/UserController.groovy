package learning.management

class UserController {

    def create() {
    }

    def save() {
        println params
        Person myUser = new Person([firstName: params.firstName, lastName: params.lastName, email: params.email,
            age: params.age])

        myUser.save()

        redirect(action: "list")
    }

    def edit() {
        return [edit1 : Person.get(params.id)]
    }

    def show() {
        Person myPerson = Person.get(params.id)

        return [recentuser: myPerson]
    }

    def list() {
        [allCreatedUsers: Person.list()]
    }

    def update() {

        println "Received parameters to update: ${params}"
        Person myPerson = Person.get(params.id)

        myPerson.firstName = params.firstName
        myPerson.lastName = params.lastName
        myPerson.email = params.email
        myPerson.age = params.int("age")

        myPerson.save(flush: true)
        redirect(action: "list")
    }
}
