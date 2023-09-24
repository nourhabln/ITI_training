/*
import 'dart:html';

import 'package:flutter/material.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  int _counter=0;
  List list=[];
  void num(){
    setState(() {
      int i;
      for(i=1;i<=list.length;i++)
      {
        print(list[i]);
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(child: Text("Calculator",style: TextStyle(color: Colors.cyanAccent,fontSize: 20,fontWeight: FontWeight.bold),)),
            actions: [IconButton(onPressed: (){print("ok");}, icon: Icon(Icons.settings,color: Colors.cyanAccent,))],
            leading: Icon(Icons.person_off,color: Colors.cyanAccent,),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,

              children:[
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Text(
                      "${list[index]}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    MaterialButton(onPressed: (){
                      list.add(1);
                      setState(() {

                      });
                    },
                      color: Colors.black,
                      child: Text("1",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),
                    MaterialButton(onPressed: (){ list.add(2);
                    setState(() {

                    });
                    },
                      color: Colors.black,
                      child: Text("2",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),
                    MaterialButton(onPressed: (){list.add(3); setState(() {

                    });},
                      color: Colors.black,
                      child: Text("3",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    MaterialButton(onPressed: (){list.add(4);setState(() {

                    });},
                      color: Colors.black,
                      child: Text("4",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                    MaterialButton(onPressed: (){list.add(5);setState(() {

                    });},
                      color: Colors.black,
                      child: Text("5",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),
                    MaterialButton(onPressed: (){list.add(6);setState(() {

                    });},
                      color: Colors.black,
                      child: Text("6",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    MaterialButton(onPressed: (){list.add(7);setState(() {
                    });},
                      color: Colors.black,
                      child: Text("7",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                    MaterialButton(onPressed: (){list.add(8);setState(() {

                    });},
                      color: Colors.black,
                      child: Text("8",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),
                    MaterialButton(onPressed: (){list.add(9);setState(() {

                    });},
                      color: Colors.black,
                      child: Text("9",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    MaterialButton(onPressed: (){list.add('+');setState(() {

                    });},
                      color: Colors.black,
                      child: Text("+",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                    MaterialButton(onPressed: (){list.add('-');setState(() {

                    });},
                      color: Colors.black,
                      child: Text("-",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),
                    MaterialButton(onPressed: (){list.add(0);setState(() {

                    });},
                      color: Colors.black,
                      child: Text("0",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    MaterialButton(onPressed: (){list.add('*');setState(() {

                    });},
                      color: Colors.black,
                      child: Text("*",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                    MaterialButton(onPressed: (){list.add('/');setState(() {

                    });},
                      color: Colors.black,
                      child: Text("/",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),
                    MaterialButton(onPressed: (){list.add('c');setState(() {

                    });},
                      color: Colors.black,
                      child: Text("c",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),
                    MaterialButton(onPressed: (){list.add('=');setState(() {

                    });},
                      color: Colors.black,
                      child: Text("=",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),


                MaterialButton(onPressed: (){list.add('R');setState(() {

                });},
                  color: Colors.black,
                  child: Text("R",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                      fontWeight: FontWeight.bold),),
                ),


              ],),
          )
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:untitled6/11-9/(11-9)task2/ptn1.dart';
import 'package:untitled6/11-9/(11-9)task2/text.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
 String res ="0";



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              'Calculator',
              style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                print('Ok');
              },
              icon: const Icon(Icons.settings, color: Colors.cyanAccent),
            )
          ],
          leading: const Icon(Icons.person_off, color: Colors.cyanAccent),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text(name: res,FontSize: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              ptn(Name: "1",
                event: (){ res=res+"1";

                setState(() {
                });}),
                ptn(Name: "2",
                    event: (){ res=res+"2";
                    setState(() {
                    });}),
                ptn(Name: "3", event: () {
                   res=res+"3";
                 setState(() {

                });
              },)   ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
ptn(Name: "4", event: () {
    res=res+"4";
    setState(() {

    });})       ,

                ptn(Name: "5", event: () {
                  res=res+"5";
                  setState(() {

                  });},),
                ptn(Name: '6', event: () {
                  res=res+"6";
                  setState(() {

                  });                    },)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ptn(Name: '7', event:  () {
                  res=res+"7";
                  setState(() {

                  });  },),
                ptn(Name: '8', event: () {
                  res=res+"8";
                  setState(() {

                  });                    },),
               ptn(Name: '9', event: () {
                 res=res+"9";
                 setState(() {

                 });                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ptn(Name: '+', event: () {
      res=res+"+";
      setState(() {

      });
      },),
                ptn(Name: '-', event:  () {
                  res=res+"-";
                  setState(() {

                  });
                },),
                ptn(Name: '0', event: () {
                  res=res+"0";
                  setState(() {

                  });
                },)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ptn(Name: '*', event: () {
                  res=res+"*";
                  setState(() {

                  });
                },),
               ptn(Name: '/', event: () {
                 res=res+"/";
                 setState(() {

                 });
               },),
                ptn(Name: 'c', event: () {
                  res=res+"c";
                  setState(() {

                  });
                },),
                ptn(Name: '=', event: () {
                  res=res+"=";
                  setState(() {

                  });
                },),
              ],
            ),
           ptn(Name: 'R', event: () {
             res=res+"R";
             setState(() {

             });
           },),
          ],
        ),
      ),
    );
  }
}