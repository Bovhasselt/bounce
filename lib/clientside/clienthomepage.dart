import 'package:flutter/material.dart';
import '../qrcode.dart';

class ClientHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

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
      child: QRCode(),
    );
  }
}