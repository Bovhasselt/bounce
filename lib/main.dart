import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'qrcode.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'ROOK',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 7, 126),
      appBar: AppBar(
        title: Text(
          'BOUNCE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 4, 57),
        actions: [
          Icon(
            size: 33.5,
            Icons.account_circle_outlined,
            color: Colors.white,
          )
        ],
      ),
      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Colors.white,
            elevation: 10.0,
            child: const Icon(Icons.settings),
            onPressed: () async {
              // Open settings
              // await showDialog(context: context, builder: (_) => QrDialog());
            },
          ),
          Container(
            margin: EdgeInsets.only(left: 245),
            child: FloatingActionButton(
              shape: CircleBorder(),
              backgroundColor: Colors.white,
              elevation: 10.0,
              child: const Icon(Icons.crop_free),
              onPressed: () async {
                // Open qr scan
                // await showDialog(context: context, builder: (_) => QrDialog());
              },
            ),
          ),
        ],
      ),
    );
  }
}

