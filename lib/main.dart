import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: MyApp(),
      ),
    )
  );

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<int> items =[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(5.0),
        separatorBuilder: (context, index) => const Divider(color: Colors.blueGrey,
        thickness: 2.0,),
        itemCount:items.length,itemBuilder: (BuildContext context,int index)
    {
      return Container(
        width: 400.0,
          child:
        ListTile(
            title: Text("${count} Row number  ${items[index]}"),
             /*leading: Container(
          width: 40.0,
          height: 40.0,
          child: Icon(Icons.flag),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.greenAccent
          ),
        )*/

            leading: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Icon(Icons.flag),
            ),
            trailing: FloatingActionButton(
              onPressed: onButtonClicked,
              child: Icon(Icons.add),
            ),
          ),
      );
    }
    );
  }

  int count = 0 ;
  void onButtonClicked(){
    setState(() {
      count++;
      if(count>=10){
        count=0;
      }
    });
  }
}
