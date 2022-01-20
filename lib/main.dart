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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      width: double.infinity,
      color: Colors.blue,
      child: ListView(
        children: [
          ListTile(
            title: Text("Bangladesh"),
            leading: Container(
              height: 50.0,
              width: 50.0,
              child: Icon(Icons.flag),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.greenAccent
              ),
            ),
            trailing: Icon(Icons.arrow_forward,
              color: Colors.white,
            ),
            subtitle: Text("Growing Country"),
            textColor: Colors.white,
          ),
          ListTile(
            title: Text("Pakistan"),
            leading: Container(
              height: 50.0,
              width: 50.0,
              child: Icon(Icons.flag),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.greenAccent
              ),
            ),
            trailing: Icon(Icons.arrow_forward,
              color: Colors.white,
            ),
            subtitle: Text("Growing Country"),
            textColor: Colors.white,
          ),
          ListTile(
            title: Text("Pakistan"),
            leading: Container(
              height: 50.0,
              width: 50.0,
              child: Icon(Icons.flag),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.greenAccent
              ),
            ),
            trailing: Icon(Icons.arrow_forward,
              color: Colors.white,
            ),
            subtitle: Text("Growing Country"),
            textColor: Colors.white,
          ),
          ListTile(
            title: Text("Pakistan"),
            leading: Container(
              height: 50.0,
              width: 50.0,
              child: Icon(Icons.flag),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.greenAccent
              ),
            ),
            trailing: Icon(Icons.arrow_forward,
              color: Colors.white,
            ),
            subtitle: Text("Growing Country"),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
