//Task1
enum DaysOfWeek {
 monday ,
 tuesday ,
 wednesday ,
 thursday ,
 friday ,
 saturday ,
 sunday
 }

 void checkDay ( DaysOfWeek day ) {
 switch ( day ) {
 case DaysOfWeek . saturday :
 case DaysOfWeek . sunday :
 print ("$day is on the weekend !") ;
 break ;
 default :
 print ("$day is a weekday.") ;
 }
 }

 void main () {
 checkDay ( DaysOfWeek.monday ) ;
 checkDay ( DaysOfWeek.saturday ) ;
 }

//Task2
enum OrderStatus{
    pending,
    processing,
    shipped,
    delivered,
    canselled
}
void main(){
    OrderStatus status=OrderStatus.delivered;
    print("Order status: $status");
}

//Task3
enum TrafficLight{
    red,
    yellow,
    green
}
String getAction(TrafficLight light){
    switch(light){
        case TrafficLight.red:
        return "Stop";
        case TrafficLight.yellow:
        return "Caution";
        case TrafficLight.green:
        return "Go";
    }
}
void main(){
    print("Red => Action: ${getAction(TrafficLight.red)}");
    print("Yellow => Action: ${getAction(TrafficLight.yellow)}");
    print("Green => Action: ${getAction(TrafficLight.green)}");
}

//Task4
enum UserRole{
    admin, 
    editor,
    guest
}
class User{
    String name;
    UserRole role;
    User(this.name, this.role);
     bool hasEditPermission(){
        return role==UserRole.admin || role==UserRole.editor;
     }
}
void main(){
    var user1=User("Rosalee", UserRole.admin);
    var user2=User("Rosie", UserRole.editor);
    var user3=User("Sarah", UserRole.guest);
    
    print("${user1.name} is ${user1.role.toString().split('.').last} Has permission? ${user1.hasEditPermission()}");
    print("${user2.name} is ${user3.role.toString().split('.').last} Has permission? ${user2.hasEditPermission()}");
    print("${user3.name} is ${user3.role.toString().split('.').last} Has permission? ${user3.hasEditPermission()}");
}

//Task5
enum TrafficLight {
  red,
  yellow,
  green;

  int get durationInSeconds {
    switch (this) {
      case TrafficLight.red:
        return 30;
      case TrafficLight.yellow:
        return 5;
      case TrafficLight.green:
        return 45;
    }
  }
}

void main() {
  for (var light in TrafficLight.values) {
    print("Light is ${light.name}, so duration is ${light.durationInSeconds} seconds.");
  }
}
