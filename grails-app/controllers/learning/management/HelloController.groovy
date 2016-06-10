package learning.management

class HelloController {

    def index() {
        render("Hello this is me. Shashank<h1>hello</h1>")
    }

    def salman() {
        render("Hello salman khan")
    }
    def signup() {
        render("""<H1>Sign-up-form</H1>
                  <form method="post" action="/learning-management/form/saveUser">
                        FirstName:<input type=text name="firstName" placeholder="Enter firstname"><br><br>
                        LastName:<input type=text name="lastName" placeholder="Enter Lastname"><br><br>
                        Email-ID:<input type=text name="email" placeholder="Enter Email"><br><br>
                        Password:<input type="password" name="pwd" placeholder="Enter Password"><br><brs>
                        <input type="submit" value="submit">
                  </form>
               """)
    }
}

