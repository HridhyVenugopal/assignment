import 'package:flutter/material.dart';

class GridView1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var icons=[Icons.home,Icons.notification_important,
      Icons.linked_camera,Icons.local_activity,
      Icons.leak_remove,Icons.class_rounded,Icons.phone,
      Icons.mail,Icons.map,
      Icons.memory,Icons.mic_off,Icons.note_add_rounded];
    var colors=[Colors.lightBlue,Colors.orange,Colors.green,Colors.pink,
      Colors.red,Colors.blueAccent,Colors.purpleAccent,
      Colors.cyan.shade700,Colors.amber, Colors.deepOrange.shade800,
      Colors.pink,Colors.lightGreen];
    return Scaffold(
      body: GridView.builder(
        itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10,
              mainAxisExtent: 110),
          itemBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              color: colors[index],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(icons[index],size: 50,color: Colors.black38,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Heart",style:
                          TextStyle(color: Colors.black,fontSize: 20,),),
                          Text("  Shaker",style:
                          TextStyle(color: Colors.black,fontSize: 20,))
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ),
            ),
          ));
  }
}

void main(){
  runApp(MaterialApp(home: GridView1(),));
}
