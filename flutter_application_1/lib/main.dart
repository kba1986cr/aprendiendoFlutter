import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/image.dart';
import 'package:flutter_application_1/components/text.dart';
import 'package:flutter_application_1/components/textfield.dart';
import 'package:flutter_application_1/layouts/column.dart';
import 'package:flutter_application_1/layouts/row.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.pink,
          title: Text("Mi super App"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.air_sharp))],
        ),
        backgroundColor: Colors.green,
        body: ImageExample(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.access_alarm),
        ),
      ),
    );
  }
}
