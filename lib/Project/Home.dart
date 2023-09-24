import 'package:flutter/material.dart';
import 'package:untitled6/Project/CountryPage.dart';
import 'package:untitled6/Project/Models/Country.dart';
import 'package:untitled6/Project/Models/Meal.dart';
import 'package:untitled6/Project/splashScreen.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    
    List<Country> country=[
      Country(name: "egypt", meal:
      [Meal(name: "Shakshouka",
          Description: "Shakshouka is a delicious combination of eggs poached in a spicy tomato sauce."
              " Although it has an unusual name, the dish is straightforward and easy to make. It is usually made "
              "in a skillet in which onions, tomatoes, and spices are cooked until they form a delicious tomato sauce",
          price: 234, images: "Shakshouka.jpg", Recipe: "Eggs are then added directly to the tomato sauce and poached until done. Merguez sausage can also be added to the dish. It is believed that shakshouka originated in Tunisia, but the dish is well-known and commonly eaten throughout North Africa and the Middle East as well."),
        Meal(name: "Pastilla", Description: "Pastilla is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Pastilla.jpg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients."),Meal(name: "Tajine", Description: "Tajine, also known as tagine,\n"
          " refers both to the rich Moroccan stews and the cooking vessel used to make them.\n"
          " When referring to the cooking vessel, it is a round and shallow,\n"
          " clay or ceramic casserole with a tall,\n"
          " pointy, conical lid", price: 400, images: "Tajine.jpg", Recipe: "tagine cooking is a method rather than a specific dish.\n"
          " Most tagines involve layering aromatics such as onions and garlic with meat,\n"
          " vegetables, spices, oil and a bit of water.\n"
          " Most tagine recipes won't call for any pre-browning of \n"
          "aromatics and meat because all the ingredients steam and caramelize together")], url: "egypt.png"),
      Country(name: "London", meal: [
        Meal(name: "Pastilla", Description: "Pastilla is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Pastilla.jpg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients."),
        Meal(name: "koshary", Description: "koshary is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Tajine.jpg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients.")], url:"London.png"),
      Country(name: "maghreb ", meal: [
        Meal(name: "Tajine", Description: "Tajine, also known as tagine,\n"
          " refers both to the rich Moroccan stews and the cooking vessel used to make them.\n"
          " When referring to the cooking vessel, it is a round and shallow,\n"
          " clay or ceramic casserole with a tall,\n"
          " pointy, conical lid", price: 400, images: "Tajine.jpg", Recipe: "tagine cooking is a method rather than a specific dish.\n"
          " Most tagines involve layering aromatics such as onions and garlic with meat,\n"
          " vegetables, spices, oil and a bit of water.\n"
          " Most tagine recipes won't call for any pre-browning of \n"
          "aromatics and meat because all the ingredients steam and caramelize together"),], url: "maghreb.jpg"),
      Country(name: "naAlgiers", meal: [Meal(name: "Pastilla", Description: "Pastilla is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Pastilla.jpg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients."),
          Meal(name: "Tajine", Description: "Tajine, also known as tagine,\n"
          " refers both to the rich Moroccan stews and the cooking vessel used to make them.\n"
          " When referring to the cooking vessel, it is a round and shallow,\n"
          " clay or ceramic casserole with a tall,\n"
          " pointy, conical lid", price: 400, images: "Tajine.jpg", Recipe: "tagine cooking is a method rather than a specific dish.\n"
          " Most tagines involve layering aromatics such as onions and garlic with meat,\n"
          " vegetables, spices, oil and a bit of water.\n"
          " Most tagine recipes won't call for any pre-browning of \n"
          "aromatics and meat because all the ingredients steam and caramelize together"),], url:"Algiers.png" ),

      Country(name: "Kuwait City	", meal: [Meal(name: "Pastilla", Description: "Pastilla is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Pastilla.jpeg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients."),Meal(name: "Tajine", Description: "Tajine, also known as tagine,\n"
          " refers both to the rich Moroccan stews and the cooking vessel used to make them.\n"
          " When referring to the cooking vessel, it is a round and shallow,\n"
          " clay or ceramic casserole with a tall,\n"
          " pointy, conical lid", price: 400, images: "Tajine.jpg", Recipe: "tagine cooking is a method rather than a specific dish.\n"
          " Most tagines involve layering aromatics such as onions and garlic with meat,\n"
          " vegetables, spices, oil and a bit of water.\n"
          " Most tagine recipes won't call for any pre-browning of \n"
          "aromatics and meat because all the ingredients steam and caramelize together"),], url: "kwait.png"),
      Country(name: "Amsterdam", meal: [Meal(name: "Pastilla", Description: "Pastilla is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Pastilla.jpg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients.")], url: "Amsterdam.png"),
      Country(name: "Damascus", meal: [Meal(name: "Pastilla", Description: "Pastilla is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Pastilla.jpg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients.")], url: "Damascus.png"),
      Country(name: "Damascus", meal: [Meal(name: "Pastilla", Description: "Pastilla is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Pastilla.jpg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients.")], url: "Damascus.png"),
      Country(name: "Damascus", meal: [
        Meal(name: "Pastilla", Description: "Pastilla is a stuffed pastry from Morocco, also known as b'stilla or bastilla. The rich, sweet and savory pie is filled with an unusual mix of pigeon or chicken meat, eggs, almonds, and cinnamon. It is commonly prepared for special events such as holidays, weddings, or parties.",
          price: 450, images: "Pastilla.jpg", Recipe: "1-Pour the powdered and condensed milk into a bowl\n"
              "2-Mix the powdered and condensed milk together. The mixture may be a little thick and hard to /n"
              "mix together, so have patience and a thick and sturdy spoon\n"
              "3- Add the margarine to the mixture. Add 1 tablespoon of margarine to the mixture; \n"
              "alternately, you can use real butter.\n"
              " This will help add an extra creamy flavor to the treat.\n"
              " Mix it in with the other ingredients.")], url: "Damascus.png"),

    ];
    
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
        child: Stack(

          children:[
            Image.asset("pack.jpg"),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 30,),
                  Center(
                    child: Text("Wellcome chef ahmed",
                        style: TextStyle(color: Colors.orangeAccent,fontSize: 20) ,),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 30,),
                  Center(
                    child: Text("Pick a country",
                      style: TextStyle(color: Colors.orangeAccent,fontSize: 15) ,),
                  ),
                ],
              ),
