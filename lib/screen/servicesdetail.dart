//
// screen/roomdetail.dart
//

import 'package:flutter/material.dart';

import '../model/service.dart';


class ServiceDetail extends StatelessWidget {
  final Service service;
  ServiceDetail({required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(service.nom_service),
      ),
      body: Column(
          children: [
            ServiceDetailStack(),
            Expanded(
              child: ServiceDetailText(),
            ),
          

          ],
         
        ),
    

    );
  

  }

Expanded ServiceDetailText() => Expanded(
  child: SingleChildScrollView(
    padding: EdgeInsets.all(30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          service.description,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
        Text(
          'Temps:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          service.temps,
          style: TextStyle(fontSize: 16),
        ),
      ],
    ),
  ),
);

// 
// Affichage des détails du service
// 

Stack ServiceDetailStack() => Stack(
  children: [
    Container(
      width: 400,
      height: 400,
      child: Image.network(service.img_service, fit: BoxFit.cover),
    ),
    Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                service.nom_service,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '${service.prix} €',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ],
);


}

class ServiceDetailStack extends StatelessWidget {
  const ServiceDetailStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack();
  }
}


