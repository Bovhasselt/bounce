import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCode extends StatelessWidget {
  const QRCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 100),
      child: QrImage(
        data: 'This is a simple QR code',
        version: QrVersions.auto,
        size: 320,
        gapless: true,
      ),
    );
  }
}
