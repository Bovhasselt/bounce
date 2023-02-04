import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    var appState = context.watch<MyAppState>();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(
            size: 33.5,
            Icons.account_circle_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Text('A Kanker goed idea:'),
          Text(appState.current.asLowerCase),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        elevation: 10.0,
        child: const Icon(Icons.qr_code_2),
        onPressed: () async {
          await showDialog(context: context, builder: (_) => QrDialog());
        },
      ),
    );
  }
}

class QrDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 400.0,
        width: 400.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/qr.png'), fit: BoxFit.cover)),
      ),
    );
  }
}
