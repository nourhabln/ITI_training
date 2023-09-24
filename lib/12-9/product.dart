import 'package:flutter/material.dart';

import '../11-9/(11-9)task2/text.dart';
import 'Description.dart';
import 'model/product.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List <Products1> product=[
Products1(name: "flour",city:'cairo', price: 60, url: "2222.png"),
Products1(name:"rice",city:'Giza',price:40,url:"1111.png"),
Products1(name:"flour",city:'cairo',price:60,url:"2222.png"),
Products1(name:"vegtable",city:'alex',price:100,url:"27711.png"),
    Products1(name:"panana",city:'alex',price:300,url:"92f1ea7dcce3b5d06cd1b1418f9b94133.png"),
  Products1(name:"oil",city:'giza',price:30,url:"oil.png"),
  Products1(name:"bakery",city:'cairo',price:120,url:"bakery.png"),
  Products1(name:"meet",city:'cairo',price:500,url:"pngfuel4.png"),
Products1 (name:"chickens",city:'giza',price:400,url:"pngfuel5.png"),
Products1(name:"spices",city:'alex',price:400,url:"meet.png"),
Products1(name:"vegetable",city:'alex',price:300,url:"vegetable.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("products")),
        backgroundColor: Colors.black,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround ,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for(int i=0;i<product.length;i++)
                Row(
                  children: [
                    SizedBox(width: 30,),
                    InkWell(
                      onTap: ()
                        {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Desc(product[i]);
                    }));
                    },
                      child: CircleAvatar(
                        backgroundImage: AssetImage(product[i].url),
                      ),
                    )
                  ],
                )

              ],
            ),
            ),
            Column(children: [
            SizedBox(height: 10,),
            for(int i=0;i<product.length;i++)
            Column(

              children: [SizedBox(height: 5,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return Desc(product[i]);
                    }));
                  },
                  child: Container(
                    height: 100,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Container(
                         width: 60,
                         height: 200,
                         child: CircleAvatar(

                             backgroundImage: AssetImage(product[i].url)),
                       ),
                        SizedBox(width: 50,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                        Text(product[i].name),
                          text(name: product[i].city,FontSize: 20),
                        ],
                        ),
                        text(name: "price :${product[i].price}EG",FontSize: 20),


    ],
    ),
                  ),
                ),
              ],
            ),
],
    )
          ],
        ),
      ),
    );
  }
}
