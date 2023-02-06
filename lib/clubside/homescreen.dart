import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //  int outsideLimit;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Text(
          '17/50', // later dynamic with settings and amount of people outside
          style: TextStyle(
            fontSize: 100,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
