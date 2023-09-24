import 'package:flutter/material.dart';

import '../11-9/(11-9)task2/text.dart';
class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisAlignment:MainAxisAlignment.spaceAround ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for(int i=0;i<10;i++)
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          CircleAvatar(
                            backgroundImage: AssetImage("777.png"),
                          )
                        ],
                      )

                  ],
                ),
              ),
SizedBox(height: 15,),
              for(int i=0;i<=10;i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: ShapeDecoration(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.white),
                          )
                      ),
                      child:Stack(
                        children: [
                          Image.asset('777.png'),
                          CircleAvatar(backgroundColor: Colors.grey,),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.only(top: 90,left: 110),
                            child: Text("ahmed",style: TextStyle(color: Colors.white60,fontSize: 20),),
                          )
                        ],
                      )
                      ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: ShapeDecoration(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.white),
                          )
                      ),
                      child:Stack(
                        children: [
                          Image.asset('1234.jpg'),
                          CircleAvatar(backgroundColor: Colors.grey,),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.only(top: 90,left: 110),
                            child: Text("ahmed",style: TextStyle(color: Colors.white60,fontSize: 20),),
                          )
                        ],
                      )
                      ,
                    ),
                  ),
                ],
              ),
            ],
          )
      ],),
    );
  }
}
