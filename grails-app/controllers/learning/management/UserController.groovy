package learning.management

class UserController {

    def createform() {
    }

    def save() {
        Person myUser = new Person([firstName: params.firstName, lastName: params.lastName, email: params.email,
            age: params.age])

        myUser.save()

        redirect(action: "view")
    }

    def view() {
        Person myPerson = Person.get(params.id)

        return [recentuser: myPerson]
    }

    def list(){
        [allCreatedUsers: Person.list()]
    }
}
