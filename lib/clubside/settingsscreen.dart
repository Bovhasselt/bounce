import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 110),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Start tijd:',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.grey,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    '20m',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Over tijd:',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.grey,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    '-2m',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Limiet: ',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.grey,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    '20m',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
