import 'package:flutter/material.dart';
import 'package:untitled6/13-9/Task2/Login.dart';
class SignUp extends StatelessWidget {
  List l=[];
  SignUp(this.l);

  @override
  final TextEditingController nameController=TextEditingController();
  final TextEditingController LoginController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var name=TextFormField(
      controller: nameController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => nameController.text=newValue.toString(),
      decoration: InputDecoration(
          fillColor: Colors.white60,
          labelText: ("enter name"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
    );
    var email=TextFormField(
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
          Text("Sign up",style:
          TextStyle(color: Colors.red.withOpacity(.8),fontSize: 30)),
          SizedBox(height: 10,),
           name,
          SizedBox(height: 10,),
          email,
          SizedBox(height: 10,),
          password,
          Container(
            decoration: BoxDecoration(color: Colors.white60,
            borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

              print(email.toString());
              print(name.toString());
              l.add({'email':LoginController
                ,'password' :passwordController,'name':nameController});




            },child: Text("Sign up"),
            ),
          ),
          Row(
            children: [
              Text("do have an account? ",style: TextStyle(color: Colors.white60),),
              MaterialButton(onPressed: (){},child: Text("Log in",style: TextStyle(color: Colors.blue))
                ),
            ],
          ),



        ],
      ),
    );
  }
}
