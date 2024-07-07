//task1
class book{
  String? title;
  String? author;
  num? numpage;

  book(this.title, this.author, this.numpage);

  void displayinfo() {
      print(
          "the book's title is $title, the auther is $author and the number of pages is $num"
      );
  }
}



//task2
class novel extends book{
  String? genre;
  novel(super.title, super.author, super.numbage, this.genre);
  @override
  void displayinfo(){
      super.displayinfo();
      print("the genre is $genre");

  }
}




//task 3
abstract class shape {
  double area();
}

class circle extends shape {
  double? R;

  circle(this.R);
  @override

  double area(){
    return 22 / 7 * R! * R!;
   }
  }

class rectangle extends shape{

  double? width;
  double? height;

  rectangle(this.width, this.height);

  @override
  double area(){
    return width! * height! ;
  }

  void displayarea(){
    print("area of rectangle =${area()}");
  } 
}



//task4
abstract class Serializable {
  String toJson();
}

class user implements Serializable {
 String? name;
 int? age;

 user(this.name, this.age);

 @override
 String toJson(){
  return ("User name: $name, User age: $age") ;

 }
}

class product implements Serializable {
  String? name;
  double? price;

  product(this.name, this.price);

  @override
toJson(){
  return ("Pruduct name: $name, Product price: $price");
 }
}




//task5
class BankAccount {

double _balance; 
BankAccount(this._balance);

void deposit(double amount) {

  _balance += amount;
}

void withdraw(double amount) {
if (amount < _balance) {
    throw NegativeBalanceException ('Amount must be Positive.');
}
 if (amount> _balance) {
throw NoEnoughMoneyException('No enough money.');
}

_balance -= amount;
}

void DisplayBalance() {
print("Balance is: $_balance");
  }
}

class NoEnoughMoneyException implements Exception {
final String message1;
NoEnoughMoneyException(this.message1);
}

class NegativeBalanceException implements Exception {
final String message2;
NegativeBalanceException(this.message2);
}