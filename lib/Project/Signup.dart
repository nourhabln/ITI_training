import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController nameController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController phoneController=TextEditingController();

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
    var name=TextFormField(
      controller: nameController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => nameController.text=newValue.toString(),
      decoration: InputDecoration(
          suffixIconColor: Colors.orangeAccent,
          fillColor: Colors.orange,
          labelText: ("enter name"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
    );
    var phone=TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneController.text=newValue.toString(),
      decoration: InputDecoration(
          suffixIconColor: Colors.orangeAccent,
          fillColor: Colors.orange,
          labelText: ("enter phone"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
    );
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,

      ),
      body:
      /*
      Stack(

       children: [
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children :[
               Image.asset("pack.jpg"),
               Image.asset("pack.jpg")],),
         ),
*/

      Center(
        child: Container(
          decoration: ShapeDecoration(
              color: Colors.orangeAccent,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.5))
              )
          ),
          width: 470,
          height: 470,
          child: Stack(
            children: [
             Padding(
                padding: const EdgeInsets.all(2.0),
                child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(9.5),
                    child: Row(children:[ Image.asset("258.jpg",),Image.asset("pack.jpg")
                    ]),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 350,left: 158),
                  child:
                  Container(
                    width: 120,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)
                        )
                    ),
                    child: MaterialButton(onPressed: (){},
                      child: Text("Sign up",style:
                      TextStyle(color: Colors.orange,fontSize: 30,fontStyle: FontStyle.italic),),
                   ),
                  )),

              Padding(
                padding: const EdgeInsets.only(top: 80,left: 15),
                child: Container(
                    width: 440,
                    decoration: ShapeDecoration(
                        color: Colors.white54,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.black.withOpacity(0.5))
                        )
                    ),
                    child: name),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200,left: 15),
                child: Container(
                  width: 440,
                    decoration: ShapeDecoration(
                        color: Colors.white54,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.black.withOpacity(0.5))
                        )
                    ),
                    child: login),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140,left: 15),
                child: Container(
                    width: 440,
                    decoration: ShapeDecoration(
                        color: Colors.white54,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.black.withOpacity(0.5))
                        )
                    ),
                    child: password),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 260,left: 15),
                child: Container(
                  width: 440,
                    decoration: ShapeDecoration(
                        color: Colors.white54,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.black.withOpacity(0.5))
                        )
                    ),
                    child: phone),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 400,left: 70),
                child: Row(
                  children: [
                    Text("Do have an account? ",style: TextStyle(color: Colors.black87),),
                    MaterialButton(onPressed: (){},child: Text("Login"
                        ,style: TextStyle(color: Colors.orange))
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
