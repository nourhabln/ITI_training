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

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _counter = 0;
  List<String> list = [];

  void num(int number) {
    setState(() {
      list.add(number.toString());
    });
  }

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
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text(
                    'Index $index - ${list[index]}',

                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      num(1);
                    },
                    color: Colors.black,
                    child: const Text(
                      '1',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      num(2);
                    },
                    color: Colors.black,
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      num(3);
                    },
                    color: Colors.black,
                    child: const Text(
                      '3',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      num(4);
                    },
                    color: Colors.black,
                    child: const Text(
                      '4',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      num(5);
                    },
                    color: Colors.black,
                    child: const Text(
                      '5',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      num(6);
                    },
                    color: Colors.black,
                    child: const Text(
                      '6',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      num(7);
                    },
                    color: Colors.black,
                    child: const Text(
                      '7',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      num(8);
                    },
                    color: Colors.black,
                    child: const Text(
                      '8',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      num(9);
                    },
                    color: Colors.black,
                    child: const Text(
                      '9',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      list.add('+');
                      setState(() {});
                    },
                    color: Colors.black,
                    child: const Text(
                      '+',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      list.add('-');
                      setState(() {});
                    },
                    color: Colors.black,
                    child: const Text(
                      '-',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      list.add('0');
                      setState(() {});
                    },
                    color: Colors.black,
                    child: const Text(
                      '0',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      list.add('*');
                      setState(() {});
                    },
                    color: Colors.black,
                    child: const Text(
                      '*',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      list.add('/');
                      setState(() {});
                    },
                    color: Colors.black,
                    child: const Text(
                      '/',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      list.add('c');
                      setState(() {});
                    },
                    color: Colors.black,
                    child: const Text(
                      'c',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      list.add('=');
                      setState(() {});
                    },
                    color: Colors.black,
                    child: const Text(
                      '=',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  list.add('R');
                  setState(() {});
                },
                color: Colors.black,
                child: const Text(
                  'R',
                  style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}