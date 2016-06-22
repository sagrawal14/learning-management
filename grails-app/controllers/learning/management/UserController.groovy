package learning.management

class UserController {

    def grailsApplication

    def create() {
        [myUser: new Person()]
    }

    def save() {
        println params
        Person myPersonInstance = new Person([firstName: params.firstName, lastName: params.lastName, email: params.email,
            age: params.age])

        myPersonInstance.save()

        println myPersonInstance.errors

        if (myPersonInstance.hasErrors()) {
            render(view: "create", model: [myUser: myPersonInstance])
            return
        }

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

    def delete() {
        println "Deleting record with id: ${params.id}"

        Person personInstance = Person.get(params.id)

        personInstance.delete(flush: true)

        redirect(action: "list")
    }

    def search() {
    }

    def test(String email, String name, int age) {
        if (email && name && age) {
            String[] splittedValues = name.split(" ")

            String firstName = splittedValues[0]
            String lastName = splittedValues.size() == 2 ? splittedValues[1] : null

            List persons = Person.findAllByEmailIlikeOrFirstNameOrLastNameOrAge("%${email}%", firstName, lastName, age)

            render(view: "search", model: ["persons": persons])
        } else if (email && name) {
            String[] splittedValues = name.split(" ")

            String firstName = splittedValues[0]
            String lastName = splittedValues.size() == 2 ? splittedValues[1] : null

            List persons = Person.findAllByEmailIlikeOrFirstNameOrLastName("%${email}%", firstName, lastName)

            render(view: "search", model: ["persons": persons])
        } else if (name && age) {
            String[] splittedValues = name.split(" ")

            String firstName = splittedValues[0]
            String lastName = splittedValues.size() == 2 ? splittedValues[1] : null

            List persons = Person.findAllByFirstNameOrLastNameOrAge(firstName, lastName, age)

            render(view: "search", model: ["persons": persons])
        } else if (email && age) {
            List persons = Person.findAllByEmailIlikeOrAge("%${email}%", age)

            render(view: "search", model: ["persons": persons])
        } else if (email) {
            List persons = Person.findAllByEmail("%${email}%")

            render(view: "search", model: ["persons": persons])
        } else if (name) {
            List persons = Person.findAllByEmailIlikeOrAge("%${email}%", age)

            render(view: "search", model: ["persons": persons])
        }
        // simillary for age
    }
}