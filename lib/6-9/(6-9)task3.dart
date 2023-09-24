import 'dart:io';
void main () {
  List<int> list = [];
  getList(list);
  showList(list);
  int x=sumList(list);
print(" sum is $x    ");
 print("avg is ${AvgList(list, x)}");
print("max and min is ${ max_min(list)}");
 ;
}

void getList(List<int> L) {
  print("enter num of value in list");
  int numofvalue = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= numofvalue; i++) {
    print("enter num of value in list num$i");
    int numbers = int.parse(stdin.readLineSync()!);
    L.add(numbers);
  }
}
void showList(List L){
  print(L);
}
int sumList(List<int> L) {
  int sum = 0;
  for (int k = 0; k < L.length; k++) {
    sum = sum + L[k];
  }
  return sum;
}

double AvgList(List<int> L,int sum){

  return  (sum / L.length);
}
Map max_min(List<int>L){
  int min=L[0];
  int max=L[0];
  for (int k=0;k<L.length;k++) {
    if (max <= L[k]) {
      max = L[k];
    }
    if (min >= L[k]) {
      min = L[k];
    }
  }

  return {"max": max,"min":min};
}