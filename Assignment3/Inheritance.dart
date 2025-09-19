//Task1
class Vehicle {
  String make;
  String model;

  Vehicle(this.make, this.model);

  void display() {
    print('Vehicle: $make $model');
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String make, String model, this.numberOfDoors) : super(make, model);

  @override
  void display() {
    super.display(); 
    print('Doors: $numberOfDoors');
  }
}

void main() {
  var myCar = Car('Honda', 'Civic', 4);
  myCar.display();
}

//Task2
class Animal {
  void makeSound() {
    print("Some generic animal sound");
  }
}

class Dog extends Animal {
  @override
  String makeSound() {
    return "Woof!";
  }
}

class Cat extends Animal {
  @override
  String makeSound() {
    return "Meow!";
  }
}

void main() {
  var dog = Dog();
  var cat = Cat();

  print("Dogs make sound like ${dog.makeSound()}"); 
  print("Cats make sound like ${cat.makeSound()}"); 
}


//Task3
class Shape {
  String color;
  Shape(this.color);
}

class Circle extends Shape {
  double radius;
  Circle(String color, this.radius) : super(color);
}

class Square extends Shape {
  double sideLength;
  Square(String color, this.sideLength) : super(color);
}

void main() {
  var circle = Circle("Red", 5.5);
  var square = Square("Blue", 4.4);

  print("Circle has Color: ${circle.color}, Radius: ${circle.radius}");
  print("Square has Color: ${square.color}, Side length: ${square.sideLength}");
}


//Task4
class Employee {
  String name;
  double baseSalary;
  Employee(this.name, this.baseSalary);
  
  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;
  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

void main() {
  var emp = Employee("Rosie", 3000);
  var mgr = Manager("Rosalee", 4500, 500);

  print("${emp.name} has salary ${emp.calculateSalary()}");
  print("${mgr.name} has salary ${mgr.calculateSalary()}");
}


//Task5
class LibraryItem {
  String title;
  int id;
  LibraryItem(this.title, this.id);

  String getDetails() {
    return "Title: $title, ID: $id";
  }
}

class Book extends LibraryItem {
  String author;
  Book(String title, int id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Book has Title: $title, Author: $author, ID: $id";
  }
}

class DVD extends LibraryItem {
  String director;
  DVD(String title, int id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "DVD has Title: $title, Director: $director, ID: $id";
  }
}

void main() {
  var book = Book("Choliqushi", 01, "Rashod Nuri Guntekin");
  var dvd = DVD("Inception", 02, "Christopher Nolan");

  print(book.getDetails());
  print(dvd.getDetails());
}

