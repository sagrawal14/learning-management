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

        c
    }
}