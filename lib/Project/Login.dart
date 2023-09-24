import 'package:flutter/material.dart';
import 'package:untitled6/Project/Home.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var login=TextFormField(
      controller: emailController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => emailController.text=newValue.toString(),
      decoration: InputDecoration(
          fillColor: Colors.orange,
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
        suffixIconColor: Colors.orangeAccent,
          fillColor: Colors.orange,
          labelText: ("enter password"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
    );
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,

      ),
      body: Center(
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.orangeAccent,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.black.withOpacity(0.5))
            )
          ),
          width: 370,
          height: 370,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset("258.jpg"),
              ),
              Padding(padding: EdgeInsets.only(top: 40,left: 138),
              child:
              Container(
                width: 100,
                decoration: ShapeDecoration(
                    color: Colors.orangeAccent,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                    )
                ),
                child: MaterialButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));

                },
                  child: Text("Login",style:
                  TextStyle(color: Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                    decoration: ShapeDecoration(
                        color: Colors.orangeAccent,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.black.withOpacity(0.5))
                        )
                    ),
                    child: login),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 260),
                child: Container(
                    decoration: ShapeDecoration(
                        color: Colors.orangeAccent,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.black.withOpacity(0.5))
                        )
                    ),
                    child: password),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 320,left: 50),
                child: Row(
                  children: [
                    Text("don't have an account? ",style: TextStyle(color: Colors.black87),),
                    MaterialButton(onPressed: (){},child: Text("sign up",style: TextStyle(color: Colors.orange))
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
