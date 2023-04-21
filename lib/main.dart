import 'package:flutter/material.dart';
import 'package:merin_app/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeRin App',
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}
