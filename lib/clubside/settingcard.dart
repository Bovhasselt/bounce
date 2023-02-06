import 'package:flutter/material.dart';


class SettingCard extends StatelessWidget {
  const SettingCard(
      {super.key, required this.settingName, required this.initialValue});

  final String settingName;
  final int initialValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(30),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              settingName,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Flexible(
            child: Card(
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.grey,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  initialValue: initialValue.toString(),
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(isCollapsed: true),
                  style: TextStyle(color: Colors.white, fontSize: 35),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
