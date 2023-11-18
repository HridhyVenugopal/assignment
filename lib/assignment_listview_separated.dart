import 'package:flutter/material.dart';

class ListView5 extends StatelessWidget{
  var name=["January","February","March","April","May"
  ,"June","July","August","September",
    "October","November","December"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
            return Card(
              shadowColor: Colors.grey,
              child: ListTile(
                title: Text(name[index]),
              ),
            );
          },
          separatorBuilder: (context,index){
            if(index % 4 == 0){
              return const Card(
                color: Colors.red,
                child: ListTile(
                    title: Text("Advertisement",
                        style: TextStyle(
                            color: Colors.white)),
              ));
            }else{
              return SizedBox();
            }
          },
          itemCount: 12),
    );
  }

}

void main(){
  runApp(MaterialApp(home: ListView5(),));
}