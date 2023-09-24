import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/11-9/CounterLogic.dart';

import 'CounterState.dart';



class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)
      {
        return CounterLogic();
        },
      child: BlocConsumer<CounterLogic,CounterState>(
        listener: (context,state){},
        builder:(context,state){
          CounterLogic obj=BlocProvider.of(context);
          return   Scaffold(
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
                    Text("counter",
                        style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    Text("${obj.counter}", style: TextStyle(color: Colors.black,fontSize: 30,
                        fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        MaterialButton(onPressed: obj.Plss,
                          color: Colors.black,
                          child: Text("+",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                              fontWeight: FontWeight.bold),),
                        ),

                        MaterialButton(onPressed: obj.neg,
                          color: Colors.black,
                          child: Text("-",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                              fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    MaterialButton(onPressed: obj.rest,
                      color: Colors.black,
                      child: Text("R",style: TextStyle(color: Colors.cyanAccent,fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),


                  ],),
              )
          );
        } ,
    )





    );

  }
}
