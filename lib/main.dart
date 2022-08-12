import 'package:clima/screens/city_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF0A0D22),
          colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color.fromARGB(255, 214, 28, 97),
            onPrimary: Colors.black,
            secondary: Color.fromARGB(255, 214, 28, 97),
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.red,
            background: Colors.green,
            onBackground: Colors.purple,
            surface: Color(0xFF0A0D22),
            onSurface: Colors.white70,
          )),
      home: const LoadingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
