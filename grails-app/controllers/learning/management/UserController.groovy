package learning.management

class UserController {

    def createform() {

    }

    def save() {
        User myUser = new User([myFirstName: params.firstname, myLastName: params.lastname, myEmail: params.email,
            myAge: params.int('age')])

        session.lastSavedUser = myUser
        session.allUsers = session.allUsers ?: []
        session.allUsers.push(myUser)

        redirect(action: "view")
    }

    def view() {
        return [recentuser: session.lastSavedUser]
    }

    def list(){
        [allCreatedUsers: session.allUsers]
    }
}
