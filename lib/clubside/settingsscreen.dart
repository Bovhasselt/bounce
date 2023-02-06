import 'package:bounce/clubside/settingcard.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          SettingCard(settingName: 'Start tijd', initialValue: 20),
          SettingCard(settingName: 'Over tijd', initialValue: 2),
          SettingCard(settingName: 'Limiet', initialValue: 50)
        ],
      ),
    );
  }
}
