//TASK1
void main() {
  showGreeting(); 
}

void showGreeting() {
  print('Hello! Welcome to Dart programming.');
}

//TASK2
void main() {
  greetByName('Shaxnozaxon'); 
}

void greetByName(String name) {
  print('Hello, $name!');
}

//TASK3
void main() {
  int result = multiply(7, 6);
  print(result);
}

int multiply(int a, int b) {
  return a * b;
}


//TASK4
void main() {
  int value = -9;
  bool result = isPositive(value); 
  print('Is $value positive? $result');
}

bool isPositive(int number) {
  return number > 0;
}

//TASK5
void main() {
    double average=calculateAverage(10.5, 20.5);
    print('The average is $average');
  
}

double calculateAverage(double num1, num2) {
  return (num1+num2)/2;
}

//TASK6
void main() {
  int result = multiply(7, 6);
  print(result);
}
int multiply(int a, int b) => a * b;
