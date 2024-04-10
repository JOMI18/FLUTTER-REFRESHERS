// Dart is the programming language for flutter
// Dart is a statically typed programming language---> meaning if you set the type of a variable it can't be changed

// check out dartPad
void main() {
  //  void doesn't expect you to return anything

  print("hello");
  String greeter = greeting();
  int age = getAge(); // it has to be the same type // String greet != int greet
  print(age);
  print(greeter);

  // User userOne = User();
  // User userOne = User("mike", 23);
  // print(userOne); // essentially user is james and he is 16
  // userOne.legal();

  // User userTwo = User("zenia",
  //     25); // by default is another person , with the same details, to solve that we make use of the constructor
  // print(userTwo);

  // SuperUser userThree = SuperUser("Feran", 21); // has access to everything in User
  // print(userThree.username);
  // userThree.legal();
  // userThree.publish();
}

// Declaring Variables
//  you have to declare the type
String user = "Jomi";
// print(user);
int age = 30;
bool isNight = false;
// dynamic person =" Jason";
// person =30;
void array() {
  // List namesArray = ["georgie", "julia", "thames"];
  //  Essentially you can add any data type, but thats not advisable
  // As a result specify data type by <String>
  List<String> namesArray = ["georgie", "julia", "thames"];
  // methods
  namesArray.add("jomi");
  namesArray.remove("julia");
}

// Working with Functions
String greeting() {
  return "hello";
}

int getAge() => 20;

// How Classes Work

// class User {
//   // String username = "James";
//   // int age = 18;
//   // Now we set dynamically using constructor
//   String username;
//   int age;

//   User(String username, int age) {
//     this.username = username; //{this} essentially points to who called it
//     this.age = age;
//   }
//   void legal() {
//     print("Is legal");
//   }
// }

// // Incase of Inheritance ... we make use of the extends

// class SuperUser extends User {
//   SuperUser(String username, int age) : super(username, age);
//   void publish() {}
// }
