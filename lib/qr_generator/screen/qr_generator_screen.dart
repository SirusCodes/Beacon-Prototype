import 'package:beacon_app/navigator/screen/navigator_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGeneratorScreen extends StatelessWidget {
  const QRGeneratorScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: QrImage(
                    backgroundColor: Colors.white,
                    data: "123456",
                  ),
                ),
                const Text(
                  "Code: 123456",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push<void>(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => const NavigatorScreen(
                        isBeacon: true,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Let's Start",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
