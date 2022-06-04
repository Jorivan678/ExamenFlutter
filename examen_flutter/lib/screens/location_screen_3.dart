import 'dart:math';

import 'package:flutter/material.dart';
import 'package:examen_flutter/utilities/constants.dart';
import 'package:examen_flutter/services/weather.dart';

class LocationScreen3 extends StatefulWidget {
  const LocationScreen3({Key? key, required this.locationWeather})
      : super(key: key);

  final locationWeather;

  @override
  _LocationScreen3State createState() => _LocationScreen3State();
}

class _LocationScreen3State extends State<LocationScreen3> {
  WeatherModel weather = WeatherModel();
  late int temperature;
  late String weatherIcon;
  late String cityName;
  late String weatherMessage;
  late bool switchFtoC = false;

  @override
  void initState() {
    super.initState();

    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      temperature = Random().nextInt(35);
      var condition = 0;
      if (temperature <= 10) {
        condition = 299;
      } else if (temperature > 10) {
        condition = Random().nextInt(505) + 300;
        //intValue = Random().nextInt(100) + 50; // Value is >= 50 and < 150.
      }
      weatherIcon = weather.getWeatherIcon(condition);
      weatherMessage = weather.getMessage(temperature);
      cityName = weatherData;
    });
  }

  void celsiusToFahrenheit() {
    var newTemp = (temperature * 9 / 5 + 32);

    var newTempInt = newTemp.toInt();
    setState(() {
      temperature = newTempInt;
    });
  }

  void fahrenheitToCelsius() {
    var newTemp = (((temperature - 32) * 5) / 9);
    var newTempInt = newTemp.toInt();
    setState(() {
      temperature = newTempInt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/ger_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Cambiar Celsius a Fahrenheit',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Switch(
                      value: switchFtoC,
                      onChanged: (isOn) {
                        setState(() {
                          switchFtoC = isOn;
                        });
                        if (switchFtoC == false) {
                          fahrenheitToCelsius();
                        } else {
                          celsiusToFahrenheit();
                        }
                      })
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temperature°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon,
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  '$weatherMessage en $cityName',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
