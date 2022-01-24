import 'package:dummy_flut/Palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
/*
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
*/

      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  bool isSignUpScreen = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Positioned(
          right: 0,
          left: 0,
          top: 0,
          child: Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.fill)),
            child: Container(
              color: Color(0xFF3b5999).withOpacity(.85),
              child: Container(
                padding: EdgeInsets.only(top: 100, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Hi there , ",
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                            children: [
                          TextSpan(
                              text: "Good Morning",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold))
                        ])),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Create an account",
                      style: TextStyle(
                          color: Colors.white, fontSize: 16, letterSpacing: 1),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 200,
            child: Container(
              height: 450,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5)
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignUpScreen = true;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: isSignUpScreen
                                          ? Palette.activeColor
                                          : Palette.textColor1),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  width: 75,
                                  height: 2,
                                  color: Colors.orange,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignUpScreen = false;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: isSignUpScreen
                                          ? Palette.textColor1
                                          : Palette.activeColor),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  width: 55,
                                  height: 2,
                                  color: Colors.orange,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        buildTextField(Icons.people_outline, "name",
                            "Your Name", false, false),
                        buildTextField(Icons.email_outlined, "email",
                            "Your Email", false, true),
                        buildTextField(Icons.password_outlined, "password",
                            "Your Password", true, true),
                        buildTextField(
                            Icons.password_outlined,
                            "confirm password",
                            "Your Confirm Password",
                            true,
                            true),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign Up"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange, // background
                      onPrimary: Colors.white, // f
                      // oreground
                    ),
                  ),
                  Text("Page Name ${isSignUpScreen ? "Sign Up " : "Login"}")
                ],
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height - 100,
            left: 0,
            right: 0,
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Or Signiup with"),
                CheckboxListTile(
                  value: isChecked,
                  selected: true,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });

                    print("Checked ${value}");
                  },
                  title: Text("Remember me "),
                  activeColor: Colors.deepOrange,
                  checkColor: Colors.white,
                  secondary: Container(
                    child: Icon(Icons.face,size : 30,),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Facebook")
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.open_in_browser_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Google")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )))
      ],
    );
  }

  Widget buildTextField(
      IconData icon, String hint, String label, bool isPassword, bool isEmail) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          hintText: hint,
          label: Text(label),
          prefixIcon: Icon(icon),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
