// screen/home.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {


  

  // 

  @override 
  Widget build(BuildContext context) {

    // Vu pour scroll
    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,// 
        children: <Widget>[
          const Text("Home"),
          const SizedBox(height: 20),
          const Divider(thickness: 22, color: Colors.lightGreenAccent),  //trait de certaines epaisseur
          // 
          // 
          // 

    
          const SizedBox(height: 10),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.settings_accessibility_outlined),
              SizedBox(width: 19),
              Text("C'est bon   \nfbuqbfqsjibcqsccsk ckc sdiovqiosgvio \nqvioqscsknqsiokcnqsifaifianaiocnqnci \nqsncuibçarzarazdqsdqns")
            ],
          ),

          // Just do it
          // 
          // 

          const SizedBox(height: 10),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.emoji_emotions_sharp),
              SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DSCSDVS"),
                  Text("DSCSDVS"),

                ],
              ),

            ], 
   
          ),

          // Images centré

          Center(
              child:  Image.asset(
              "assets/puppy_logo.png",           // locales

              width: 300,
              height: 300,
            ),
    
          ),
          // Images en ligne
          Image.network("https://img.att.ovh/brussels-expo.jpg"),


          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/puppy_logo.png", width: 40,),
              const SizedBox(width: 19),
               const Text("C'est bon   \nfbuqbfqsjibcqsccsk ckc sdiovqiosgvio \nqvioqscsknqsiokcnqsifaifianaiocnqnci \nqsncuibçarzarazdqsdqns")
            ],
          ),





          // @todo : la suite :
        ],  //signifie que c'est une liste
      ) , // list de composants ou composant individuel
    );
  
  }

}