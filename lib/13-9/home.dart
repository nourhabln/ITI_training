import 'package:flutter/material.dart';

import 'Chat.dart';
import 'Person.dart';
import 'Story.dart';
import 'call.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white)
          ),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar
                  (backgroundImage: AssetImage('777.png')),
                title: Text("Nour",
                    style: TextStyle(color: Colors.white.withOpacity(.8))),
                trailing: Icon(Icons.settings,color: Colors.white60,),

              ),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.white),
                    )
                  ),
                  child: Icon(Icons.chat_bubble,color: Colors.white,),

                ),
                title: Text("chats",style: TextStyle(
                    color: Colors.white.withOpacity(.8),fontSize: 20)),


              ),
              ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.white),
              )
          ),
          child: Icon(Icons.home_filled,color: Colors.white,),

        ),
        title: Text("MarketPlace",style: TextStyle(
            color: Colors.white.withOpacity(.8),fontSize: 20)),),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white),
                      )
                  ),
                  child: Icon(Icons.chat,color: Colors.white,),

                ),
                title: Text("freind request",style: TextStyle(
                    color: Colors.white.withOpacity(.8),fontSize: 20)),),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white),
                      )
                  ),
                  child: Icon(Icons.archive_outlined,color: Colors.white,),

                ),
                title: Text("archive",style: TextStyle(
                    color: Colors.white.withOpacity(.8),fontSize: 20)),),


            ],
          ),
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(

          title:Text( "massenger"),
          backgroundColor: Colors.black,
          actions: [
              Row(
                children: [
                  CircleAvatar(backgroundColor: Colors.grey.withOpacity(0.7),child:Icon(Icons.linked_camera_outlined,color: Colors.white,) ,),

                  SizedBox(width: 10,),
                  CircleAvatar(backgroundColor: Colors.grey.withOpacity(0.7),
                    child:Icon(Icons.search,color: Colors.white,) ,),

                ],
              ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.chat_bubble),text: "chat"),
              Tab(icon: Icon(Icons.call),text: "call"),
              Tab(icon: Icon(Icons.group),text: "persons"),
              Tab(icon: Icon(Icons.history_outlined),text: "Story"),
            ],
          ),

        ),
        body: TabBarView(
          children: [
            Chat(),
            Call(),
            Person(),
            Story(),
          ],
        ),

      ),
    );
  }
}
