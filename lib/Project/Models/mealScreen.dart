import 'package:flutter/material.dart';
import 'package:untitled6/Project/Models/Country.dart';

import '../splashScreen.dart';
import 'Meal.dart';

class mealScreen extends StatelessWidget {
  late Meal meal;
  mealScreen(this.meal);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BON APPETIT",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic, ),),

        leading: CircleAvatar(
          backgroundColor: Colors.orange.shade500,
          backgroundImage: AssetImage('258.jpg'),
        ),
        backgroundColor: Colors.orange.shade500,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SplashScreen()));

            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('pack.jpg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      child: Image.asset(meal.images),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Center(
                    child: Container(
                      decoration:BoxDecoration(
                        color: Colors.orange.shade200,
                        borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))

                      ) ,
                      width: 500,
                    //  height: double.infinity,

                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              meal.name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Recipe",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 35,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                            Text(
                              meal.Description,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}