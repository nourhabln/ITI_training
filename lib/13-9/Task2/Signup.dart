import 'package:flutter/material.dart';
import 'package:untitled6/11-9/(11-9)task2/text.dart';

import 'Ssighn.dart';
class Signup extends StatefulWidget {
  // const Signup({Key? key}) : super(key: key);


  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController pass  =TextEditingController();
  TextEditingController UserName = TextEditingController();
  TextEditingController conPass =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up '),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  text(name: 'UserName'),
                  TextFormField(
                    controller: UserName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'UserName',
                      hintText: 'UserName',
                      prefixIcon: Icon(Icons.account_circle_outlined),
                    ),
                  ),
                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  text(name: 'email'),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'email',
                      hintText: 'mmmmmm',
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  text(name: 'password'),
                  TextFormField(
                    controller: pass,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'password',
                      hintText: 'password',
                      prefixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ],
              ),
            ),

            MaterialButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (BuildContext){
                    return AlertDialog(
                      content: Text('sign up successfully'),
                      actions: [
                        MaterialButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ASignup(email: email.text,)));
                        },
                            child:text(name: 'ok')
                        )
                      ],
                    );
                  },
                );


                print(email.text);
                print(pass.text);

                setState((){

                });
              },
              child: Text('Signup'),
              color: Colors.blue,
            ),


          ],
        ),
      ),
    );
  }
}