import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Log/login.dart';

//import '../Project/Login.dart';

class onBoardingScreen extends StatefulWidget {
  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
final controller = PageController();
bool isLastPage = false;

@override
void dispose(){
  controller.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (index){
            setState(()=> isLastPage = index== 2);
          },
controller: controller,
          children: [
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                    'onboarding1.png',
                fit:BoxFit.cover
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, right: 20, left:20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                      child: Text(
                          'Embark on a global culinary adventure with our app! Explore a diverse collection of authentic recipes from around the world',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      )

                  ),
                )
              ],
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                    'onboarding2.png',
                    fit:BoxFit.cover
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, right: 20, left:20),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
'From savory dishes to delectable desserts, discover the flavors of different cultures and expand your cooking skills.',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      )

                  ),
                )
              ],
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                    'onboarding3.png',
                    fit:BoxFit.cover
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, right: 20, left:20),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                      'Get ready to create unforgettable meals and explore new tastes from the comfort of your own kitchen. Let the journey begin!'
                      , style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      )

                  ),
                )
              ],
            ),
          ],

        ),
      ),
      bottomSheet:
            isLastPage
        ? TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.orange.shade500,
                minimumSize:  Size.fromHeight(80)
                
              ),
                onPressed: () async{
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => loginScreen())
                );
                },
                child: Text(
                  'GetStarted',
                  style: TextStyle(fontSize: 24),
                ))

            :Container(
       padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            TextButton(
              onPressed: ()=>controller.jumpToPage(2),
                child: Text('Skip',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange.shade500
                ),

                ),
            ),

            Center(
              child: SmoothPageIndicator(
                  controller: controller,
                count: 3,
                effect:ExpandingDotsEffect(
                  activeDotColor: Colors.orange.shade500
                )

              ),

            ),

            TextButton(
                onPressed: ()=> controller.nextPage(
                    duration: const Duration(
                      milliseconds: 500
                    ), curve: Curves.easeInOut),
                child:  Text('Next',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange.shade500
                  ),

                ))
          ],
        ),
      ) ,
    );
  }
}
