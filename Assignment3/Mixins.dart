//Task1
mixin Swimmer {
  void swim() {
    print('Moving through the water...');
  }
}

class Human with Swimmer {
  String name;
  Human(this.name);
}

class Fish with Swimmer {
  String species;
  Fish(this.species);
}

void main() {
  var person = Human('Alice');
  var fish = Fish('Tuna');

  person.swim();
  fish.swim();
}


//Task2
mixin Flyer {
  String fly() {  // well in this line, I could make it void that prints, but  preferred to use String that returns
    return "Taking off!";
  }
}

class Bird with Flyer {
  String species;
  Bird(this.species);
}

class Plane with Flyer {
  String model;
  Plane(this.model);
}

void main() {
  var bird = Bird("Eagle");
  var plane = Plane("Boeing 990");

  print("${bird.species}: ${bird.fly()}");
  print("${plane.model}:${bird.fly()}");
}


//Task3
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data");
  }
}

void main() {
  var service = DataService();
  service.fetchData();
}


//Task4
mixin Validator {
  bool isEmailValid(String email) {
    return email.endsWith("@gmail.com");
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  void validate(String email, String password) {
    print("Email: $email  ${isEmailValid(email) ? "Valid Gmail" : "Invalid (it must be Gmail)"}");
    print("Password: $password  ${isPasswordStrong(password) ? "Strong" : "Weak"}");
  }
}

void main() {
  var signup = UserSignup();

  signup.validate("user@gmail.com", "mypassword123"); 
  signup.validate("user@yahoo.com", "mypassword123"); 
}


//Task5
mixin Performer {
  void perform() {
    print("Performing on stage!");
  }
}

mixin Musician {
  void playInstrument() {
    print("Playing an instrument!");
  }
}

class Artist {
  String name;
  Artist(this.name);
  void introduce() {
    print("I am $name, an artist.");
  }
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

void main() {
  var dancer = Dancer("Jerry");
  dancer.introduce();
  dancer.perform();

  var guitarist = Guitarist("Tom");
  guitarist.introduce();
  guitarist.perform();
  guitarist.playInstrument();
}









