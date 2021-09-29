import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter UI",
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: MyAppContainer());
  }
}

// ctrl + shift + l : format code
// option + command + l : format code
class MyAppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App Page", style: TextStyle(fontSize: 20)),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          color: Colors.teal,
          width: 400,
          height: 400,
          child: Stack(
            children: [
              Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  child: Text("View 1",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700))),
              Positioned(
                top: -20,
                right: 0,
                child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.blue,
                    child: Text("View 2",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
