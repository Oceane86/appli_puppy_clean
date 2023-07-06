///
/// model/room.dart
///
// import 'package:flutter_application_2_vide/screen/config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../screen/config.dart';

class Service {
  String service_id;
  String nom_service;
  String description;
  String prix;
  String temps;
  String img_service;


  Service(
      {required this.service_id,
      required this.nom_service,
      required this.description,
      required this.prix,
      required this.temps,
      required this.img_service

      });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      service_id: json['service'],
      nom_service: json['nom'],
      description: json['description'],
      prix: json['prix'],
      temps: json['temps'],
      img_service: json['img'],

    );
  }
}

class ServiceHttp {
  Future<List<Service>> getAll() async {
    final res = await http.get(serviceURL);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Service> datas = body
          .map(
            (dynamic item) => Service.fromJson(item),
          )
          .toList();
      return datas;
    } else {
      throw "Error.";
    }
  }
}
