import 'package:flutter/material.dart';

import '../11-9/(11-9)task2/text.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}
class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i=0;i<10;i++)
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Card(
            color: Colors.black45,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50),
             side: BorderSide(color: Colors.white)
           ),

            child: ListTile(
              title: text(name: "ahmed",FontSize: 20,color: Colors.white.withOpacity(.8)),
              subtitle: Text("wellcom",
                  style: TextStyle(color: Colors.white.withOpacity(.8))),
              leading: CircleAvatar(backgroundImage: AssetImage("1234.jpg"),),
              trailing: Text("12:50",style: TextStyle(color: Colors.white.withOpacity(.8))),
            ),
          ),
        )

      ],
    );
  }
}
