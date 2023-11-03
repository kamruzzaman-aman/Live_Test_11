import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WeatherInfoScreen extends StatelessWidget {
   WeatherInfoScreen({super.key});

  List<Map<String, dynamic>> weatherInfo = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Weather Info App"),
        ),
        body: ListView.builder(
          itemCount: weatherInfo.length,
          itemBuilder: (_, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("City: ${weatherInfo[index]["city"]}", style: const TextStyle(fontSize: 18),),
                  Text("Temperature: ${weatherInfo[index]["temperature"]}\u00B0C", style: const TextStyle(color: Colors.black54),),
                  Text("Condition: ${weatherInfo[index]["condition"]}", style: const TextStyle(color: Colors.black54),),
                  Text("Humidity: ${weatherInfo[index]["humidity"]}%", style: const TextStyle(color: Colors.black54),),
                  Text("WindSpeed: ${weatherInfo[index]["windSpeed"]} m/s", style: const TextStyle(color: Colors.black54),),
                
                ],
              ),
            )
          );
        }));
  }
}
