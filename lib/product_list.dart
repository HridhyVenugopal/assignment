import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ProductList();
}

class _ProductList extends State<ProductList> {
  var fruit = [
    "Apple",
    "Mango",
    "Banana",
    "Grapes",
    "Water ..",
    "Kiwi",
    "Orange",
    "Peach",
    "Pineapple",
    "Lemon"
  ];
  var price = ["20", "30", "10", "8", "25", "40", "15", "10", "15", "8"];
  var unit = ["Kg", "Doz", "Doz", "Kg", "Kg", "Pc", "Doz", "Kg", "Pc", "Kg"];
  var image = ["assets/images/Apple-icon.png",
    "assets/images/Mango-icon.png",
    "assets/images/bananas-icon.png",
    "assets/images/Grape-icon.png",
    "assets/images/Watermelon-Illustration-icon.png",
    "assets/images/Kiwifruit-icon.png",
    "assets/images/Orange-Open-Illustration-icon.png",
    "assets/images/Peach-Illustration-icon.png",
    "assets/images/Pineapple-Open-Illustration-icon.png",
    "assets/images/Lemon-Illustration-icon.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Product List",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_rounded))
        ],),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: 10,
                  (context, index) =>
                  Container(height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Card(elevation: 5,
                        color: Colors.blueGrey.shade200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: AssetImage(image[index]),
                              height: 70, width: 70,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(text:
                                  TextSpan(text: "Name: ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                      children: [TextSpan(
                                          text: fruit[index],
                                          style: TextStyle(fontWeight: FontWeight.bold,
                                              color: Colors.black)
                                      )
                                      ])),
                                  RichText(text:
                                  TextSpan(text: "Unit: ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                      children: [TextSpan(
                                          text: unit[index],
                                          style: TextStyle(fontWeight: FontWeight.bold,
                                              color: Colors.black)
                                      )
                                      ])),
                                  RichText(text:
                                  TextSpan(text: "Price: ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                      children: [TextSpan(
                                          text: "\$${price[index]}", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)
                                      )
                                      ]))
                                ],),),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                color: Colors.black54,
                                height: 40, minWidth: 120,
                                child: Text("Add to Cart", style: TextStyle(
                                    color: Colors.white, fontSize: 15,
                                    fontWeight: FontWeight.bold),),),
                            )
                          ],),),
                    ),))),
    );}}
void main(){
  runApp(MaterialApp(
      home: ProductList(),));
}
