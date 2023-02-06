import 'qrscannerscreen.dart';
import 'package:flutter/material.dart';
import 'settingsscreen.dart';

class ClubsideHomePage extends StatelessWidget {
  void selectSettings(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return SettingsScreen();
    }));
  }

  void selectQRScanner(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return QRViewExample();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: Text(
          'BOUNCE',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          Icon(
            size: 33.5,
            Icons.account_circle_outlined,
            color: Theme.of(context).colorScheme.secondary,
          )
        ],
      ),
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
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
        ),
      ),
      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.secondary,
            elevation: 10.0,
            onPressed: () => selectSettings(context),
            child: const Icon(Icons.settings),
          ),
          Container(
            margin: EdgeInsets.only(left: 245),
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.secondary,
              shape: CircleBorder(),
              elevation: 10.0,
              onPressed: () => selectQRScanner(context),
              child: const Icon(Icons.crop_free),
            ),
          ),
        ],
      ),
    );
  }
}
