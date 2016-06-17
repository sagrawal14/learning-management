package learning.management

class UserController {

    def create() {
    }

    def save() {
        println params
        Person myUser = new Person([firstName: params.firstName, lastName: params.lastName, email: params.email,
            age: params.age])

        myUser.save()

        redirect(action: "view", params: [id: myUser.id, date: 17])
    }



    def show() {
        Person myPerson = Person.get(params.id)

        return [recentuser: myPerson]
    }

    def list(){
        [allCreatedUsers: Person.list()]
    }
}
