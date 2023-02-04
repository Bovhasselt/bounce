import 'package:flutter/material.dart';
import 'clubside/clubhomepage.dart';
import 'clientside/clienthomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bounce',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
      ),
      home: ClubsideHomePage(),
    );
  }
}
