import 'dart:convert';

import 'package:flutter/services.dart';

import '../Models/Country.dart';

class AppRepository {
  static final Map<String, Country> countries = {};

  static Future<void> getCountries() async {
    final String response =
        await rootBundle.loadString('assets/countrycodes.json');
    final data = await json.decode(response);
    for (int i = 0; i < data.length; i++) {
      countries[data[i]['code'].toString()] = Country.fromJson(data[i]);
    }
  }
}
