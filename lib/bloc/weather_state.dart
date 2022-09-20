import 'package:flutter/foundation.dart';

abstract class WeatherState {}

class WeatherLastUploadState extends WeatherState {}

class WeatherLoadingState extends WeatherState {
  List<dynamic> loadedWeatherData;
  WeatherLoadingState({required this.loadedWeatherData});
}

class WeatherErrorState extends WeatherState{}