import 'dart:ffi';
import 'dart:io';
void main(){
  double numofsuger=0;
  double numoftea=0;
  double numofrice=0;


  bool repeat = true;
  do {
    print('what is order you need 1-suger , 2-tea , 3-rice');
    int order = int.parse(stdin.readLineSync()!);
    print('how much num of $order');
    double num = double.parse(stdin.readLineSync()!);


    switch(order) {
      case 1:
   numofsuger=numofsuger+num;

        break;
      case 2:

        numoftea=numoftea+num;

        break;
      case 3:

        numofrice=numofrice+num;
    }
    print('Do you want to perform another order? (y/n)');
    String op = stdin.readLineSync()!;
    if (op == 'n') {
      repeat = false;
    }
  }while (repeat);
  double resultSuger=22.25 *numofsuger;
  double resulttea=58.05 *numoftea;
  double resultrice=25.75*numofrice;
  print('total suger price =$resultSuger');
  print('total tea price =$resulttea');
  print('total rice price =$resultrice');
  double totalprice =resulttea+resultrice+resultSuger;
  print('total price is $totalprice');
  if (totalprice>=500){
    totalprice=totalprice-(totalprice*0.10);
    print("found disc$totalprice");
  }
  else {
    print ('not disc $totalprice');
  }
}