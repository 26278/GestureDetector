import 'package:flutter/material.dart';
import 'package:hello_md3/myWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Our first App"),
        ),
        body: Center(
          child:Column(children: [
            MyWidget(),
            buildMyWidget("Silvan", 50.0),
            buildMyWidget("Robin", 60.0),
            buildMyWidget("Simon", 150.0),
          ],)
        ),
      ),
    );
  }

  Widget buildMyWidget(var name, double height){
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        height: height,
        width: 200,
        color: Colors.red,
        child: Text(name),
      )
    );
  }
}
