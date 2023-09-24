import 'dart:io';
void main(){
  Map <String,dynamic> m ={};
  bool repeat = true;
  bool search;
  do {
    print('\n what you need \n 1-add value \n 2-remove value \n 3-update value \n 4-show value \n 5-search value \n');
    int need = int.parse(stdin.readLineSync()!);

    switch(need) {
      case 1:
        print("enter num of value in map");
        dynamic numofvalue = int.parse(stdin.readLineSync()!);
        for (int i = 1; i <= numofvalue; i++) {
          print("enter key in map num$i");
          String keys = stdin.readLineSync()!;
          print("enter value in map num$i");
          m[keys]=stdin.readLineSync()!;

        }
        print(m);
        print("done");
        break;
      case 2:
        print('which you need remove \n 1-remove by key \n 2-remove by value ');
        int rm = int.parse(stdin.readLineSync()!);
        switch(rm){
          case 1:
            print('what is key you needed to remove ');
            String key = stdin.readLineSync()!;

            if (m.containsKey(key)) {
              m.remove(key);
              print("Done");
              print(m);
            } else {
              print("Key not found");
            }
            break;
          case 2:
            print('what is value you needed to remove ');
            dynamic value = stdin.readLineSync()!;
            search = m.containsValue(value);
            if (search) {
              List<String> keys = [];

              m.forEach((k, v) {
                if (v == value) {
                  keys.add(k);
                }
              });

              for (String key in keys) {
                m.remove(key);
              }

              print("Done");
            } else {
              print("Value not found");
            }
            break;
        }
        break;
      case 3:
        print('what is old value you needed to update ');
        dynamic oldvalue = stdin.readLineSync()!;
        search=m.containsValue(oldvalue);
        if (search == true){
          print('what is new value you needed to update ');
          dynamic newvalue = stdin.readLineSync()!;
          String keyToUpdate = '';

          m.forEach((k, v) {
            if (v == oldvalue) {
              keyToUpdate = k;
            }
          });

          m[keyToUpdate] = newvalue;
          print("Done");
        } else {
          print("Value not found");
        }
        break;

      case 4:
        m.forEach((key, value) {
          print('$key: $value');

        });
        break;
      case 5:
        print('which you need search \n 1-search found or no found(value)  \n 2-search by key ');
        int rm = int.parse(stdin.readLineSync()!);
        switch(rm){
          case 1:
            print('what is value you needed to search ');
            dynamic value = stdin.readLineSync()!;
            search=m.containsValue(value);
            if (search == true){
              print("yes this is found ");
              print("done");
            }
            else
              print("not found");
            break;
          case 2:
            print('what is key you needed to search ');
            String value = stdin.readLineSync()!;

            search=m.containsKey(value);
            if (search == true){

              List<String> keys = [];

              m.forEach((k, v) {
                if (v == value) {
                  keys.add(k);
                }
              });

              for (String key in keys) {
                print("yes ,this index is found $key ");
              }

              print("yes ,this index is found ");
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
