import 'package:flutter/material.dart';

Widget ptn({required String Name, required Null Function() event}
)=>

    AppBar(
      backgroundColor: Colors.orangeAccent,
      title: Text("BON APPETIT",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic, ),),
      actions: [
        Padding(
            padding: EdgeInsets.only(
                top: 7,bottom: 7,right: 5
            ),
            child:
            Container(
              width: 70,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white54,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey),),),
              child:MaterialButton(onPressed: (){},child: Text("log out"),)
              ,
            )

        ),
      ],
      leading:CircleAvatar( backgroundImage: AssetImage("258.jpg"),

      ) ,
    );




