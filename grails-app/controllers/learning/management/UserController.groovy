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

    def search2() {
    }

    def test(String email, String name, int age) {
        List persons

        List splittedValues = name.split(" ")

        String firstName = splittedValues[0]
        String lastName = splittedValues[1]

        if (email && name && age) {
            persons = Person.findAllByEmailIlikeOrFirstNameOrLastNameOrAge("%${email}%", firstName, lastName, age)
        } else if (email && name) {
            persons = Person.findAllByEmailIlikeOrFirstNameOrLastName("%${email}%", firstName, lastName)
        } else if (name && age) {
            persons = Person.findAllByFirstNameOrLastNameOrAge(firstName, lastName, age)
        } else if (email && age) {
            persons = Person.findAllByEmailIlikeOrAge("%${email}%", age)
        } else if (email) {
            persons = Person.findAllByEmail("%${email}%")
        } else if (name) {
            persons = Person.findAllByEmailIlikeOrAge("%${email}%", age)
        }
        // simillary for age

        render(view: "search", model: ["persons": persons])
    }

    def test2(String email, int age, String ageCriteria) {
        List persons

        if (email && age) {
            if (ageCriteria == "greater") {
                persons = Person.findAllByEmailIlikeAndAgeGreaterThan("%${email}%", age)
            } else if (ageCriteria == "lesser") {
                persons = Person.findAllByEmailIlikeAndAgeGreaterThan("%${email}%", age)
            }
        }

        // And so on..thik hai bhai
    }
}