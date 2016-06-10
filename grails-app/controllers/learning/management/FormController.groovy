package learning.management

class FormController {

    def saveUser() {
        println "saveUser action executed"

        println("Parameters received")
        println params.firstName
        println params.lastName
        println params.email
        println params.pwd

        redirect(controller: "form", action: "thankYou", params: [name: "you"])
    }

    def thankYou() {
        println "thank you action executed"
        println params

        render("""
            Thank you for your signup. You submitted following details:
            """)
    }
}
