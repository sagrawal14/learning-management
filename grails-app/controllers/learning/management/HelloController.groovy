package learning.management

class HelloController {

    def index() {
        render("Hello this is me. Shashank<h1>hello</h1>")
    }

    def signup() {
        session.foo = "bar"
        session.myName = "Donald"
    }
}