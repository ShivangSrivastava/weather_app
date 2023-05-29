// https://api.openweathermap.org/data/3.0/onecall?lat={33.44}&lon={-94.04}&exclude=hourly,daily&appid={API key}
// http://api.openweathermap.org/geo/1.0/direct?q={London}&limit=5&appid={API key}


import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

// ignore: constant_identifier_names
const api_key = 'df684cf0e47ad87f4769f53c09327058';

class Geocoding {
  String location;

  Geocoding({required this.location});

  void getData() async {
    Response response = await get(Uri.parse(
        'http://api.openweathermap.org/geo/1.0/direct?q=$location&limit=1&appid=$api_key'));
    Map data = List(response.body);
    print(data);
  }
}

void main() {
  var inst = Geocoding(location: 'deoria');
  inst.getData();
}
