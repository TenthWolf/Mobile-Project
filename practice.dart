class Person {
  String name;
  int age;

  Person({this.name = "", this.age = 30});

  Person.veryOld(this.name, this.age) {
    age = 60;
  }
}

double addNumbers(double num1, double num2) {
  //print(num1 + num2)
  return num1 + num2;
}

void main(List<String> args) {
  var p1 = Person(name: 'Max');
  var p2 = Person(name: "Manu", age: 35);
  var p3 = Person.veryOld("John", 2);
  print(p3.name);
  print(p3.age);
  print(p1.name);
  print(p2.name);
  double firstResult;
  firstResult = addNumbers(1, 1);

  print(firstResult + 1);
  print("Hello");
}
