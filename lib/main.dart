import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
          backgroundColor: Colors.teal,
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

  List<int> items = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17];
  //GridView Count
  /*@override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Text("Android"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.teal[100],
            ),
          ),
           Container(
            width: 100,
            height: 100,
             alignment: Alignment.center,
             decoration: BoxDecoration(
                 shape: BoxShape.circle,
               color: Colors.teal[200],

             ),
            child: Text("Flutter"),
          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
              color: Colors.teal[300],

            ),
            child: Text("Java"),
          ),

        ],



      ),
    );
  }*/
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          /*mainAxisSpacing: 10,
          crossAxisSpacing: 10*/
        ),
        itemBuilder: (BuildContext context, int index){

          return Padding(
            padding: const EdgeInsets.all(8.0),/*
            child: Container(
                width: 100,
                height: 100,
                child: Text("Android"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.teal[100],
            )
            ),*/
            child: Card(
              elevation: 10,
              color: Colors.teal[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60)
              ),
              child: Container(
          width: 100,
          height: 100,
          child: Text("Android"),
          alignment: Alignment.center,
          /*decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.teal[100],
              ),*/
            ),
          )
          );
    });
  }
}



