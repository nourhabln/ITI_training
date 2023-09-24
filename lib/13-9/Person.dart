import 'package:flutter/material.dart';

import '../11-9/(11-9)task2/text.dart';
class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  List l=[{'name':"ahmed",'status':"friend",'color':"green"},
    {'name':"moh",'status':"not friend",'color':"yello"},
    {'name':"ali",'status':"friend",'color':"green"},
    {'name':"ibrahem",'status':"not friend",'color':"red"},
    {'name':"moh",'status':"friend",'color':"green"},
    {'name':"moh",'status':"friend",'color':"green"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i=0;i<l.length;i++)
          if(l[i]['status']=="friend")
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Card(
                color: Colors.black45,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.white)
                ),

                child: ListTile(
                  title: text(name: "${l[i]['name']}",FontSize: 20,color: Colors.white.withOpacity(.8)),
                  subtitle: Text("${l[i]['status']}",
                      style: TextStyle(color: Colors.greenAccent.withOpacity(.8))),
                  leading: CircleAvatar(backgroundImage: AssetImage("1234.jpg"),),
                  trailing: Icon(Icons.chat_bubble,color:Colors.white.withOpacity(.8) ,)
                ),
              ),
            )
          else
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Card(
                color: Colors.black45,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.white)
                ),

                child: ListTile(
                  title: text(name: "${l[i]['name']}",FontSize: 20,color: Colors.white.withOpacity(.8)),
                  subtitle: Text("${l[i]['status']}",
                      style: TextStyle(color: Colors.green.withOpacity(.8))),
                  leading: CircleAvatar(backgroundImage: AssetImage("1234.jpg"),),
                  trailing: Icon(Icons.add_circle_outlined,color: Colors.white60,semanticLabel: "add",)
                ),
              ),
            )

      ],
    );
  }
}
