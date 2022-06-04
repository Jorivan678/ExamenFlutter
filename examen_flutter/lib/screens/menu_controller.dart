import 'package:examen_flutter/screens/location_screen.dart';
import 'package:examen_flutter/screens/location_screen_2.dart';
import 'package:examen_flutter/screens/location_screen_3.dart';
import 'package:examen_flutter/screens/location_screen_4.dart';
import 'package:examen_flutter/screens/location_screen_5.dart';
import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  State<HomeController> createState() {
    return _HomeControllerState();
  }
}

class _HomeControllerState extends State<HomeController> {
  int _selectedIndex = 0;

  final pages = [
    const LocationScreen(locationWeather: 'MEX'),
    const LocationScreen2(locationWeather: 'USA'),
    const LocationScreen3(locationWeather: 'GER'),
    const LocationScreen4(locationWeather: 'CAN'),
    const LocationScreen5(locationWeather: 'FRA')
  ];

  static const List<BottomNavigationBarItem> _navigationItems =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'MEX'),
    BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'USA'),
    BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'GER'),
    BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'CAN'),
    BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'FRA'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _navigationItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
