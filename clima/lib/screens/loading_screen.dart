import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/networking.dart';
import '../services/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '32ed739c6aec4e02e3346fb47f9e6eab';
const spinkit = SpinKitDoubleBounce(
  color: Colors.white,
  size: 100.0,
);

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  //'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: spinkit),
    );
  }
}
