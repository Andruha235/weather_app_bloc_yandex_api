class WeatherDataModel {
  String name;
  int temp;
  int feelsLike;

  WeatherDataModel({required this.name, required this.temp, required this.feelsLike});

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) {
    return WeatherDataModel(name: json['name'], temp: json['temp'], feelsLike: json['feels_like']);
  }

}

