
import 'dart:io';
void main (){
  int? sum = 0;
  Map <int, int> m  = {};

  print("enter num of value in map");
  int numofvalue = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= numofvalue; i++) {
    print("enter key in map num$i");
    int keys = int.parse(stdin.readLineSync()!);
    print("enter value in map num$i");
    m[keys]=int.parse(stdin.readLineSync()!);

  }
  print(m);
  int max=m.values.elementAt(0);
  int min=m.values.elementAt(0);
  double avg =0 ;

  m.forEach((key, value) {
    print(value);
    sum =sum! + value;
    avg= (sum! / numofvalue);
    if (max<=value){
      max =value;
    }
    if (min>=value){
      min=value;
    }

  });

  print("sum is $sum");
  print("avg is $avg");
  print("max is $max" );
  print("min is $min");


}



/*
import 'dart:io';

void main() {
  int sum = 0;
  Map<int, dynamic> m = {};

  print("Enter the number of values in the map:");
  int numofvalue = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numofvalue; i++) {
    print("Enter key for map num$i:");
    int keys = int.parse(stdin.readLineSync()!);
    print("Enter value for map num$i:");
    m[keys] = stdin.readLineSync()!;
  }

  print(m);

  int max = m.entries.first.key;
  int min = m.entries.first.key;
  double avg = 0;

  for (String value in m.values) {
    print(value);
    sum += int.parse(value);
    avg = sum / numofvalue;

    if (max < int.parse(value)) {
      max = int.parse(value);
    }

    if (min > int.parse(value)) {
      min = int.parse(value);
    }
  }

  print("Sum is $sum");
  print("Average is $avg");
  print("Max is $max");
  print("Min is $min");
}

 */