import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ApiServices {
  Future<String> getJson() async {
    final loginUIJson = await rootBundle.loadString("assets/testdata.json");
    return loginUIJson;
  }
}
