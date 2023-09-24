import 'package:flutter/material.dart';
import '../Signup.dart';
import 'Screen.dart';
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // const Login({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  TextEditingController pass  =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login '),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'email',
                    hintText: 'mmmmmm',
                    prefixIcon: Icon(Icons.account_balance),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
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
              ),

              MaterialButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Screen()));
                  print(email.text);
                  print(pass.text);
                  email.text='';
                  pass.text='';

                  setState((){});
                },
                child: Text('login'),
                color: Colors.blue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('on account'),
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Signup()));
                      },

                      child:Text('click here')
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }


}