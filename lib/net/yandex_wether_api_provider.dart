import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weathers_data.dart';


//DataProvider
class WeatherDataProvider {
  Future<List<WeatherDataModel>> getWeatherData() async {
    final responce = await http.get(Uri.parse(
        'https://api.weather.yandex.ru/v2/forecast?lat=55.75396&lon=37.620393&extra=true'
        ''
        'X-Yandex-Api-Key: a14857f6-5c01-4745-b68e-ba02353074e5'
    ));

    if (responce.statusCode == 200) {
      final List<dynamic> weatherJson = json.decode(responce.body);
      return weatherJson.map((json) => WeatherDataModel.fromJson(json)).toList();
    } else {
      throw Exception('Error connect');
    }
  }
}