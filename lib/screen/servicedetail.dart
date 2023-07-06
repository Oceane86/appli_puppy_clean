import 'package:flutter/material.dart';
import '../model/service.dart';




class ServiceScreen extends StatelessWidget {
  final ServiceHttp serviceHttp = ServiceHttp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service"),
        backgroundColor: Colors.green.shade200,),
      body: FutureBuilder(

        // Futur va chercher tous les données

        future: serviceHttp.getAll(),
        builder: (BuildContext context, AsyncSnapshot<List<Service>> snapshot) {
          // Affiche les données
          if (snapshot.hasData) {
            List<Service>? services = snapshot.data; // Voir si il y a des données nulles
            return ListView(
              children: services!
                  .map((Service service) => ListTile(
                        leading: Image.network(service.img_service),
                        title: Text(service.nom_service),
                        subtitle: Text("${service.prix} € / la séance"),
                        trailing: Icon(Icons.arrow_right),

                      ))
                  .toList(),
            ); // Pour afficher
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
