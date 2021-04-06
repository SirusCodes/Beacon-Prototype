import 'package:flutter/material.dart';

class NavigatorScreen extends StatelessWidget {
  const NavigatorScreen({Key key, this.isBeacon}) : super(key: key);

  final bool isBeacon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "Map will cover the whole screen",
          style: TextStyle(fontSize: 60),
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: isBeacon
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.purpleAccent,
              child: const Icon(
                Icons.location_on,
                color: Colors.white,
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
            const Text("All the other settings...")
          ],
        ),
      ),
    );
  }
}
