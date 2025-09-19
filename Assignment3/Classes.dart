//Task1
class Car {
String make ; 
String model ;
int year ;

 // Constructor
 Car ( this.make , this.model , this.year ) ;

 // Method to display car information
 void displayInfo () {
 print ("Car Information : $year $make $model" ) ;
 }
}

 void main () {
 // Create an instance of the Car class
 var myCar = Car ("Toyota ", "Corolla", 2022) ;

// Call the method to display its info on the console
 myCar . displayInfo () ;
}

//Task2
class Book{
    String author;
    String tittle;
    int numOfPages;
    
    Book(this.tittle, this.author, this.numOfPages);
    
    void displayInfo(){
        print("Book information: $tittle, $author, $numOfPages pages");
    }
}

void main(){
    var book=Book("Who will cry when you die?", "Robin Sharma", 230);
    book.displayInfo();
}

//Task3
class Student{
    String name;
    int age;
    List<double>grades;
    
    Student(this.name, this.age, this.grades);
    
    double calculateAverageGrade(){
        if(grades.isEmpty) return 0.0;
        double sum=0.0;
        for(var grade in grades){
            sum+= grade;
        }
        return sum/grades.length;
    }
}
void main(){
    var student=Student("Gulasal", 19, [70, 80, 90, 100]);
    print("Student information: ${student.name}, ${student.age} years old with average grade of ${student.calculateAverageGrade()}.");

}

//Task4
class BankAccount{
    String accountHolderName;
    int accountNumber;
    double balance;
    BankAccount(this.accountHolderName, this.accountNumber, this.balance);
    
    void deposit(double amount){
        if(amount<=0){
            print("Please, make a deposit only if you have money, means amount should be more than zero!");
        }
        else{
            balance+=amount;
        }
        
    }
    void withdraw(double amount){
        if(amount<=0){
            print("Are you really going to withdraw money, why non-positive value?");
        }else{
            balance-=amount;
        }
        
    }
    
    void displayInfo(){
        print("Account information is below:");
        print("Account Holder Name:$accountHolderName");
        print("Account number:$accountNumber");
        print("Account balance: $balance");
    }
}
void main(){
    var account=BankAccount("Rosalee", 986012345678, 1200000 );
    account.displayInfo();
    account.deposit(300000);
    account.withdraw(-500000);
    account.deposit(-500000);
    account.deposit(-100000);
    account.displayInfo();
}

//Task5
class Rectangle{
    double width;
    double height;
     Rectangle(this.width, this.height);
     double get area=>width*height;
     double get parameter=>2*(width+height);
}
void main(){
    var rectangle=Rectangle(15, 30);
    print("Rectangle has area=${rectangle.area}, and parameter=${rectangle.parameter}");
}


