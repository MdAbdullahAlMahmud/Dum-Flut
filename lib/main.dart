import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home:Scaffold(
      body: MyApp(),
      appBar: AppBar(
        title: Text("Android Activity"),
      ),
    )), // use MaterialApp
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Flutter"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Android"),
            Text("Flutter")

          ],
        ),
        Text("Flutter")
      ],
    );
  }
}
