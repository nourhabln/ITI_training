import 'package:flutter/material.dart';
import '../home.dart';
import 'Sign up.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List list=[];
  final TextEditingController LoginController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var login=TextFormField(
      controller: LoginController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => LoginController.text=newValue.toString(),
      decoration: InputDecoration(
        fillColor: Colors.white60,
        labelText: ("enter email"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        )
      ),
    );
    var password=TextFormField(
      controller: passwordController,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (newValue) => passwordController.text=newValue.toString(),
      decoration: InputDecoration(
          fillColor: Colors.white60,
          labelText: ("enter password"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
    );


    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("LogIn",style:
          TextStyle(color: Colors.red.withOpacity(.8),fontSize: 30)),
          login,
          SizedBox(height: 10,),
          password,
          Container(
            decoration: BoxDecoration(color: Colors.white60,
              borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton(onPressed: (){
              SignUp(list);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              print(login.toString());},child: Text("Log in"),
            ),
          ),
          Row(
            children: [
              Text("don't have an account? ",style: TextStyle(color: Colors.white60),),
              MaterialButton(onPressed: (){},child: Text("sign up",style: TextStyle(color: Colors.blue))
              ),
            ],
          ),


        ],
      ),
    );
  }
}
