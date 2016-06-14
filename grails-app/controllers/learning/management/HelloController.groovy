package learning.management

class HelloController {

    def index() {
        [lastSavedUser: session.lastSavedUser, day: session.day, date: 14]
    }

    def signup() {
        session.foo = "bar"
        session.myName = "Donald"
    }
}