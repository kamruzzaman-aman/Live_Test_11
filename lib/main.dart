import 'package:flutter/material.dart';
import 'package:live_test/weather_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          color: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const WeatherInfoScreen(),
    );
  }
}