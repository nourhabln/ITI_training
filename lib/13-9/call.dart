import 'package:flutter/material.dart';

import '../11-9/(11-9)task2/text.dart';
class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  List l=[{'name':"ahmed",'status':"missed",'color':"red"},
    {'name':"moh",'status':"reseved",'color':"green"},
    {'name':"ali",'status':"reseved",'color':"green"},
    {'name':"ibrahem",'status':"missed",'color':"red"},
    {'name':"moh",'status':"reseved",'color':"green"},
    {'name':"moh",'status':"reseved",'color':"green"},
  ];

@override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i=0;i<l.length;i++)
          if(l[i]['status']=="missed")
         Padding(
            padding: EdgeInsets.only(top: 5),
            child: Card(
              color: Colors.black45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.white)
              ),

              child: ListTile(
                title: text(name: "${l[i]['name']}",FontSize: 20,color: Colors.white.withOpacity(.8)),
                subtitle: Text("${l[i]['status']}",
                    style: TextStyle(color: Colors.red.withOpacity(.8))),
                leading: CircleAvatar(backgroundImage: AssetImage("1234.jpg"),),
                trailing: Text("12:50",style: TextStyle(color: Colors.white.withOpacity(.8))),
              ),
            ),
          )
        else
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Card(
                color: Colors.black45,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white)
                ),

                child: ListTile(
                  title: text(name: "${l[i]['name']}",FontSize: 20,color: Colors.white.withOpacity(.8)),
                  subtitle: Text("${l[i]['status']}",
                      style: TextStyle(color: Colors.green.withOpacity(.8))),
                  leading: CircleAvatar(backgroundImage: AssetImage("1234.jpg"),),
                  trailing:

                  Text("12:50",style: TextStyle(color: Colors.white.withOpacity(.8))),
                ),
              ),
            )

      ],
    );
  }
}
