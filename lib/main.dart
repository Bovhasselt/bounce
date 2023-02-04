import 'package:flutter/material.dart';
import './qrscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bounce',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Bounce'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedScreenIndex = 0;

  void _onBackButtonTapped() {
    setState(() {
      if (_selectedScreenIndex == 0) {
        _selectedScreenIndex = 1;
      } else {
        _selectedScreenIndex = 0;
      }
    });
  }

  static final List<Widget> _screenOptions = <Widget>[
    const Text('show qr screen'),
    const QrScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        icon: _selectedScreenIndex == 0
            ? const Icon(Icons.arrow_forward)
            : const Icon(Icons.arrow_back),
        onPressed: _onBackButtonTapped,
      ),
      floatingActionButtonLocation: _selectedScreenIndex == 0
          ? FloatingActionButtonLocation.endTop
          : FloatingActionButtonLocation.startTop,
      body: Center(
        child: _screenOptions.elementAt(_selectedScreenIndex),
      ),
    );
  }
}
