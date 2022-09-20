import 'package:weather_app_bloc_yandex_api/models/weathers_data.dart';
import 'package:weather_app_bloc_yandex_api/net/yandex_wether_api_provider.dart';

class WeatherRepository {
  WeatherDataProvider _weatherProvider = WeatherDataProvider();
  Future<List<WeatherDataModel>>getAllWeathers() => _weatherProvider.getWeatherData();
}