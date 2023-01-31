import 'package:bounce/qrcode.dart';
import 'package:bounce/timer.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TimerCard(),
        const QRCode(),
        const Text('moving banner'),
      ],
    );
  }
}
