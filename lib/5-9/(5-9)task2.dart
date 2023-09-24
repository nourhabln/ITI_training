import 'dart:io';
void main (){
  int? sum =0;
  List<dynamic> L=[];

  print("enter num of value in list");
  int numofvalue = int.parse(stdin.readLineSync()!);
  for(int i=1;i<=numofvalue;i++){
    print("enter num of value in list num$i");
    int numbers = int.parse(stdin.readLineSync()!);
    L.add(numbers);
  }
print(L);
  int max=L[0];
  int min=L[0];
  double avg =0 ;
  for (int k=0;k<numofvalue;k++){
    print(L[k]);
       sum= (sum! + L[k]) as int?;
       avg= (sum! / numofvalue);
       if (max<=L[k]){
         max =L[k];
       }
       if (min>=L[k]){
         min=L[k];
       }
  }
  print("sum is $sum");
  print("avg is $avg");
  print("max is $max" );
  print("min is $min");


}