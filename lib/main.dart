import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home:Scaffold(
      body: MyApp(),
      appBar: AppBar(
        title: Text("Android ACtivity"),
      ),
    )), // use MaterialApp
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 400.0,
      height: 400.0,
      alignment: Alignment.center,
      child: const Text(
        "Android Developing",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.deepOrange, width: 2.0)),
    )

    );
  }
}
