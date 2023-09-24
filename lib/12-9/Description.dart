import 'package:flutter/material.dart';
import 'package:untitled6/11-9/(11-9)task2/text.dart';
import 'package:untitled6/12-9/model/product.dart';
class Desc extends StatelessWidget {

  late Products1 product;
  Desc(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("products")),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60,
              width: double.infinity,
              color: Colors.grey,
              child: Center(child: text(name: product.name))),
          Image.asset(product.url),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child: text(name: 'Price is ${product.price}EG'),

                ),
                SizedBox(width: 50,),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey
                  ),
                  child: text(name: ' ${product.price}'),

                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
