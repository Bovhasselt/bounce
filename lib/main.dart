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
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromARGB(255, 255, 255, 255),
            secondary: Color.fromARGB(255, 0, 0, 0),
          ),
          fontFamily: 'Opensans',
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).copyWith().colorScheme.secondary),
              iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)))),
      home: ClubsideHomePage(),
    );
  }
}
