import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 2, 13, 80),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Text(
          '17/40', // later dynamic with settings and amount of people outside
          style: TextStyle(
            fontSize: 100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
