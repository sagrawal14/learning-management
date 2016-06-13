package learning.management

class FormController {

    def saveUser() {
        println session.foo
        println session.myName
        println "saveUser action executed"
        println("Parameters received")
        println params

        session.myFirstName = params.firstName
        session.myLastName = params.lastName

        params.age = params.age != null ? params.age : 0
        params.age = Integer.parseInt(params.age)
        params.age = params.age.toInteger()

        User myUser = new User([myFirstName: params.firstName, myLastName: params.lastName,
            myEmail: params.email, myAge: params.age])

        myUser.myTask()

        User p1 = new User(myFirstName: "Donald", myLastName: "Duck", myEmail: "donald.duck", myAge: 34)
        User p2 = new User(myFirstName: "Uncle", myLastName: "Scooze", myEmail: "uncle.scooze", myAge: 131)
        User p3 = new User(myFirstName: "Iron", myLastName: "Man", myEmail: "iron.man", myAge: 33)
        User p4 = new User([myFirstName: "Captain", myLastName: "India", myEmail: "captain.India", myAge: 100])
        User p5 = new User([myFirstName: "Johney", myLastName: "Blaze", myEmail: "johney.blaze", myAge: 27])
        User p6 = new User([myFirstName: "Kung Fu", myLastName: "Panda", myEmail: "johney.blaze", myAge: 2])
        User p7 = new User([myFirstName: "Hulk", myLastName: "Bhai", myEmail: "hulk.bhai", myAge: 83])

        List users = [p1, p2, p3, p4, p5, p6, p7]
        List numbers = [2, 3, 4, 5]

        users.each { user ->
            numbers.each { number ->
                println it.firstName
            }
        }

        return [recentlySavedUser: myUser, users: users]
    }
}