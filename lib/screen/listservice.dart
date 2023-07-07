import 'package:flutter/material.dart';

import '../model/service.dart';

import '../screen/servicesdetail.dart';

class ServicesScreen extends StatelessWidget {
  final ServiceHttp serviceHttp = ServiceHttp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: serviceHttp.getAll(),
        builder: (BuildContext context, AsyncSnapshot<List<Service>> snapshot) {
          if (snapshot.hasData) {
            List<Service>? services = snapshot.data;
            return Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Services',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: services!
                        .map(
                          (Service service) => ListTile(
                            leading: Image.network(service.img_service),
                            title: Text(service.nom_service),
                            subtitle: Text("${service.prix} € / séance"),
                            trailing: Icon(Icons.arrow_right),
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ServiceDetail(
                                  service: service,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text(" ${snapshot.error}");
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
