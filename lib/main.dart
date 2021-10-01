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
        body: SafeArea(
          child: Container(
              constraints: BoxConstraints.expand(),
              color: Colors.teal,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints.expand(),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text("1",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                      )),
                  Expanded(
                    flex: 3,
                    child: Container(
                      constraints: BoxConstraints.expand(),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  alignment: Alignment.center,
                                  constraints: BoxConstraints.expand(),
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      border: Border.all(color: Colors.black),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ))),
                          Expanded(
                              flex: 4,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: Container(
                                        constraints: BoxConstraints.expand(),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Text(
                                          "3",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 3,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Container(
                                                  constraints:
                                                      BoxConstraints.expand(),
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5))),
                                                  child: Text(
                                                    "4",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ))),
                                          Expanded(
                                              child: Container(
                                                      constraints:
                                                          BoxConstraints.expand(),
                                                      alignment: Alignment.center,
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          border: Border.all(
                                                              color: Colors.black),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      5))),
                                                      child: Text(
                                                        "5",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                      )))
                                        ],
                                      )),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}


class BaseContainer extends StatelessWidget{

  Widget child;
  Color color;

  BaseContainer({required this.child , required this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        constraints:
        BoxConstraints.expand(),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
                color: Colors.black),
            borderRadius:
            BorderRadius.all(
                Radius.circular(
                    5))),
      child: child,
    );
  }
}