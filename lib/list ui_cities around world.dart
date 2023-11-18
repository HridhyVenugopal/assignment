import 'package:flutter/material.dart';

class ListView6 extends StatelessWidget{
  var country =["Delhi","Finland","London","Vancouver",
    "New York","Kerala","Iceland","Paris","Maldives","Dubai"];
  var images=['assets/images/delhi.jpg','assets/images/finland.jpg',
    'assets/images/london.jpg', 'assets/images/vancouver.jpg',
    'assets/images/newyork.jpg','assets/images/kerala.jpg',
  'assets/images/iceland.jpg','assets/images/marinedrive.jpg',
    'assets/images/maldives.jpg', 'assets/images/dubai.jpg'];
  var nation=["India","Europe","UK","Canada","US","India",
    "Europe","France","Maldives","UAE"];
  var population=["Population: 32.9 mill","Population: 5.54 mill",
    "Population: 8.8 mill","Population: 2.6 mill",
    "Population: 8.47 mill","Population: 3.51 cr ",
    "Population: 3.75 lakh","Population: 12.2 mill",
    "Population: 5.21 lakhs","Population: 3.60 mill"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title:Text("Cities Around World",style: TextStyle(fontSize: 25,
           color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: ListView(
          children: List.generate(10, (index) => Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Card(
              elevation: 5,
              color: Colors.orange,
             child: Container(
               padding: EdgeInsets.only(left: 10),
               child: Row(
                 children: [
                   Image(image: AssetImage(images[index]),
                     fit: BoxFit.fill,height: 100,width: 200,),
                   Container(child: Padding(
                       padding: EdgeInsets.only(left: 20),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(country[index],style: TextStyle(
                               fontWeight: FontWeight.bold,fontSize: 20)),
                           Container(
                             padding: EdgeInsets.only(top: 20),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(nation[index],style: TextStyle(
                                     fontWeight: FontWeight.bold,fontSize: 15),),
                                 Text(population[index],style: TextStyle(
                                     fontSize: 13))
                               ],
                             ),
                           )
                         ],
                       ),
                     ),
                   )
                 ],
               ),
             ),
              ),
          ),
          )),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: ListView6(),));
}