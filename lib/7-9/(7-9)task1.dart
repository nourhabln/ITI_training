import 'dart:ffi';
import 'dart:io';

void main() {
 int x=2;
 int y=3;
 int z=5;

 double re1;
 re1=((Fact(n: x)*Sum(n: y)*power(n: z, p: y))/((Fact(n: x)+Sum(n: z))*power(n: y, p: z)));
 print(re1);

 double re2;
 re2=((power(n: z, p: x)+power(n: z, p: y))/(Fact(n: x)* Sum(n: x)*Fact(n: y)*Sum(n: y)));
 print(re2);
}

int Fact({required int n}){
  int i;
  int fact = 1;
  for (i = n; i >= 1; i--) {
    fact *= i;
  }
  return(fact);
}
 int Sum({required int n}){

  int sum = 0;
   for (int i = n; i >= 1; i--) {
     sum += i;
   }
   return(sum);
 }

 double power({required int n,required int p}){
   double result = 1;
   for (int i = 1; i <= p; i++) {
     result *= n;
   }
   return (result);

 }