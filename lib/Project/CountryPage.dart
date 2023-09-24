import 'package:flutter/material.dart';
import 'package:untitled6/Project/Models/Country.dart';
import 'package:untitled6/Project/Models/Meal.dart';
import 'package:untitled6/Project/splashScreen.dart';

import 'Models/mealScreen.dart';

class CountryPage extends StatelessWidget {
 late Country country;
 CountryPage(this.country);
  @override
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
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('pack.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200, //color: Colors.deepOrange[100],
                    child: Column(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage(country.url),radius: 70),
                        Center(child: Text(country.name)),
                      ],
                    ),
                  ),
                  for (int i = 0; i < country.meal.length; i++)
                    InkWell(
                      onTap:()

                        {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return mealScreen(country.meal[i]);
                          }));
                        },

                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(country.meal[i].images),
                                radius: 50,
                              ),
                              SizedBox(width: 20),
                              Text(country.meal[i].name),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
