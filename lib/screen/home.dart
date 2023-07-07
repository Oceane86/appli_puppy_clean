// screen/home.dart
// 
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
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
              padding: EdgeInsets.all(16),
              child: const Align(
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child:
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.cut, size: 22),
                  Icon(Icons.wash_rounded, size: 22),
                  Icon(Icons.countertops_sharp, size: 22),
                  Icon(Icons.cookie_outlined, size: 22),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.face_retouching_natural_sharp, size: 22),
                  Icon(Icons.cleaning_services_sharp, size: 22),
                  Icon(Icons.clean_hands_sharp, size: 22),
                  Icon(Icons.cut, size: 22),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nos services populaires',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),

                  Row(
                  children: [
                    Expanded(
                      child: Card(
                       child: Column(
                          children: [
                            Image.asset('assets/favoris.jpeg', width: 150, height: 150),
                            ListTile(
                              title: Text('Détente'),
                              subtitle: Text('Offrez à votre animal de compagnie un moment de relaxation ultime.Nos professionnels qualifiés'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset('assets/bains.png', width: 150, height: 150),
                            ListTile(
                              title: Text('Bains'),
                              subtitle: Text('Offrez à votre compagnon à fourrure une expérience de bain luxueuse et rafraîchissante.'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                  SizedBox(height: 16),

                                    
                  SizedBox(height: 16),
                  Stack(
                    children: [
                      Container(
                        width: 500,
                        height: 200,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/relaxation.jpeg', width: 150, height: 150),
                              Text('Relaxation'),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/tonte.png', width: 150, height: 150),
                              Text('Tonte'),
                            ],
                          ),
                        ],
                      ),
                    ),
 
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






