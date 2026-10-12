import 'dart:io';
void main(){
  print("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  print("Numbers from 1 to $n:");
  for(int i =1; i<=n; i++){
    if(i%3==0 && i%5==0){
      print("FizzBuzz");
    }
    else if(i%3==0){
      print("Fizz");
    }
    else if(i%5==0){
      print("Buzz");
    }
    else{
      print(i);
    }
  }
}