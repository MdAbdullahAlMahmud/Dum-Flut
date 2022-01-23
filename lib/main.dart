import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text('GridView'),
          leading: Icon(Icons.menu),
          backgroundColor: Colors.blue,
          elevation: 1.0,
          centerTitle: true,
          toolbarHeight: 100.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),

          actions: [
            Icon(Icons.favorite_outline,
              size: 40,

            ),
            Icon(Icons.remove_red_eye),
          ],


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

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  String img_url = "https://thumbs.dreamstime.com/b/lakeside-nature-walk-way-photograph-showing-beautiful-curving-wooden-board-walkway-tropical-park-natural-style-34127577.jpg";
  List<int> items = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17];

    late TabController tabController;
@override
  void initState() {
  tabController =  TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("Flutter",

    );


  }

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

  // EditText
 /* bool state = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/person.jpg')),
        IconButton(
          onPressed: onFlagClickListener,
          icon: Icon(Icons.flag) ,
          iconSize: 50,
          color: Colors.greenAccent,
          tooltip: 'Flag Arise',
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'enter your name',

            label: Text('Name'),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.people_outline),
            suffix: IconButton(
              icon: Icon(Icons.remove_red_eye_rounded),onPressed: (){
                setState(() {
                  state=!state;
                });
            },
            )
          ),
          onSubmitted: onSubmitText,
          onChanged: onTextChange,
          maxLength: 6,
          keyboardType: TextInputType.number,
          obscuringCharacter: "*",
          obscureText: state,

        )



      ]

    );
  }
  void onTextChange(String txt){
    print(txt);
  }
  void onSubmitText(String string){
    print(string);

  }
  void onFlagClickListener(){
    print("Flag Image Icon clicked");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Flag Icon"),
      backgroundColor: Colors.green,

    ));

    setState(() {

    });
  }*/

/*
@override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        *//*child: ElevatedButton(
         child: Text("Login"),
          onPressed: (){

          },

        ),*//*
        
  child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              child: Text("Login"),
              onPressed: (){

              },

            ),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.login), label: Text("Crate an Account")),
            InkWell(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Sending Message"),
                ));
              },

              child: Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                  child: Text("Flutter"),

              ),
            )
          ],
        ),
      ),

    );
  }*/
}



