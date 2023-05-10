import 'package:flutter/material.dart';
import 'package:voltage_controller_bt/pages/home_screen.dart';
import 'package:voltage_controller_bt/pages/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var appLoaded = !false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bluetooth Serial Controller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: appLoaded ? HomeScreen() : const OnboardingScreen(),
    );
  }
}
