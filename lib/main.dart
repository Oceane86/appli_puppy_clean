import 'package:flutter/material.dart';
import 'screen/device.dart';
import 'model/service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  // Les écrans de navigation
  final List<Widget> _screens = [
    DeviceScreen(),
    // ServiceScreen(),
    // Ajoutez vos autres écrans ici
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Puppy Clean",
      theme: ThemeData(
        fontFamily: 'Questrial',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Puppy Clean",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/puppy_logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, size: 15),
                  Padding(padding: EdgeInsets.all(1)),
                  Text('Toilettage complet'),
                  Icon(Icons.favorite),
                  Icon(Icons.camera),
                  Icon(Icons.camera),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.music_note),
                  Icon(Icons.shopping_cart),
                  Icon(Icons.calendar_today),
                  Icon(Icons.calendar_today),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'A propos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Services',
            ),
          ],
        ),
      ),
    );
  }
}
