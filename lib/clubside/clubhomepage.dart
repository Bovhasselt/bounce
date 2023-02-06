import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'settingsscreen.dart';

class ClubsideHomePage extends StatefulWidget {
  @override
  State<ClubsideHomePage> createState() => _ClubsideHomePageState();
}

class _ClubsideHomePageState extends State<ClubsideHomePage> {
  // Home = 0, Settings = 1, Personal = 2, CustomerCard = 3 (see _screens)

  // Start at homescreen
  int _selectedScreenIndex = 0;

  // all crossbuttons go back to home
  void _onCrossButtonTapped() {
    setState(() {
      _selectedScreenIndex = 0;
    });
  }

  // settings button goes to settings
  void _onSettingsButtonTapped() {
    setState(() {
      _selectedScreenIndex = 1;
    });
  }

  static final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const SettingsScreen(),
  ];

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
        child: _screens.elementAt(_selectedScreenIndex),
      ),
      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.secondary,
            elevation: 10.0,
            onPressed: _selectedScreenIndex == 1
                ? _onCrossButtonTapped
                : _onSettingsButtonTapped,
            child: _selectedScreenIndex == 1
                ? const Icon(Icons.close)
                : const Icon(Icons.settings),
          ),
          Container(
            margin: EdgeInsets.only(left: 245),
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.secondary,
              shape: CircleBorder(),
              elevation: 10.0,
              onPressed: () async {
                // Open qr scan
                // await showDialog(context: context, builder: (_) => QrDialog());
              },
              child: const Icon(Icons.crop_free),
            ),
          ),
        ],
      ),
    );
  }
}