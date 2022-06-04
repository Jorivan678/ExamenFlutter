import 'package:examen_flutter/screens/menu_controller.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ClimaApp());

class ClimaApp extends StatelessWidget {
  const ClimaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeController(),
    );
  }
}
