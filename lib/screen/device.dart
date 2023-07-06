// Vu avec les différentes pages

import 'package:flutter/material.dart';
import 'home.dart';


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
        backgroundColor: Colors.blueGrey,
        iconSize: 25,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.cyan,
        type: BottomNavigationBarType.fixed,
          // Options de présentation


          // L'index
          currentIndex: _currentScreen,
          // L'écouteur : Ce passe quelque chose à une action
          onTap: onTabTapped,

          // Liste de bouton
          items: const [
            //
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: "Liste"),
            BottomNavigationBarItem(icon: Icon(Icons.thunderstorm), label: "Truc"),
            BottomNavigationBarItem(icon: Icon(Icons.settings_applications_sharp), label: "Réglages"),

            
     
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
