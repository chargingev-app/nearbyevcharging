import 'package:flutter/material.dart';
import 'package:nearbyevcharging/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Near By EV Charging',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
