import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc_yandex_api/net/weather_repository.dart';

class WeatherBloc extends Bloc {
  final WeatherRepository weatherRepository;
  WeatherBloc(this.weatherRepository) : super(this.WeatherLastUploadState());

  @override
  Stream mapEventToState(event) {

    throw UnimplementedError();
  }
}