/*
for(int i=1;i<=country.length;i++)
  if(country.indexOf(i)%2==0)

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: ShapeDecoration(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.white),
                          )
                      ),
                      child:InkWell(
                        child: Stack(
                          children: [
                            Image.asset(country[i].url),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(top: 90,left: 110),
                              child: Text(country[i].name,style: TextStyle(color: Colors.white60,fontSize: 20),),
                            )
                          ],
                        ),
                      )
                      ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: ShapeDecoration(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.white),
                          )
                      ),
                      child:
                      InkWell(
                        child:
                      Stack(
                        children: [
                          Image.asset('1234.jpg'),
                          CircleAvatar(backgroundColor: Colors.grey,),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.only(top: 90,left: 110),
                            child: Text("ahmed",style: TextStyle(color: Colors.white60,fontSize: 20),),
                          )

                        ],
                      )
                      ),

                    ),
                  ),
                ],
              ),
*/
            /*
          Container(
            child: Column(
              children: List.generate(country.length, (i) {



                /*
                if (i % 2 == 0) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.white),
                            ),
                          ),
                          child: InkWell(
                            child: Stack(
                              children: [
                                Image.asset(country[i].url),
                                SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.only(top: 90, left: 110),
                                  child: Text(
                                    country[i].name,
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  );
                } else {
                  return Column(children: [ Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                      child: InkWell(
                        child: Stack(
                          children: [
                            Image.asset(country[i].url),
                            CircleAvatar(backgroundColor: Colors.grey),
                            SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 90, left: 110),
                              child: Text(
                                country[i].name,
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),],); // Returning an empty SizedBox for odd indices
                }
           */   }),
            ),
          )

             */
          Container(
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true, // Adjust this based on your layout needs
                  physics: NeverScrollableScrollPhysics(), // Adjust this based on your layout needs
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns in the grid
                    crossAxisSpacing: 5, // Spacing between each column
                    mainAxisSpacing: 5, // Spacing between each row
                    childAspectRatio: 2, // Adjust this based on your layout needs
                  ),
                  itemCount: country.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: ShapeDecoration(
                          color: Colors.white54,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.white),
                          ),
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return CountryPage(country[i]);
                            }));
                          },
                          child: Stack(
                            children: [
                              Image.asset(country[i].url,width: 150,height: 150,),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(top: 90, left: 110),
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: Colors.orangeAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                      side: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  child: Text(
                                    country[i].name,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );

                  },
                ),
              ],
            ),
          )



            ],
          ),
        ],
        ),
      ),
    );
  }
}
