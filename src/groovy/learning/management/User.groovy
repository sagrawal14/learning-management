package learning.management

class User {

    String myFirstName
    String myLastName
    String myEmail
    int myAge

    void myTask() {
        myFirstName = myFirstName.toUpperCase()
        myLastName = myLastName.toUpperCase()
        myEmail = myEmail.toUpperCase()
    }

    String doSomething() {
        return "I'm do something method"
    }
}
