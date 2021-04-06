import 'package:beacon_app/qr_generator/screen/qr_generator_screen.dart';
import 'package:beacon_app/qr_scanner/screen/qr_scanner_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Spacer(),
              const FlutterLogo(size: 200),
              const SizedBox(height: 15),
              const _WelcomeText(),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  _scaffoldKey.currentState.showBottomSheet<void>(
                    (context) => const _CreateGroupBottomSheet(),
                  );
                },
                child: const Text(
                  "Create Group",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push<void>(
                    context,
                    CupertinoPageRoute(builder: (_) => const QrScannerScreen()),
                  );
                },
                child: const Text(
                  "Join Group",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CreateGroupBottomSheet extends StatelessWidget {
  const _CreateGroupBottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 210,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Schedule",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push<void>(
                context,
                CupertinoPageRoute(
                  builder: (context) => const QRGeneratorScreen(),
                ),
              );
            },
            child: const Text(
              "Start now",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(fontSize: 20),
        children: <TextSpan>[
          TextSpan(text: "Welcome to\n"),
          TextSpan(
            text: "Beacon App",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
