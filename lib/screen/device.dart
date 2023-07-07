// Vu avec les différentes pages

import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'listservice.dart';



class DeviceScreen extends StatefulWidget {
  @override
  // Appel a la creation de l'état
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  //
  int _currentScreen = 0;

  // Liste des écrans
  final List<Widget> _screenList = [
    HomeScreen(),
    ServicesScreen(),
    AboutScreen(),


    

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puppy Clean'),
      ),
      body: _screenList[
          _currentScreen], //Pour montrer la page quand je serai à son numéro
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        iconSize: 25,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
          // Options de présentation


          // L'index
          currentIndex: _currentScreen,
          // L'écouteur : Ce passe quelque chose à une action
          onTap: onTabTapped,

          // Liste de bouton
          // Navigation
          items: const [
            //
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
            BottomNavigationBarItem(icon: Icon(Icons.cut), label: "Service"),
            BottomNavigationBarItem(icon: Icon(Icons.add_business_sharp), label: "A propos"),


          
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}

