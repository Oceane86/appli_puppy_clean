import 'package:flutter/material.dart';
import 'screen/device.dart';

void main() {
  runApp(MyApp());
}

// La classe principale de l'application

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// La classe de l'état de l'application
class _MyAppState extends State<MyApp> {
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Puppy Clean",
      theme: ThemeData(
        fontFamily: 'Questrial',
        primarySwatch: Colors.blue,
        // brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: DeviceScreen(),
    );
  }
}
