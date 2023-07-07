import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Notre Salon",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Un lieu de détente et de bien-être",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          const Card(
            child: ListTile(
              leading: Icon(Icons.favorite_outline_outlined, color: Colors.blue),
              title: Text('Toiletteur Expert'),
              subtitle: Text('Passionné par les chiens'),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Image.asset('assets/boutique.jpg', width: 300, height: 250),
            ],
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ListTile(
                  leading: Icon(Icons.location_on_rounded, color: Colors.blue),
                  title: Text('Localisation'),
                  subtitle: Text('Adresse : 10 Rue de la République, 75001 Paris, France'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.call, color: Colors.blue,),
                  title: Text('Contact'),
                  subtitle: Text('Numéro : 01 23 45 67 89'),
                ),
                Divider(),
                ListTile(
                leading: Icon(Icons.timer_rounded,color: Colors.blue),
                title: Text('Horaires'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lundi : 9h00 - 17h30'),
                    Text('Mardi : 8h30 - 16h45'),
                    Text('Mercredi : 10h15 - 19h00'),
                    Text('Jeudi : 9h45 - 18h30'),
                    Text('Vendredi : 8h00 - 16h15'),
                    Text('Samedi : 9h30 - 13h00'),
                    Text('Dimanche : Fermé'),
                  ],
                ),
              ),

               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
