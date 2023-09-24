import 'dart:io';

void main (){
  int i;
  int n =4;
  for (i=0;i<n;i++){
    for(int j=0;j<n-i-1;j++){
      stdout.write (' ');
    }
    for (int k = 0; k < 2 * i + 1; k++) {
      stdout.write('*');
    }
    print(' ');
  }



}

/*
void main(){
  int i;
  int j;
  for (i=1;i<=4;i++){
    for(j=1;j<=i * 2 - 1;j++){
      stdout.write ('*');
    }
    print(' ');

  }
}
*/

/*
  void main(){
    int i;
    int j;
    for (i=7;i>0;i--){
      for(j=i;j>0;j--){
        stdout.write ('*');
      }
      print(' ');

    }
  }

 */






