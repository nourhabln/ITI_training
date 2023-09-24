import 'dart:io';
void main(){
  List n =[];
  bool repeat = true;
  bool search;
  do {
    print('\n what you need \n 1-add value \n 2-remove value \n 3-update value \n 4-show value \n 5-search value \n');
    int need = int.parse(stdin.readLineSync()!);

    switch(need) {
      case 1:
        print("enter num of value in list");
        int numofvalue = int.parse(stdin.readLineSync()!);
        for(int i=1;i<=numofvalue;i++){
          print("enter num of value in list num$i");
          int numbers = int.parse(stdin.readLineSync()!);
          n.add(numbers);
        }
        print("done");
        break;
      case 2:
        print('which you need remove \n 1-remove by index \n 2-remove by value ');
        int rm = int.parse(stdin.readLineSync()!);
        switch(rm){
          case 1:
            print('what is index you needed to remove ');
            int index = int.parse(stdin.readLineSync()!);

              if(index <= n.length)
              {
                print("index is found ");
                n.removeAt(index);
                print("done");
                print(n);
              }
              else
                print("index not found");
              break;
          case 2:
            print('what is value you needed to remove ');
            int value = int.parse(stdin.readLineSync()!);
            search=n.contains(value);
            if (search == true){
              n.remove(value);
              print("done");
            }
            else
              print("not found");
             break;
        }
        break;
      case 3:
        print('what is old value you needed to update ');
        int oldvalue = int.parse(stdin.readLineSync()!);
        search=n.contains(oldvalue);
        if (search == true){
          print('what is new value you needed to update ');
          int newvalue = int.parse(stdin.readLineSync()!);
          int place=n.indexOf(oldvalue);
          n[place]=newvalue;
          print("done");
        }
        else
          print("not found");
        break;
      case 4:
        n.forEach((element) { print(element); });
        break;
      case 5:
        print('which you need search \n 1-search found or no found(value)  \n 2-search by index ');
        int rm = int.parse(stdin.readLineSync()!);
        switch(rm){
          case 1:
            print('what is value you needed to search ');
            int value = int.parse(stdin.readLineSync()!);
            search=n.contains(value);
            if (search == true){
              print("yes this is found ");
              print("done");
            }
            else
              print("not found");
            break;
          case 2:
            print('what is index you needed to search ');
            int value = int.parse(stdin.readLineSync()!);

            search=n.contains(value);
            if (search == true){
              int x=n.indexOf(value);

              print("yes ,this index is found $x ");
              print("done");
            }
            else
              print("not found");
            break;
        }



    }
    print('Do you want to perform another order? (y/n)');
    String op = stdin.readLineSync()!;
    if (op == 'n') {
      repeat = false;
    }
  }while (repeat);

}
